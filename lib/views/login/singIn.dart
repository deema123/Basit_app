import 'package:basit/views/signup_customer.dart';
import 'package:basit/views/signup_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../App_Bar.dart';
import '../constants.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class SingIn extends StatelessWidget {
  final routeName = "/SingIn";
//  late String _name;
//  late String _password;
//  noPll(){
//
//  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildName(TextEditingController controllers) {
    return TextFormField(
      controller: controllers,
      decoration: InputDecoration(labelText: 'Email'),
      style: TextStyle(color: Color(0xFF649AB8)),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is Required';
        }

        return null;
      },
//      onSaved: (String? value) {
//        _name = value!;
//      },
    );
  }

  Widget _buildPassword(TextEditingController controllers) {
    return TextFormField(
      controller: controllers,
      decoration: InputDecoration(labelText: 'Password'),
      style: TextStyle(color: Color(0xFF649AB8)),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'password is Required';
        }

        return null;
      },
//      onSaved: (String? value) {
//        _password = value!;
//      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => SingUpCubit(),
      child:BlocConsumer<SingUpCubit,SingInState>(
       listener: (context,state){},
        builder: (context,state){
         return  GestureDetector(
           onTap: () {
             FocusScope.of(context).requestFocus(new FocusNode());
           },
           child: Scaffold(
             resizeToAvoidBottomInset: true,
             appBar: appBar(
               'Sign up',
               [Container()],
             ),
             body: Stack(fit: StackFit.expand, children: <Widget>[
               Container(
                 height: double.infinity,
                 width: double.infinity,
                 constraints: BoxConstraints.expand(),
                 child: Container(
                   child: Image.asset('assets/images/Bread.jpeg', fit: BoxFit.cover),
                   width: double.infinity,
                 ),
               ),
               Center(
                 child: SingleChildScrollView(
                   child: Column(
                     children: [
                       SizedBox(
                         height: 50,
                       ),
                       Image.asset(
                         "assets/images/logo.png",
                         height: MediaQuery.of(context).size.height / 6,
                       ),
                       SizedBox(
                         height: 50,
                       ),
                       Container(
                         margin: EdgeInsets.all(20),
                         width: MediaQuery.of(context).size.width / 1.1,
                         child: Card(
                           color: Color(0xFFffffff).withOpacity(0.85),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.circular(30))),
                           elevation: 10,
                           child: Form(
                             key: _formKey,
                             child: Padding(
                               padding: const EdgeInsets.all(50),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: <Widget>[
                                   _buildName(emailController),
                                   _buildPassword(passwordController),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   Row(
                                     children: [
                                       Spacer(),
                                       Text(
                                         "Forget Password?",
                                         style: TextStyle(
                                             color: Color(0xff5B7790),
                                             fontSize: 12.0),
                                       ),
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10,
                                   ),
                                   SizedBox(height: 20,),
                                   Center(
                                     child: ElevatedButton(
                                       child: Text(
                                         'Sign in',
                                         style: TextStyle(fontSize: 20.0),
                                       ),
                                       onPressed: () {
                                         if (_formKey.currentState!.validate()) {
                                           print(emailController.text);
                                           SingUpCubit.get(context).userLogin(email: emailController.text, password: passwordController.text);
                                         }
                                         //Send to API
                                       },
                                     ),
                                   ),
                                   SizedBox(height: 20,),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Text(
                                         'Don`t have an account,',
                                         style: TextStyle(
                                             color: Color(0xff5B7790),
                                             fontSize: 15.0),
                                       ),
                                       TextButton(
                                         onPressed: () {
                                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> SingUpCustomer(SingUpCustForm())));
                                         },
                                         child: Text(
                                           'register?',
                                           style: TextStyle(
                                             color: Color(0xff5B7790),
                                             fontSize: 15.0,
                                             decorationStyle:
                                             TextDecorationStyle.solid,
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                   Row(
                                     children: [
                                       SizedBox(height: 100,),
                                       Spacer(),
                                       Container(
                                         width: 62,
                                         child: OutlinedButton(
                                           style: OutlinedButton.styleFrom(
                                             side: BorderSide(width:2,color: kFColor),
                                             shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(24),
                                             ),
                                           ) ,
                                           onPressed: (){
                                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> SingUpCustomer(SingUpCustForm())));
                                           },
                                           child: Text('Skip',style: TextStyle(color:kFColor,fontSize: 14),),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 30,
                       )
                     ],
                   ),
                 ),
               ),
             ]),
           ),
         );
        },
      ),
    );
  }
}












/*Scaffold(
        body: Stack(
          children:<Widget> [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Bread.jpeg'),
                //  colorFilter:
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png",height: 130,),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(60),
                  child: Container(
                    height: 400,
                    width: 300,

                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.white.withOpacity(0.7),),
                    padding: EdgeInsets.symmetric(horizontal:16.0 ,vertical:32.0 ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        TextField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            suffixIcon: Icon(Icons.mail,color: Colors.white24,),
                            hintText: 'E-mail',
                            // labelText: 'E-mail',
                          ),

                        ),
                        SizedBox(height: 20,),

                        TextField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(20.0),
                            fillColor: Colors.transparent,
                            suffixIcon: Icon(Icons.lock),
                            hintText: 'Password'
                            // labelText: 'Password',
                          ),
//                          validator: (String? value) {
//                            return (value != null ) ? 'write your password' : null;
//                          },
                        ),
                        SizedBox(height: 10,),
                        Text("Forget Password?",style: TextStyle(color: Color(0xff5B7790),fontSize: 12.0) , ),
                        SizedBox(height: 10,),
                        Center(
                          child: ElevatedButton(
                            child: Text('Sign in', style: TextStyle(fontSize: 20.0),),

                            onPressed: () {},

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('Don`t have an account,',style: TextStyle(color: Color(0xff5B7790),fontSize: 15.0),),
                            Text('register?',style: TextStyle(color: Color(0xff5B7790),fontSize: 15.0 ,decorationStyle: TextDecorationStyle.solid,),)
                          ],)

                      ],

                    ),
                  ),
                ),


              ],
            ),
          ],
        ),
      );
      */