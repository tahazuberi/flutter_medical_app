import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            const Padding(
              padding: const EdgeInsets.only(right:265.0,top: 5),
              child: Text(
                "Distance",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,
              ),
              margin: EdgeInsets.only(left: 5,top: 7),
              height: 50,
              width: 350,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Within 100 Miles"
                    ),
                  ),

                DropdownButton<String>(
                  items:<String>["Within 200 Miles","Within 300 Miles"].map((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )

                ],
              ),
            ),


            const Padding(
              padding: const EdgeInsets.only(right:285.0,top: 25),
              child: Text(
                "Price",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.yellow,
                  ),
                  margin: EdgeInsets.only(left: 5,top: 10),
                  height: 50,
                  width: 160,
                  child: Center(
                    child: Text(
                      "Low to High"
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.yellow,
                  ),
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  width: 160,

                  child: Center(
                    child: Text(
                        "Low to High"
                    ),
                  ),
                ),
              ],
            ),


            const Padding(
              padding: const EdgeInsets.only(right:265.0,top: 25),
              child: Text(
                "Location",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,
              ),
              margin: EdgeInsets.only(left: 5,top: 7),
              height: 50,
              width: 350,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        "Select a Location"
                    ),
                  ),

                  DropdownButton<String>(
                    items:<String>["Within 200 Miles","Within 300 Miles"].map((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )

                ],
              ),
            ),



            const Padding(
              padding: const EdgeInsets.only(right:265.0,top: 25),
              child: Text(
                "Rating",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,
              ),
              margin: EdgeInsets.only(left: 5,top: 7),
              height: 50,
              width: 350,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 85,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        "5"
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 85,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                          "4"
                      ),
                    ),
                  ),
                  SizedBox(height: 40,width: 1,child: Container(color: Colors.black,),),
                  Container(
                    height: 50,
                    width: 85,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                          "3+"
                      ),
                    ),
                  ),
                  SizedBox(height: 40,width: 1,child: Container(color: Colors.black,),),
                  Container(
                    height: 50,
                    width: 85,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                          "2+"
                      ),
                    ),
                  ),
                ],
              ),
            ),


            const Padding(
              padding: const EdgeInsets.only(right:265.0,top: 25),
              child: Text(
                "Insurance",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.yellow,
              ),
              margin: EdgeInsets.only(left: 5,top: 7),
              height: 50,
              width: 350,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                        "Select a Insurance"
                    ),
                  ),

                  DropdownButton<String>(
                    items:<String>["Within 200 Miles","Within 300 Miles"].map((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black,width: 0.4)
                    ),
                    margin: EdgeInsets.only(left: 5,top: 10),
                    height: 60,
                    width: 160,
                    child: Center(
                      child: Text(
                          "Reset"
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
                    width: 160,

                    child: Center(
                      child: Text(
                          "Apply"
                      ),
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
