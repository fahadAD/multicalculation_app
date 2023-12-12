import 'package:flutter/material.dart';
class Circular_Square_Rectangle extends StatefulWidget {
  const Circular_Square_Rectangle({super.key});

  @override
  State<Circular_Square_Rectangle> createState() => _Circular_Square_RectangleState();
}

class _Circular_Square_RectangleState extends State<Circular_Square_Rectangle> {

  //part_1 CalculateCircle
  var inputRadius=0;
  var pie=3.1416;
  String outputResult1="";
  void CalculateCircle(){
    outputResult1="If radius is equal to $inputRadius\n and pie is equal to $pie \nthen the result of area of circle will be  ${pie*(inputRadius*inputRadius)}";
  }

  //part_1 CalculateArea
  var inputArea=0;
  String outputResult2="";
  void CalculateSquare(){
    outputResult2="If Area is equal to $inputArea  \nthen the result of area of Square will be  ${inputArea*inputArea}";
  }
  //part_1 CalculateRectangle
  var inputLength=0;
  var inputWeaight=0;
  String outputResult3="";
  void CalculateRectangle(){
    outputResult3="If length is equal to $inputLength \n and width is equal to $inputWeaight \n then the result of area of Rectangle will be  ${inputLength*inputWeaight}";
  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Circular Square Rectangle",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Calculate Area of Circle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black,width: 3)

                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Radius",
                      hintStyle: TextStyle(color: Colors.yellow),
                      prefixIcon: Icon(Icons.incomplete_circle_outlined,color: Colors.orangeAccent),
                      labelText: "Enter the radius of circle",
                      labelStyle: TextStyle(color: Colors.orange)

                  ),
                  onChanged: (value) {
             inputRadius=int.parse(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  onPressed: () {
                    setState(() {

                    CalculateCircle();

                    });
                  }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Calculate Circle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              )),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.yellowAccent,width: 3),

                ),
                width: MediaQuery.of(context).size.width*0.8,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$outputResult1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Calculate Area of Square",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black,width: 3)

                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Area",
                      hintStyle: TextStyle(color: Colors.yellow),
                      prefixIcon: Icon(Icons.square_foot_outlined,color: Colors.orangeAccent),
                      labelText: "Enter the side of square",
                      labelStyle: TextStyle(color: Colors.orange)

                  ),
                  onChanged: (value) {
             inputArea=int.parse(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  onPressed: () {
                    setState(() {

                      CalculateSquare();

                    });
                  }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Calculate Square",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              )),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.yellowAccent,width: 3),

                ),
                width: MediaQuery.of(context).size.width*0.8,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$outputResult2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
                ),
              ),
            ),

            SizedBox(height: 20,),
            Text("Calculate Area of Rectangle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black,width: 3)

                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Length",
                      hintStyle: TextStyle(color: Colors.yellow),
                      prefixIcon: Icon(Icons.height,color: Colors.orangeAccent),
                      labelText: "Enter The Length",
                      labelStyle: TextStyle(color: Colors.orange)

                  ),
                  onChanged: (value) {
                    inputLength=int.parse(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black,width: 3)

                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Width",
                      hintStyle: TextStyle(color: Colors.yellow),
                      prefixIcon: Icon(Icons.width_full_outlined,color: Colors.orangeAccent),
                      labelText: "Enter The Width",
                      labelStyle: TextStyle(color: Colors.orange)

                  ),
                  onChanged: (value) {
                    inputWeaight=int.parse(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                  onPressed: () {
                    setState(() {

               CalculateRectangle();

                    });
                  }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Calculate Rectangle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              )),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.yellowAccent,width: 3),

                ),
                width: MediaQuery.of(context).size.width*0.8,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$outputResult3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
