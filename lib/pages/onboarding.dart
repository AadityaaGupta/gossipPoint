import 'package:GossipPoint/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Onbpoarding extends StatefulWidget {
  const Onbpoarding({super.key});

  @override
  State<Onbpoarding> createState() => _OnbpoardingState();
}

class _OnbpoardingState extends State<Onbpoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset("assets/images/gossip.png")),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding:
                  EdgeInsets.only(left: 10.0, right: 10, top: 40, bottom: 5),
              child: Text(
                "Enjoy the experience of chating with your friends",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding:
            //       EdgeInsets.only(left:MediaQuery.of(context).size.width*0.5, right: 10, top: 5, bottom: 5),
            //   child: Text("\n \n on",
            //    // "Connect people around the world for free",
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //         fontSize: 25,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Positioned(
              top: MediaQuery.of(context).size.height*0.7,
              child: GestureDetector(
                onTap: () {
                  Authmethods().signInWithGoogle(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding:
                          EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
                      // margin: EdgeInsets.only(left: 25, right: 25),
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueGrey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/google_logo.svg",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Sign in with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
