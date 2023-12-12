import 'package:flutter/material.dart';
class Multiplication extends StatefulWidget {
  const Multiplication({super.key});

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  var nums1=0;
  var nums2=0;
  List<String> totalmultiplication=[];
  void Multiplication(){
    for(var nums=1;nums<=nums2;nums++){
      totalmultiplication.add("$nums1 * $nums= ${nums1*nums}");
    }
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Multiplication Table",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
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
                      hintText: "Number",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.monetization_on,color: Colors.orangeAccent),
                      labelText: "How many multiplication do you want,enter the number here",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                    nums1=int.parse(value);
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("<= To =>",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
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
                      hintText: "Number",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.monetization_on,color: Colors.orangeAccent),
                      labelText: "How far will the multiplication go?",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                    nums2=int.parse(value);
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

Multiplication();

                    });
                  }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Calculation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              )),
            ),
            SizedBox(height: 10,),
            ListView.builder(

              shrinkWrap: true,
              itemCount: totalmultiplication.length,
              itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.yellowAccent,width: 3),

                  ),
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Center(child: Text(totalmultiplication[index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20))),
                  ),
                ),
              );
            },

            )
          ],
      ),
       ),
    );
  }
}
