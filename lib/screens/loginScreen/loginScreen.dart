import 'package:flutter/material.dart';
import 'package:hungry_busters/screens/loginScreen/components/loginInput.dart';
import 'package:hungry_busters/widgets/colorButton/colorButton.dart';
import 'package:hungry_busters/widgets/simpleCustomWidget/simpleCustomWidget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: screenHeight*0.35,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('asset/images/logo.png'),
                fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            height: screenHeight*0.65,
            color: Colors.white,
            child: Column(
              children: [
                MyFormWidget(),
                const SizedBox(height: 20.0,),
                ColorButton(
                  function: (){}, 
                  text: "Sign In",
                ),
                const SizedBox(height: 10.0,),
                const Or(),
                const SizedBox(height:10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    GoogleSignInButton(),
                    SizedBox(width: 10.0,),
                    FacebookSignInButton(),
                  ],
                ),
                const SizedBox(height: 20.0,),
                CustomTextButton(
                  text1: "Don't have an account?", 
                  text2: "Sign Up", 
                  function: (){},
                ),
              ],
            ),
        ),
        ],
      ),
    );
  }
}