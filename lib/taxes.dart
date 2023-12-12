import 'package:flutter/material.dart';
class TaxCalculation extends StatefulWidget {
  const TaxCalculation({super.key});

  @override
  State<TaxCalculation> createState() => _TaxCalculationState();
}

class _TaxCalculationState extends State<TaxCalculation> {

  int incomeInput=0;
  String Tex="";
  void Tac_Calulation(){
    if(incomeInput<=300000){
      Tex="${incomeInput*0}";
    }else  if(incomeInput<=400000){
      Tex="${0+(incomeInput-300000)*5/100}";
    }else  if(incomeInput<=700000){
      Tex="${5000+(incomeInput-400000)*10/100}";
    }else  if(incomeInput<=1100000){
      Tex="${5000+3500+(incomeInput-700000)*15/100}";
    } else  if(incomeInput<=1600000){
      Tex="${100000+5000+3500+(incomeInput-1100000)*20/100}";
    }else{
      Tex="${240000+100000+5000+3500+(incomeInput-1600000)*25/100}";
    }





  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Tex Calculatoin",style:  TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
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
            incomeInput=int.parse(value);
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

              Tac_Calulation();

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
          child: Center(child: Text("Your income is $incomeInput TK.\nSo Your Tax Amount is$Tex Tk",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17))),
        ),
    ),
  )
],
        ),
      ),
    );
  }
}
