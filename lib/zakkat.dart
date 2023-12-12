import 'package:flutter/material.dart';
class Zakkat extends StatefulWidget {
  const Zakkat({super.key});

  @override
  State<Zakkat> createState() => _ZakkatState();
}

class _ZakkatState extends State<Zakkat> {
  var amount=0;
  String totalZakkat="";
  void calcuZakkat(){
    var total=amount/40;
    totalZakkat="Your Saving Ammount is $amount TK.\n So Your Zakkat is $total TK";
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Zakkat",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
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
                      hintText: "TK",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.monetization_on,color: Colors.orangeAccent),
                      labelText: "Enter Your Savings Total Amount",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                    amount=int.parse(value);
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

 calcuZakkat();

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
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.yellowAccent,width: 3),

                ),
                width: MediaQuery.of(context).size.width*0.5,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$totalZakkat",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
