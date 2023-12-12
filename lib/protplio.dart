import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ProtP extends StatelessWidget {
  const ProtP({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Center(child: Text("Fahim Shahariar Fahad",style: GoogleFonts.pacifico(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
            SizedBox(height: 10,),
            Center(
              child: Text("FLUTTER  DEVELOPER",
                style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,color: Colors.tealAccent,fontSize: 17),
              ),
            ),
            SizedBox(
                height: 30,
                width: 170,
                child: Divider(thickness: 3,color: Colors.tealAccent,)),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: ListTile(
                    leading:  Icon(Icons.call,color: Colors.teal),
                    title: Text("01627413327"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: ListTile(
                    leading:  Icon(Icons.email_outlined,color: Colors.teal),
                    title: Text("mrfahad26531@gmail.com",),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
