import 'package:flutter/material.dart';
class Leapyearlist extends StatefulWidget {
  const Leapyearlist({super.key});

  @override
  State<Leapyearlist> createState() => _LeapyearlistState();
}

class _LeapyearlistState extends State<Leapyearlist> {
  var inputYear=0;
  String sing_leapyear="";

  int startinputYear=0;
  int endinputYear=0;
  List<String> mul_leapyear=[];

  void mul_leap_Calculator(){
   for(int year=startinputYear;year<=endinputYear;year++){

    if(year%400==0 || year%4==0 && year%100!=0){
      mul_leapyear.add("$year is Leapyear") ;
    }else{
      mul_leapyear.add("$year is not Leapyear") ;
    }
      // else if(year%4==0 && year%100!=0){
    //   mul_leapyear.add("$year") ;
    // }


   }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Leapyear",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
body: SingleChildScrollView(
  child:   Column(

    children: [


      SizedBox(height: 20,),

      Text("Single Leap Year",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),

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

                hintText: "Year",

                hintStyle: TextStyle(color: Colors.white),

                prefixIcon: Icon(Icons.date_range_outlined,color: Colors.orangeAccent),

                labelText: "Enter the number of year",

                labelStyle: TextStyle(color: Colors.white)



            ),

            onChanged: (value) {

              inputYear=int.parse(value);

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

  if(inputYear%400==0){

    sing_leapyear="This year is $inputYear \nSo it is leapyear";

  }else if(inputYear%4==0 && inputYear%100 != 0){

    sing_leapyear="This year is $inputYear \nSo it is leapyear";}

  else{

    sing_leapyear="This year is $inputYear \nSo it is not leapyear";

  }





              });

            }, child: Padding(



          padding: const EdgeInsets.all(8.0),



          child:   Text("Calculation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),



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

            child: Center(child: Text("$sing_leapyear",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),

          ),

        ),

      ),

      SizedBox(height: 20,),

      Text("Multiple Leap Year",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),

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

                hintText: "Year",

                hintStyle: TextStyle(color: Colors.white),

                prefixIcon: Icon(Icons.date_range_outlined,color: Colors.orangeAccent),

                labelText: "Enter the start number of year",

                labelStyle: TextStyle(color: Colors.white)



            ),

            onChanged: (value) {

              startinputYear=int.parse(value);

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

                hintText: "Year",

                hintStyle: TextStyle(color: Colors.white),

                prefixIcon: Icon(Icons.date_range_outlined,color: Colors.orangeAccent),

                labelText: "Enter the end number of year",

                labelStyle: TextStyle(color: Colors.white)



            ),

            onChanged: (value) {

              endinputYear=int.parse(value);

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
                mul_leap_Calculator();
               });

            }, child: Padding(



          padding: const EdgeInsets.all(8.0),



          child:   Text("Calculation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),



        )),

      ),

      SizedBox(height: 10,),

 SizedBox(


   child: ListView.builder(
      shrinkWrap: true,
     itemCount: mul_leapyear.length,
     itemBuilder: (BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(


          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10),
            color: Colors.teal
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(mul_leapyear[index],style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20) ,)),
          )),
    );
   },

   ),
 )



    ],

  ),
),
    );
  }
}
