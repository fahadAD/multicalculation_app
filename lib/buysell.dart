import 'package:flutter/material.dart';
class BUYSELL extends StatefulWidget {
  const BUYSELL({super.key});

  @override
  State<BUYSELL> createState() => _BUYSELLState();
}

class _BUYSELLState extends State<BUYSELL> {
  var buy=0;
  var sell=0;
String buy_sellCAL="";
void calculating(){
  var profit=sell-buy;
  var percent=profit/buy*100;
  if(sell>buy){
    buy_sellCAL="Your Profit is $profit TK.\nYour precent is $percent %";
  }else if(sell<buy){
    buy_sellCAL="Your Loss is $profit TK.\nYour precent is $percent %";
  }else{
    buy_sellCAL="Your Profit/Loss is $profit TK.\nYour precent is $percent %";
  }
}


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("BUY SELL"),
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
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.lightGreenAccent,width: 3)

                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "TK",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.monetization_on,color: Colors.white),
                      labelText: "Enter your buying amount",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                  buy=int.parse(value);
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
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.yellowAccent,width: 3)

                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(

                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "TK",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.monetization_on_outlined,color: Colors.white),
                      labelText: "Enter your selling amount",
                      labelStyle: TextStyle(color: Colors.white)

                  ),
                  onChanged: (value) {
                    sell=int.parse(value);
                  },
                ),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   ElevatedButton(onPressed: () {
                setState(() {

                  calculating();
                });
              }, child: Padding(

                padding: const EdgeInsets.all(8.0),

                child:   Text("Calculating",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

              )),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.red,width: 3),

                ),
                width: MediaQuery.of(context).size.width*0.5,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(child: Text("$buy_sellCAL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
