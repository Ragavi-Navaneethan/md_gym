require("dotenv").config();

const express = require('express');
const bcrypt = require('bcrypt');
const mongoose = require('mongoose');
const app = express();

app.use(express.json());
mongoose
  .connect(process.env.MONGO_URI)
  .then(() => console.log("MongoDB Connected"))
  .catch(err => console.error(err));

const Signup=mongoose.model('Signup',new mongoose.Schema({
  mailId:{type:String,required:true,unique:true},
  phoneNumber:{type:String,required:true},
  username:{type:String,required:true},
  password:{type:String,required:true},
  confirmPassword:{type:String,required:true} 
}));
const User=mongoose.model('User',new mongoose.Schema({
  username:{type:String,required:true},
  email:{type:String,required:true,unique:true},
  password:{type:String,required:true}
}));
const Workout = mongoose.model('Workout',new mongoose.Schema({
  workoutName:{type: String,required: true},
  sets:[{reps:{type: Number,required: true}}]},
 {versionKey: false, timestamps: true }));

app.get('/workouts', async (_, res)=>{
  try{
    const workouts=await Workout.find({});
    res.json(workouts);
  } catch (err){
    res.status(500).json({message:'Server error'});
  }
});
app.post('/workouts',async(req, res)=>{
  try{
    const {workoutName,sets}=req.body;
    if (!workoutName||!sets||sets.length===0)
      return res.status(400).json({message:'Workout name and sets are required'});
    const workout=new Workout({workoutName, sets});
    await workout.save();
    res.status(201).json({message:'Workout added successfully'});
  } catch (err){
    res.status(500).json({message:'Server error'});
  }
});
app.get('/',(_, res)=>res.send('Server is running'));
app.get('/signup',async(_,res)=>{
  try {
    const users = await Signup.find({},{password:0,confirmPassword:0,__v:0});
    res.json(users);
  } catch(err){
    res.status(500).json({message:'Server error'});
  }
});
app.post('/signup',async(req,res)=>{
  try{
    const{mailId,phoneNumber,username,password,confirmPassword}=req.body;
    if (!mailId||!phoneNumber||!username||!password||!confirmPassword)
      return res.status(400).json({message:'All fields are required'});
    if (await Signup.findOne({mailId}))
      return res.status(409).json({message:'Email already registered'});
    if (password!==confirmPassword)
      return res.status(400).json({message:'Passwords do not match'});
    const hashedPassword=await bcrypt.hash(password,10);
    await new Signup({
      mailId,
      phoneNumber,
      username,
      password: hashedPassword,
      confirmPassword: hashedPassword
    }).save();
    res.status(201).json({message:'Signup successful'});
  } catch(err) {
    console.error('Signup Error:', err);
    res.status(500).json({message:'Server error'});
  }
});
app.get('/users',async(_, res)=>{
  try{
    const users=await User.find({},{password:0,__v:0});
    res.json(users);
  }catch(err){
    res.status(500).json({message:'Server error'});
  }
});

app.post('/users',async(req,res)=>{
  try{
    const{username,email,password}=req.body;
    if (!username||!email||!password)
      return res.status(400).json({message:'All fields are required'});
    if (await User.findOne({email}))
      return res.status(409).json({message:'Email already registered'});
    const hashedPassword=await bcrypt.hash(password, 10);
    await new User({username,email,password:hashedPassword}).save();
    res.status(201).json({message:'User added successfully'});
  } catch(err){
    res.status(500).json({message:'Server error'});
  }
});
app.listen(3000,()=>console.log('Server running on port 3000'));
