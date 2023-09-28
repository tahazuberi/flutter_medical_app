import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/home_page.dart';
import 'package:medical_app/profile_screen.dart';

import 'main.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Submit",style: TextStyle(fontWeight: FontWeight.w500),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 190.0,top: 10),
              child: Text(
                  "Any other critical information",
                  style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)
              ),
            ),

            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black12,width: 1)
                ),
                margin: EdgeInsets.only(top: 7),
                height: 66,
                width: 350,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Search Service/Doctor",
                      ),
                    ),
                  ],

                ),
              ),
            ),

          SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 320.0,top: 10),
              child: Text(
                  "Cost",
                  style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)
              ),
            ),

            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black12,width: 1)
                ),
                margin: EdgeInsets.only(top: 7,right: 170),
                height: 66,
                width: 180,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Service Cost in \$",
                      ),
                    ),
                  ],

                ),
              ),
            ),


            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 312.0,top: 10),
              child: Text(
                  "Rating",
                  style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12)
              ),
            ),

             Container(
               margin: EdgeInsets.only(left: 17,top: 10),
               child: Row(
                children: [
                  Icon(Icons.star,size: 35,),
                  Icon(Icons.star,size: 35,),
                  Icon(Icons.star,size: 35,),
                  Icon(Icons.star,size: 35,),
                  Icon(Icons.star,size: 35,),
                ],
            ),
             ),

            SizedBox(height: 30,),

            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black12,width: 2)
                ),
                margin: EdgeInsets.only(top: 7),
                height: 110,
                width: 350,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: "Feedback (Optional)",
                      ),
                    ),
                  ],

                ),
              ),
            ),


          SizedBox(height: 150,),
            Container(
              height: 50,
              width: 350,
              color: Colors.black87,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white

                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      fontWeight: FontWeight.w600
                  ),
                ),
                onPressed: () {},
              ),
            ),





          ],
        ),
      ),
    );
  }
}
