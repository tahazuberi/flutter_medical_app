import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/home_page.dart';
import 'package:medical_app/main.dart';
import 'package:medical_app/submit_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.w500),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert,color: Colors.black,),
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


                  const Padding(
                    padding: EdgeInsets.only(right: 210.0,bottom: 15),
                    child: Text("My Profile",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black87),),
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
              height: 120,
              width: 400,
              child: Row(
                children: [
                  Container(
                    height: 115,
                    width: 80,
                    margin: EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/emp.jpg')
                        )
                    ),
                  ),
                  Container(
                    width: 292,
                    height: 115,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 200.0,top: 25),
                          child: Text(
                            "Gerard Gill",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:5,right: 79),
                          child: Text(
                            "1844 RyderWood Ct \n Hyattsville, Maryland(MD), 20785",
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),

                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 230.0,top: 10),
              child: Text(
                "Insurance Plans",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12,width: 1)
              ),
              margin: EdgeInsets.only(top: 7),
              height: 60,
              width: 350,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 190.0,top: 10),
                    child: Text(
                      "Access Medicare (NY)",
                        style: TextStyle(fontWeight: FontWeight.w400)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 172.0,top: 4),
                    child: Text(
                      "Any other critical information",
                        style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 240.0,top: 20),
              child: Text(
                  "Used Services",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)
              ),
            ),


            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12,width: 1)
              ),
              margin: EdgeInsets.only(top: 7),
              height: 120,
              width: 350,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 10),
                              child: Text(
                                  "X-Ray Orbits, 4 or more"
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0,left: 7),
                                  child: Text(
                                    "4.5"
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 3),
                                  height: 20,
                                  width: 120,
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 10),
                              child: Text(
                                "\$185.95",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "User Estimated Price",
                                style: TextStyle(fontWeight: FontWeight.w300,fontSize: 8),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  Container(
                    width: 350,
                    height: 48,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        "View Service",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12,width: 1)
              ),
              margin: EdgeInsets.only(top: 7),
              height: 120,
              width: 350,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 10),
                              child: Text(
                                  "X-Ray Orbits, 4 or more"
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0,left: 7),
                                  child: Text(
                                      "4.5"
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 3),
                                  height: 20,
                                  width: 120,
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 10),
                              child: Text(
                                "\$185.95",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "User Estimated Price",
                                style: TextStyle(fontWeight: FontWeight.w300,fontSize: 8),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: 350,
                    height: 48,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        "View Service",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12,width: 1)
              ),
              margin: EdgeInsets.only(top: 7),
              height: 120,
              width: 350,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 10),
                              child: Text(
                                  "X-Ray Orbits, 4 or more"
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0,left: 7),
                                  child: Text(
                                      "4.5"
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 3),
                                  height: 20,
                                  width: 120,
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                      Icon(Icons.star,size: 20,),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0,top: 10),
                              child: Text(
                                "\$185.95",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "User Estimated Price",
                                style: TextStyle(fontWeight: FontWeight.w300,fontSize: 8),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    width: 350,
                    height: 48,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        "View Service",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),


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
                GestureDetector(
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                    child: Icon(Icons.home_outlined,color: Colors.black38,)
                ),
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
