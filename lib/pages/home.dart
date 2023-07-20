import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.only(left:16.0,right:16.0),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/location.png",color: Colors.white,height: 24,width: 24,),
                        SizedBox(width: 10,),
                        Text(
                          "Semarang",
                          style: GoogleFonts.overpass(
                            textStyle:TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(blurRadius: 4, offset: Offset(2, 2),color: Colors.grey.shade800)
                                ]),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Image.asset("assets/images/drop_down.png",color: Colors.white,)
                      ],
                    ),
                    Image.asset("assets/images/notification_bell.png")
                  ],
                ),
                SizedBox(height: 50,),
                Image.asset("assets/images/cloud.png",height: 172*1.5,width:169.38*1.5 ,),
                Center(
                  child: Container(
                  height: 353,
                  width: 353,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [Color(0xffFFFFFF).withOpacity(0.5),Color(0xffBFBFBF).withOpacity(0.2)]),
                    border: Border.all(color:Colors.white.withOpacity(0.6),width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(20))

                  ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Text("Today, 12 September",style: GoogleFonts.overpass(textStyle: TextStyle(fontSize: 18,color: Colors.white)),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("12",style: GoogleFonts.overpass(textStyle: TextStyle(fontSize: 100,color: Colors.white,shadows: [
                                BoxShadow(blurRadius: 30, offset: Offset(-6, 4),color: Colors.black.withOpacity(0.4),)
                              ])),),
                              Text("°",style: GoogleFonts.overpass(textStyle: TextStyle(fontSize: 72,color: Colors.white,shadows: [
                                BoxShadow(blurRadius: 30, offset: Offset(-6, 4),color: Colors.black.withOpacity(0.4),)
                              ])),),

                            ],
                          ),
                          Text("Cloudy",style: GoogleFonts.overpass(textStyle: TextStyle(fontSize: 24,color: Colors.white)),),

                          SizedBox(height:10),
                          Row(
                            children: [
                              Image.asset("assets/images/windy.png"),
                              SizedBox(width: 8,),
                              Text("Wind   |    10km/h",style: GoogleFonts.overpass(textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight:FontWeight.w400)),),
                            ],),
                          SizedBox(height: 4,),
                          Row(

                            children: [
                              Image.asset("assets/images/hum.png"),
                              SizedBox(width: 8,),
                              Text("Hum    |    59%",style: GoogleFonts.overpass(textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight:FontWeight.w400)),),

                            ],),


                        ],),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
