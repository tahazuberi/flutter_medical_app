import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/forgot_screen.dart';
import 'package:medical_app/home_page.dart';
import 'package:medical_app/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: const DecorationImage(
                image:AssetImage('assets/images/sign.png'),
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
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 3,),

            Container(
                height: 168,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [

                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username Here",
                          labelText: "Username",
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

            const SizedBox(height: 5) ,

            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                      "Forgot your password?"
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPass()),
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            Container(
              height: 50,
              width: 350,
              color: Colors.yellow,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black

                ),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                      fontWeight: FontWeight.w200
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> const HomePage()
                      )
                  );
                },
              ),
            ),

            const SizedBox(height: 20,),

            const Text(
              "Sign in With"
            ),

            const SizedBox(height: 30,),

            Container(
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png')
                )
              ),
            ),

            const SizedBox(height: 40,),


            GestureDetector(
              onTap:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignUp()));},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Dont Have an account?',
                      style: new TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Sign up',
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

