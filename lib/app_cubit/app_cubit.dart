import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/app_cubit/app_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';



class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  int currentAge=21;
  int currentHeight=170;


  bool? IOS;
  void changeOS(bool value){
  IOS= value;
  emit(changeOSstate());
}



}

