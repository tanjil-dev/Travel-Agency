import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FAFE),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Location", style: GoogleFonts.roboto(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),),
            Text("Bali, Indonesia", style: GoogleFonts.openSans(
              fontSize: 16,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              /// Calender
              Row(
                children: [
                  Expanded(
                    flex: 3, // 3 parts out of total 5
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                      decoration: BoxDecoration(
                        color: Color(0xFF007EF2).withOpacity(0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/clarity_date-line.png",
                            height: 16,
                            width: 16,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "24 OCT - 26 OCT",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF007EF2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 2, // 2 parts out of total 5
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                      decoration: BoxDecoration(
                        color: Color(0xFF007EF2).withOpacity(0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "3 Guests",
                          style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF007EF2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        
              SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                      child: Container(
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF007EF2), width: 1),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          Image.asset("assets/images/circum_search.png",),
                          SizedBox(width: 8,),
                          Text("Search Hotel By Name", style: GoogleFonts.roboto(fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xFF7F7F7F)),)
                        ]
                      )
                  ),
                  ),
                  SizedBox(width: 16,),
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
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Recommended Hotels", style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF007EF2),
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              /// Card of the resort
              SizedBox(
                height: 310,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    if(index % 2 == 0) {
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 230,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Column(
                              children: [
                                // Image
                                Container(
                                  height: 150,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Color(0xFFFFD700)),
                                    image: DecorationImage(image: AssetImage(
                                        "assets/images/resort-01.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [

                                    /// Discount off
                                    Container(
                                      width: 80,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF007EF2).withOpacity(
                                              0.12),
                                          borderRadius: BorderRadius.circular(
                                              10)
                                      ),
                                      child: Center(child: Text("10% OFF",
                                        style: GoogleFonts.openSans(fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF007EF2)),)),
                                    ),
                                    SizedBox(width: 16,),

                                    /// Rating
                                    Container(
                                        width: 50,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF007EF2)
                                                .withOpacity(
                                                0.12),
                                            borderRadius: BorderRadius.circular(
                                                10)
                                        ),
                                        child: Center(child: Row(
                                          children: [
                                            SizedBox(width: 8),
                                            Icon(Icons.star,
                                              color: Color(0xFFFFD700),
                                              size: 12,),
                                            SizedBox(width: 4),
                                            Text("4.5",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF007EF2)),)
                                          ],
                                        )
                                        )
                                    ),
                                    Expanded(child: SizedBox(width: 20,)),

                                    /// Favorite
                                    Icon(
                                      Icons.favorite_border,
                                      color: Color(0xFF007EF2),
                                      size: 28,)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(
                                      "AYANA Resort", style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on,
                                          color: Color(0xFF737373), size: 10,),
                                        SizedBox(width: 4,),
                                        Text("Bali, Indonesia",
                                          style: GoogleFonts.openSans(
                                              fontSize: 10,
                                              color: Color(0xFF737373)),)
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text("\$200 - \$500 USD",
                                            style: GoogleFonts.roboto(
                                                fontSize: 10,
                                                color: Color(0xFF007EF2),
                                                fontWeight: FontWeight.w300)),
                                        Text(
                                          "/night", style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            color: Color(0xFF737373),
                                            fontWeight: FontWeight.w300),)
                                      ],
                                    )
                                  ],
                                )

                              ]
                          ),
                        ),
                      );
                    }
                    else{
                      return Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 230,
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Column(
                              children: [
                                // Image
                                Container(
                                  height: 150,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Color(0xFFFFD700)),
                                    image: DecorationImage(image: AssetImage(
                                        "assets/images/Rectangle 33.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [

                                    /// Discount off
                                    Container(
                                      width: 80,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10),
                                      decoration: BoxDecoration(
                                          color: Color(0xFF007EF2).withOpacity(
                                              0.12),
                                          borderRadius: BorderRadius.circular(
                                              10)
                                      ),
                                      child: Center(child: Text("10% OFF",
                                        style: GoogleFonts.openSans(fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF007EF2)),)),
                                    ),
                                    SizedBox(width: 16,),

                                    /// Rating
                                    Container(
                                        width: 50,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF007EF2)
                                                .withOpacity(
                                                0.12),
                                            borderRadius: BorderRadius.circular(
                                                10)
                                        ),
                                        child: Center(child: Row(
                                          children: [
                                            SizedBox(width: 8),
                                            Icon(Icons.star,
                                              color: Color(0xFFFFD700),
                                              size: 12,),
                                            SizedBox(width: 4),
                                            Text("4.7",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF007EF2)),)
                                          ],
                                        )
                                        )
                                    ),
                                    Expanded(child: SizedBox(width: 20,)),

                                    /// Favorite
                                    Icon(
                                      Icons.favorite_border,
                                      color: Color(0xFF007EF2),
                                      size: 28,)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(
                                      "COMO Uma Resort", style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on,
                                          color: Color(0xFF737373), size: 10,),
                                        SizedBox(width: 4,),
                                        Text("Bali, Indonesia",
                                          style: GoogleFonts.openSans(
                                              fontSize: 10,
                                              color: Color(0xFF737373)),)
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        Text("\$300 - \$500 USD",
                                            style: GoogleFonts.roboto(
                                                fontSize: 10,
                                                color: Color(0xFF007EF2),
                                                fontWeight: FontWeight.w300)),
                                        Text(
                                          "/night", style: GoogleFonts.roboto(
                                            fontSize: 10,
                                            color: Color(0xFF737373),
                                            fontWeight: FontWeight.w300),)
                                      ],
                                    )
                                  ],
                                )

                              ]
                          ),
                        ),
                      );
                    }
                  }
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Business Accommodation", style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF007EF2),
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              /// Card fo the Business Accommodation
              SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return Container(
                          margin: EdgeInsets.only(right: 16),
                          width: 230,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Image
                                  Container(
                                    height: 150,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(0xFFFFD700)),
                                      image: DecorationImage(image: AssetImage(
                                          "assets/images/Rectangle 60.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [

                                      /// AC
                                      Container(
                                        width: 80,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF007EF2)
                                                .withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(
                                                10)
                                        ),
                                        child: Center(child: Text("Fast Wi-Fi",
                                          style: GoogleFonts.openSans(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF007EF2)),)),
                                      ),
                                      SizedBox(width: 16,),
                                      Container(
                                        width: 100,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF007EF2)
                                                .withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(
                                                10)
                                        ),
                                        child: Center(
                                            child: FittedBox(
                                              child: Text("AC Conference Room",
                                                style: GoogleFonts.openSans(
                                                    fontSize: 6,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF007EF2)),),
                                            )),
                                      ),
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        );
                      }
                      else{
                        return Container(
                          margin: EdgeInsets.only(right: 16),
                          width: 230,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Image
                                  Container(
                                    height: 150,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(0xFFFFD700)),
                                      image: DecorationImage(image: AssetImage(
                                          "assets/images/Rectangle 69.png"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(height: 10,),

                                  /// In-room work stations
                                  Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF007EF2)
                                                .withOpacity(0.12),
                                            borderRadius: BorderRadius.circular(
                                                10)
                                        ),
                                        child: Center(
                                            child: FittedBox(
                                              child: Text("In-room work stations",
                                                style: GoogleFonts.openSans(
                                                    fontSize: 6,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF007EF2)),),
                                            )),
                                      ),
                                    ],
                                  ),
                                ]
                            ),
                          ),
                        );
                      }
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
