import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/app_cubit/app_cubit.dart';
import 'package:untitled8/app_cubit/app_state.dart';
import 'package:untitled8/sign up.dart';


class logIn extends StatelessWidget {
  const logIn({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<AppCubit,AppStates>(
      builder: (BuildContext context,dynamic state){
        AppCubit cubit= BlocProvider.of<AppCubit>(context);
        return Scaffold(
          backgroundColor: Colors.white54,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xff1f1b23),
            title: const Text("LogIn"),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              //color: Colors.cyan,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 45,),
                    Text("Login",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    color: const Color(0xff1f1b23),
                    fontSize:40),
                    ),
                    SizedBox(height: 15,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        cursorColor: Colors.black45,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIconColor: const Color(0xff1f1b23),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            //borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          fillColor: Colors.grey[200],
                          filled: true,

                        ),
                      ),

                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(top: 20),
                      child: TextFormField(
                        obscureText: true,
                        cursorColor: Colors.black45,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          prefixIconColor: const Color(0xff1f1b23),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            //borderSide: BorderSide(color: Colors.redAccent),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          fillColor: Colors.grey[200],
                          filled: true,

                        ),
                      ),


                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        onPressed: (){

                        },

                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Does not have an account? '),
                          TextButton(
                            onPressed:(){
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => signUp()));
                            },
                            child: Text(
                            'Signup',style: TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                            ),
                          ),)

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),




        );


      },
    );
  }
}

