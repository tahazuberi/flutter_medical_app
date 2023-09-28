import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/main.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(

        child: Column(

          children: [
            Container(

              width: 400,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image:AssetImage('assets/images/signup.png'),
                    fit: BoxFit.cover,

                  )
              ),
            ),
            const SizedBox(height: 40),

            const Padding(
              padding: EdgeInsets.only(left:20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 3,),

            Container(
                height: 280,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Name Here",
                        labelText: "Name",
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Email not Correct";
                        }
                      },
                    ),

                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Email Here",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Email not Correct";
                        }
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password Here",
                          labelText: "Password"
                      ),
                      validator: (value) {
                        if(value!.trim().length<8){
                          return "Password length should be greater than 8";
                        }
                      },
                    ),

                  ],
                )
            ),

            const SizedBox(height: 3),

            Container(
              height: 50,
              width: 350,
              color: Colors.yellow,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black

                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.w200
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> const MyApp()
                      )
                  );
                },
              ),
            ),

            const SizedBox(height: 5,),

            const Text(
                "By signing up you agree to our Terms & Conditions",
              style: TextStyle(
                fontWeight: FontWeight.w200
              ),
            ),


            const SizedBox(height: 70,),


            GestureDetector(
              onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyApp()));},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Dont Have an account?',
                      style: new TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.black),

                    ),
                  ],
                ),
              ),
            )



          ],
        ),
      ),

    );
  }
}
