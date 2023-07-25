import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/back.png"),
                            Text("Back",style: GoogleFonts.overpass(
                                fontSize: 20,
                                color: Colors.white
                            ),),
                          ],
                        ),
                      ),

                      Image.asset("assets/images/settings.png")

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Today",style: GoogleFonts.overpass(
                        fontSize: 24,
                        color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("Sept, 12",style: GoogleFonts.overpass(
                        fontSize: 18,
                        color: Colors.white,
                    ),),
                  ],),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 155,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (index,context){
                    return Container(
                      height: 155,
                      width: 70,
                      decoration: BoxDecoration(
                          gradient: RadialGradient(colors: [Color(0xffFFFFFF).withOpacity(0.5),Color(0xffBFBFBF).withOpacity(0.2)]),
                          border: Border.all(color:Colors.white.withOpacity(0.6),width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(16))

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("24°C",style: GoogleFonts.overpass(
                              fontSize: 20,
                              color: Colors.white
                          ),),
                          Image.asset("assets/images/cloud.png"),
                          Text("17.00",style: GoogleFonts.overpass(
                              fontSize: 20,
                              color: Colors.white
                          ),),
                        ],
                      ),);
                  }, separatorBuilder: (index,context){
                    return SizedBox(width: 8,);
                  }, itemCount: 6),
                ),
                SizedBox(height: 32,),
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Text("Next Forcast",style: GoogleFonts.overpass(
                      fontSize: 24,
                      color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 24,),
                SizedBox(
                  width: double.infinity,
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (index,context){
                        return Container(
                          margin: EdgeInsets.only(left: 16,right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sept 17",style: GoogleFonts.overpass(
                                  fontSize: 18,
                                  color: Colors.white
                              ),),
                              Image.asset("assets/images/cloud.png",height: 60,width: 60,),
                              Text("24°C",style: GoogleFonts.overpass(
                                  fontSize: 18,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        );
                      }, separatorBuilder: (index,context){
                    return SizedBox(height: 8,);
                  }, itemCount: 6),
                ),


              ],
            ),
          )
        ],

      ),
    );
  }
}
