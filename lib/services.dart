import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/filters.dart';
import 'package:medical_app/home_page.dart';
import 'package:medical_app/profile_screen.dart';
import 'package:medical_app/submit_screen.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left:10.0,top:40 ),
                    child: Icon(Icons.arrow_back),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.yellow,
                    ),
                    margin: const EdgeInsets.only(top: 40,left: 20),
                    height: 48,
                    width: 325,

                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                              labelText: "Service",
                              prefixIcon: Icon(Icons.search),
                            border: InputBorder.none

                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 26),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(color:Colors.black54,width: 1)

                    ),
                    height: 30,
                    width: 100,
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Center(child: Text("within 100ml",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 26),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        border: Border.all(color:Colors.black54,width: 1)
                    ),
                    height: 30,
                    width: 100,
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Center(child: Text("4+ rating",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 26),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        border: Border.all(color:Colors.black54,width: 1)
                    ),
                    height: 30,
                    width: 120,
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text("sort by distance",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    ),
                  ),
                ],
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 23.0,left: 20),
                    child: Text("250 Results"),
                  ),


                  GestureDetector(
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>const FiltersPage()));},
                    child: Container(
                      margin: const EdgeInsets.only(top: 26,right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.yellow
                      ),
                      height: 25,
                      width: 80,
                      child: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Center(child: Text("Filters",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)),
                      ),
                    ),
                  ),

                ],
              ),


              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.black12,width: 1),
                  color: Colors.transparent,
                ),
                margin: const EdgeInsets.only(top: 20),
                height: 220,
                width: 360,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 180.0,top: 12),
                      child: Text("X-Ray Orbits, 4 or more",style: TextStyle(fontWeight: FontWeight.w500),),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 14.0,left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                                "HHC Bellevue Hospital Center \n 462 First Avenue \n New York,NY,10016",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("1 mile away",style: TextStyle(fontWeight: FontWeight.w300),),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0,top: 10),
                                child: Text(
                                  "\$185.95",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
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


                  Padding(
                    padding: const EdgeInsets.only(top:19.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.yellow,
                          ),
                          height: 40,
                          width: 178,

                          child: const Center(
                            child: Text(
                              "View Hospital",style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        SizedBox(height: 40,width: 2,child: Container(color: Colors.black38)),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.yellow,
                          ),
                          height: 40,
                          width: 178,

                          child: const Center(
                            child: Text(
                              "View Hospital",style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),

                      ],
                    ),
                  )


                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.black12,width: 1),
                  color: Colors.transparent,
                ),
                margin: const EdgeInsets.only(top: 20),
                height: 220,
                width: 360,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 180.0,top: 12),
                      child: Text("X-Ray Orbits, 4 or more",style: TextStyle(fontWeight: FontWeight.w500),),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 14.0,left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "HHC Bellevue Hospital Center \n 462 First Avenue \n New York,NY,10016",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("1 mile away",style: TextStyle(fontWeight: FontWeight.w300),),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0,top: 10),
                                child: Text(
                                  "\$185.95",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
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


                    Padding(
                      padding: const EdgeInsets.only(top:19.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.yellow,
                            ),
                            height: 40,
                            width: 178,

                            child: const Center(
                              child: Text(
                                "View Hospital",style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,width: 2,child: Container(color: Colors.black38)),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.yellow,
                            ),
                            height: 40,
                            width: 178,

                            child: const Center(
                              child: Text(
                                "View Hospital",style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),

                        ],
                      ),
                    )


                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.black12,width: 1),
                  color: Colors.transparent,
                ),
                margin: const EdgeInsets.only(top: 20),
                height: 220,
                width: 360,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 180.0,top: 12),
                      child: Text("X-Ray Orbits, 4 or more",style: TextStyle(fontWeight: FontWeight.w500),),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 14.0,left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "HHC Bellevue Hospital Center \n 462 First Avenue \n New York,NY,10016",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),


                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("1 mile away",style: TextStyle(fontWeight: FontWeight.w300),),
                          ),

                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8.0,top: 10),
                                child: Text(
                                  "\$185.95",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
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


                    Padding(
                      padding: const EdgeInsets.only(top:19.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.yellow,
                            ),
                            height: 40,
                            width: 178,

                            child: const Center(
                              child: Text(
                                "View Hospital",style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,width: 2,child: Container(color: Colors.black38)),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.yellow,
                            ),
                            height: 40,
                            width: 178,

                            child: const Center(
                              child: Text(
                                "View Hospital",style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),

                        ],
                      ),
                    )


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
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));},
                    child: const Icon(Icons.home_outlined,color: Colors.black38,)
                ),
                const Text(("Home"),style:TextStyle(fontWeight: FontWeight.w400),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>const SubmitPage()));},
                    child: const Icon(Icons.crop_square,color: Colors.black38,)
                ),
                const Text(("Submit"),style:TextStyle(fontWeight: FontWeight.w400),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));},
                    child: const Icon(Icons.perm_contact_calendar_outlined,color: Colors.black38,)
                ),
                const Text(("Profile"),style:TextStyle(fontWeight: FontWeight.w400),)
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}
