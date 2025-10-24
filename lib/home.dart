import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Location", style: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),),
            Text("Bali, Indonesia", style: GoogleFonts.openSans(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF007EF2),
            ),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset("assets/images/bell_icon.png", height: 24, width: 24,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            /// Calender
            Row(
              children: [
                Container(
                  width: 145,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                  decoration: BoxDecoration(
                    color: Color(0xFF007EF2).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/clarity_date-line.png", height: 16, width: 16, fit: BoxFit.cover,),
                      SizedBox(width: 10,),
                      Expanded(child: Text("24 OCT-26 OCT", style: GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF007EF2)),))
                    ]
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                  decoration: BoxDecoration(
                    color: Color(0xFF007EF2).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("3 Guests", style: GoogleFonts.openSans(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF007EF2)),)),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Expanded(
                    child: Stack(
                      children: [Container(
                        height: 53,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xFF007EF2), width: 1),
                        ),

                      ),
                      ]
                    )
                ),
                SizedBox(width: 12,),
                Stack(
                  alignment: Alignment.center,
                    children: [
                      Container(
                      width: 53,
                      height: 53,
                        decoration: BoxDecoration(
                          color: Color(0xFF007EF2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                      Container(
                          child: Image.asset("assets/images/mi_filter.png", ),
                      ),
                    ]
                )
              ]
            ),
            /// Card of the resort
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFF5FAFE),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xFFFFD700)),
                          image: DecorationImage(image: AssetImage("assets/images/resort-01.png"), fit: BoxFit.cover),
                        ),
                      )
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
