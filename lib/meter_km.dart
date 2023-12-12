import 'package:flutter/material.dart';

class Meter_KM extends StatefulWidget {
  const Meter_KM({super.key});

  @override
  State<Meter_KM> createState() => _Meter_KMState();
}

class _Meter_KMState extends State<Meter_KM> {


   double inputFeet=0;
   String outMeter1="";
   void Calcufeet_meter(){
     var meter1=inputFeet/3;
     outMeter1="If Feet=$inputFeet, Then Meter=$meter1,\nSo calculation is Done";
   }

   double inputMeter=0;
   String out_Km="";
   void Calcufeet_KM(){
     var KM=inputMeter/1000;
  out_Km="If Meter=$inputMeter, Then KM=$KM,\nSo calculation is Done";
   }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Feet To Meter & Meter To Km",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Feet To Meter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
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
                      hintText: "Feet",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.gas_meter_rounded,color: Colors.green),
                      labelText: "Enter Feet Number",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                   inputFeet=double.parse(value);
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

         Calcufeet_meter();

                    });
                  }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Feet Convert Meter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

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
                width: MediaQuery.of(context).size.width*0.5,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$outMeter1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Meter To KM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
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
                      hintText: "Meter",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.timer,color: Colors.orange),
                      labelText: "Enter Meter Number",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                    inputMeter=double.parse(value);
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

                      Calcufeet_KM();

                    });
                  }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Meter Convert KM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

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
                width: MediaQuery.of(context).size.width*0.5,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$out_Km",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
