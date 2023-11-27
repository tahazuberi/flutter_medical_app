import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'appointment.dart';

class DoctorProfile extends StatelessWidget {
   DoctorProfile({super.key});

  late GoogleMapController mapController;
   final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.more_vert,color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: 400,
              color: Colors.transparent,
              child: Row(
                children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(left: 12),
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/doctor.png')
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 220,
                    height: 150,
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0,top: 25),
                          child: Text(
                            "Dr Delbert Chapman",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:2,right: 70),
                          child: Text(
                            "Opthamolgist    4.5(87)",
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),

                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 19,right: 80),
                          height: 38,
                          width: 120,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.yellow,width: 1)
                                ),
                                height: 38,
                                width: 30,
                                child: Center(
                                  child: Text("\$",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.yellow,width: 1)
                                ),
                                height: 38,
                                width: 88,
                                child: Center(
                                  child: Text("20-30",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),

                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.yellow,

                    ),
                    margin: EdgeInsets.only(left: 5,top: 10),
                    height: 60,
                    width: 170,
                    child: Center(
                      child: Text(
                          "+12 Years \n Experience"
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.yellow,
                    ),
                    margin: EdgeInsets.only(top: 10),
                    height: 60,
                    width: 170,

                    child: Center(
                      child: Text(
                          "+1000 \n Patients"
                      ),
                    ),
                  ),
                ],
              ),
            ),
    
            
            Padding(
              padding: const EdgeInsets.only(right: 321.0,top: 35),
              child: Text(
                "Bio",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5,left: 12),
              height: 140,
              width: 360,
              color: Colors.transparent,
              child: Text(
                "It is a long established fact that a reader \nwill be distracted by the readable content of\na page when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more\nor-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 290.0,top: 28),
              child: Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),

            Container(
              height: 200,
              width: 380,
              child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0
                  ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 290.0,top: 28),
              child: Text(
                "Reviews",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(right: 290.0,top: 10),
              child: Text(
                "Ratings",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "4.18",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 25),
                    height: 30,
                    width: 120,
                    child: Row(
                      children: [
                        Icon(Icons.star,size: 20,),
                        Icon(Icons.star,size: 25,),
                        Icon(Icons.star,size: 25,),
                        Icon(Icons.star,size: 25,),
                        Icon(Icons.star,size: 25,),
                      ],
                    ),
                  ),

                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,

              ),
              margin: EdgeInsets.only(left: 5,top: 10,bottom: 3),
              height: 50,
              width: 350,
              child: Center(
                child: GestureDetector(
                  onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>Appointment()));},
                  child: Text(
                      "Book Appointment"
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
