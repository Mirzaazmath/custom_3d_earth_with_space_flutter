import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



List<String>spaceBG=[
  "assets/Space1.jpg",
  "assets/Space2.jpg"
];

List<String>earthBG=[
  "assets/earthA.jpeg",
  "assets/earthB.jpeg",
];
class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
             autoPlay: true,
               pageSnapping: false,
                autoPlayInterval: const Duration(milliseconds: 100),
                autoPlayAnimationDuration:const  Duration(seconds: 2),
                autoPlayCurve: Curves.linear,
                height: MediaQuery.of(context).size.height),
            items: spaceBG.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(i),fit: BoxFit.fill
                              )
                          ),
                        );
                },
              );
            }).toList(),
          ),
          Container(
            height: 220,
            width: 220,

            decoration:  BoxDecoration(
              border: Border.all( color: Colors.blue),
              shape: BoxShape.circle,
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  offset:  const  Offset(-5,-5),
                  color: Colors.blueAccent.withOpacity(0.4),
                ),
                BoxShadow(
                    blurRadius: 50,
                    offset: const  Offset(5,5),
                  color: Colors.blueAccent.withOpacity(0.4),
                )
              ],
            ),
            child:Stack(
              children: [

                ClipOval(
                  child: CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        pageSnapping: false,
                        autoPlayInterval: const Duration(milliseconds: 100),
                        autoPlayAnimationDuration:const  Duration(seconds: 3),
                        autoPlayCurve: Curves.linear,
                        height: MediaQuery.of(context).size.height),
                    items: earthBG.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return

                              Container(


                              decoration: BoxDecoration(

                                  image: DecorationImage(
                                      image: AssetImage(i),fit: BoxFit.fill
                                  )
                              ),
                            );







                        },
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  foregroundDecoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      //color: Colors.white
                      backgroundBlendMode: BlendMode.overlay,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,



                          colors: [Colors.black.withOpacity(0.3),Colors.black.withOpacity(0.3),]
                      )
                  ),
                  

                ),
              ],
            ),
          ),
        ],
      )



    );
  }
}
