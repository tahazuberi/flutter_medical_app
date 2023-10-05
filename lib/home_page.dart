import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/doctor_profile.dart';
import 'package:medical_app/profile_screen.dart';
import 'package:medical_app/services.dart';
import 'package:medical_app/submit_screen.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.yellow,

      actions: [
        const Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.snapchat),
        )
      ],

    ),

      drawer: Drawer(
        width: 400,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 340.0,top: 20),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: GestureDetector(
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));},
                      child: const Icon(Icons.cancel_outlined)
                  ),
                ),
              ),


              Container(
                margin: const EdgeInsets.only(right: 150,bottom: 30),
                height: 100,
                width: 200,
                // color: Colors.black38,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/emp.jpg')
                        )
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                          "Gerard Gill",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                height: 500,
                width: 350,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 240.0,bottom: 15),
                      child: Text("Home",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                     Padding(
                      padding: EdgeInsets.only(right: 210.0,bottom: 15),
                      child: GestureDetector(
                          onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorProfile()));},
                          child: Text("My Profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87))
                      ),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                    const Padding(
                      padding: EdgeInsets.only(right: 170.0,bottom: 15),
                      child: Text("Submit a request",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                    const Padding(
                      padding: EdgeInsets.only(right: 190.0,bottom: 15),
                      child: Text("My Insurance",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                    const Padding(
                      padding: EdgeInsets.only(right: 185.0,bottom: 15),
                      child: Text("Send Feedback",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                    const Padding(
                      padding: EdgeInsets.only(right: 210.0,bottom: 15),
                      child: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                    const Padding(
                      padding: EdgeInsets.only(right: 200.0,bottom: 15),
                      child: Text("Terms of Use",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    SizedBox(width: 300,height: 2,child:Container(height: 2,width:300 ,color: Colors.black12,),),
                    const SizedBox(height: 25,),


                    const Padding(
                      padding: EdgeInsets.only(right: 190.0,bottom: 15),
                      child: Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
                    ),
                    const SizedBox(height: 25,),


                  ],
                ),
              ),

              const SizedBox(height: 38,),
               Padding(
                padding: EdgeInsets.only(right: 220.0,bottom: 15),
                child: GestureDetector(
                  onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));},
                    child: Text("LogOut",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),)
                ),
              ),




            ],
          ),
      ),


      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 330,
              width: 500,
              color: Colors.yellow,

              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0,top: 2),
                    child: Text(
                      "Search a medical service in your local area",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 28
                      ),
                    ),
                  ),


                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      margin:  const EdgeInsets.only(top: 7),
                      height: 230,
                      width: 350,

                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [

                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter Service Here",
                              labelText: "Select Service",
                              prefixIcon: Icon(Icons.search)
                            ),
                          ),

                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter Location Here",
                              labelText: "Select Location",
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                            margin: const EdgeInsets.only(top: 8),
                            height: 50,
                            width: 350,

                            child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.black

                              ),
                              child: const Text(
                                "Get Care",
                                style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context)=> const ServicePage()
                                    )
                                );
                              },
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Searches",
                  style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ),

            Container(
              height: 313,
              width: 400,
              color: Colors.white,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 90,
                        width: 175,
                        child: Image.asset('assets/images/pharma.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 90,
                        width: 175,
                        child: Image.asset('assets/images/primary.png'),
                      ),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 90,
                        width: 175,
                        child: Image.asset('assets/images/dentist.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 90,
                        width: 175,
                        child: Image.asset('assets/images/pulmo.png'),
                      ),

                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 90,
                        width: 175,
                        child: Image.asset('assets/images/psycho.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6),
                        height: 90,
                        width: 175,
                        child: Image.asset('assets/images/cardio.png'),
                      ),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),

      ),
      bottomNavigationBar:  BottomAppBar(
        color: Colors.white,
        height: 68,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home_outlined,color: Colors.black38,),
                Text(("Home"),style:TextStyle(fontWeight: FontWeight.w400),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>SubmitPage()));},
                    child: Icon(Icons.crop_square,color: Colors.black38,)
                ),
                Text(("Submit"),style:TextStyle(fontWeight: FontWeight.w400),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));},
                    child: Icon(Icons.perm_contact_calendar_outlined,color: Colors.black38,)
                ),
                Text(("Profile"),style:TextStyle(fontWeight: FontWeight.w400),)
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}
