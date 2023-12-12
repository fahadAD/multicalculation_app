import 'package:flutter/material.dart';
class GRADE extends StatefulWidget {
  const GRADE({super.key});

  @override
  State<GRADE> createState() => _GRADEState();
}

class _GRADEState extends State<GRADE> {
  var sub1=0;
  var sub2=0;
  var sub3=0;
  var sub4=0;
  var sub5=0;
  var sub6=0;
String total="";
void gpaCalculation(){
  var totalnumber=sub1+sub2+sub3+sub4+sub5+sub6;
  var GPA=totalnumber/6;
  if(GPA>=80 && GPA<=100){
    total="Student your Total number is $totalnumber.\n  Your GPA is $GPA.\n You Got A+";
  }else if(GPA>=60 && GPA<80){
    total="Student your Total number is $totalnumber.\n  Your GPA is $GPA.\n You Got A";
  }else if(GPA>=50 && GPA<60){
    total="Student your Total number is $totalnumber.\n  Your GPA is $GPA.\n You Got B";
  }else if(GPA>=40 && GPA<50){
    total="Student your Total number is $totalnumber.\n  Your GPA is $GPA.\n You Got C";
  }else if(GPA>=30 && GPA<40){
    total="Student your Total number is $totalnumber.\n  Your GPA is $GPA.\n You Got D";
  }else{
    total="Student your Total number is $totalnumber.\n  Your GPA is $GPA.\n You Got F";
  }
}
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Grade point",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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

                      hintText: "Subject1",

                      hintStyle: TextStyle(color: Colors.white),

                      prefixIcon: Icon(Icons.map,color: Colors.orangeAccent),

                      labelText: "Enter your mark",

                      labelStyle: TextStyle(color: Colors.white)



                  ),

                  onChanged: (value) {

                    sub1=int.parse(value);

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

                      hintText: "Subject2",

                      hintStyle: TextStyle(color: Colors.white),

                      prefixIcon: Icon(Icons.map,color: Colors.orangeAccent),

                      labelText: "Enter your mark",

                      labelStyle: TextStyle(color: Colors.white)



                  ),

                  onChanged: (value) {

                    sub2=int.parse(value);

                  },

                ),

              ),

            ),
            SizedBox(height: 10,),
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

                      hintText: "Subject3",

                      hintStyle: TextStyle(color: Colors.white),

                      prefixIcon: Icon(Icons.map,color: Colors.orangeAccent),

                      labelText: "Enter your mark",

                      labelStyle: TextStyle(color: Colors.white)



                  ),

                  onChanged: (value) {

                    sub3=int.parse(value);

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

                      hintText: "Subject4",

                      hintStyle: TextStyle(color: Colors.white),

                      prefixIcon: Icon(Icons.map,color: Colors.orangeAccent),

                      labelText: "Enter your mark",

                      labelStyle: TextStyle(color: Colors.white)



                  ),

                  onChanged: (value) {

                    sub4=int.parse(value);

                  },

                ),

              ),

            ),
            SizedBox(height: 10,),
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

                      hintText: "Subject5",

                      hintStyle: TextStyle(color: Colors.white),

                      prefixIcon: Icon(Icons.map,color: Colors.orangeAccent),

                      labelText: "Enter your mark",

                      labelStyle: TextStyle(color: Colors.white)



                  ),

                  onChanged: (value) {

                    sub5=int.parse(value);

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

                      hintText: "Subject6",

                      hintStyle: TextStyle(color: Colors.white),

                      prefixIcon: Icon(Icons.map,color: Colors.orangeAccent),

                      labelText: "Enter your mark",

                      labelStyle: TextStyle(color: Colors.white)



                  ),

                  onChanged: (value) {

                    sub6=int.parse(value);

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
             gpaCalculation();
                     });

                  }, child: Padding(



                padding: const EdgeInsets.all(8.0),



                child:   Text("Total Grade ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),



              )),

            ),

            SizedBox(height: 10,),

            Center(

              child: Container(

                decoration: BoxDecoration(

                  color: Colors.indigo,

                  borderRadius: BorderRadius.circular(20),

                  border: Border.all(color: Colors.yellowAccent,width: 3),



                ),

                width: MediaQuery.of(context).size.width*0.5,

                child: Padding(

                  padding: const EdgeInsets.all(9.0),

                  child: Center(child: Text("$total",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),

                ),

              ),

            ),
          ],
        ),
      ),
    );
  }
}
