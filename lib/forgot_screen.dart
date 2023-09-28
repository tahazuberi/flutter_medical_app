import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/main.dart';
import 'package:medical_app/sign_up.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_outlined),
                onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const MyApp()));},
        ),
      ),

      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0,top: 15),
            child: Text(
              "Forgot your Password",
              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0,top: 4),
            child: Text(
              "Enter your email to reset your password",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: TextFormField(
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
          ),

          const SizedBox(height: 470,),

          Container(
            height: 50,
            width: 350,
            color: Colors.yellow,
            child: TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.black

              ),
              child: const Text(
                "Reset Password",
                style: TextStyle(
                    fontWeight: FontWeight.w300
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


        ],
      ),
    );
  }
}
