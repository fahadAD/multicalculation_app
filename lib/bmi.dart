import 'package:flutter/material.dart';
class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool male_ture=false;
  bool female_ture=false;
   var kg=0;
  var fit=0;
  var inch=0;
  String resultType="";
   void bmiCalculation(){
   var heaight=(fit*0.3048+inch*0.0254);
    var bmi=kg/(heaight*heaight);
if(bmi<=18.5){
  resultType="If your Weaight is $kg KG then your BMI is $bmi.\nSo you are Low Weaight.";
}else if(bmi>18.5 && bmi<=24.9){
  resultType="If your Weaight is $kg KG then your BMI is $bmi.\nSo your  BMI is Perfect";
}else if(bmi>=25.0 && bmi<=29.9){
  resultType="If your Weaight is $kg KG then your BMI is $bmi.\nSo you are Over Weaight.";
}else if(bmi>=30.0 && bmi<=34.9){
  resultType="If your Weaight is $kg KG then your BMI is $bmi.\nSo you are OBSES";
}else if(bmi>=35){
  resultType="If your Weaight is $kg KG then your BMI is $bmi.\nSo you are EXTREMLY OBSES";
}


   }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
     Container(
          decoration: BoxDecoration(
            color: Colors.white,
           borderRadius: BorderRadius.circular(20)
          ),
         height: 60,
         width: MediaQuery.of(context).size.width*0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Male",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),),
             Checkbox(value: male_ture, onChanged: (value) {
               setState(() {
                 male_ture=value!;
               });
             },),
           ],
         ),
     ),
    Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        height: 60,
        width: MediaQuery.of(context).size.width*0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Female",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,),),
            Checkbox(value: female_ture, onChanged: (value) {
              setState(() {
                female_ture=value!;
              });
            },),
          ],
        ),
    ),
  ],
),
SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: MediaQuery.of(context).size.width*0.8,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20),
                 border: Border.all(color: Colors.green,width: 3)

               ),
               child: TextFormField(
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(

                   focusedBorder: InputBorder.none,
                   enabledBorder: InputBorder.none,
                   hintText: "KG",
                   prefixIcon: Icon(Icons.web_outlined),
                   labelText: "Enter your Weaight"
                 ),
                 onChanged: (value) {
                  kg=int.parse(value);
                 },
               ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red,width: 3)

                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Heaight",
                          prefixIcon: Icon(Icons.web_outlined),
                          labelText: "Enter your Fit"
                      ),
                      onChanged: (value) {
                        fit=int.parse(value);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.yellowAccent,width: 3)

                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Heaight",
                          prefixIcon: Icon(Icons.web_outlined),
                          labelText: "Enter your Inch"
                      ),
                      onChanged: (value) {
                        inch=int.parse(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ElevatedButton(onPressed: () {
    setState(() {

bmiCalculation();
    });
  }, child: Padding(

    padding: const EdgeInsets.all(8.0),

    child:   Text("Compute BMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

  )),
),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.red,width: 3),

              ),
              width: MediaQuery.of(context).size.width*0.9,
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Center(child: Text("$resultType",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
