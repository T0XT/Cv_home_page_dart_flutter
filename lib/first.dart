// ignore: depend_on_referenced_packages
import 'package:animated_background/animated_background.dart';

// ignore: unnecessary_import
import 'package:flutter/animation.dart';

import 'package:flutter/material.dart';
import 'package:cv_1/varible/coloersandtextstyle.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

final Uri _url = Uri.parse('https://www.instagram.com/er.r.ro/');

// ignore: camel_case_types
class firstscrrn extends StatefulWidget {
  const firstscrrn({super.key});

  @override
  State<firstscrrn> createState() => _firstscrrnState();
}

// ignore: camel_case_types
class _firstscrrnState extends State<firstscrrn> with TickerProviderStateMixin {
  double value = 0.9;
  // ignore: non_constant_identifier_names
  List<String> SKILSS = ["DART AND FLUTER"];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;

    List<double> value = [0.9, 0.8, 0.7];

    return Scaffold(
      body: Stack(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'image/first screen.png',
              fit: BoxFit.fill,
            ),
          ),
          AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(
                options: const ParticleOptions(
                    baseColor: Color.fromARGB(255, 199, 134, 212),
                    spawnMaxRadius: 9,
                    spawnMaxSpeed: 9,
                    spawnMinSpeed: 7)),
            child: Stack(
              children: [
                Expanded(
                    flex: 9,
                    child: Text(
                      "",
                      style: TextStyle1,
                    )),

                Row(
                  children: [
                    _iconscontact(
                      iconButton: TextButton(
                        onPressed: () {
                          launch(
                              'https://www.facebook.com/profile.php?id=100084292429289');
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          //padding: const EdgeInsets.all(16.0),
                          //  textStyle: const TextStyle(fontSize: 0),
                        ),
                        child: Text(
                          "facebook",
                          style: TextStyle5,
                        ),
                      ),
                    ),

                    _iconscontact(
                        iconButton: TextButton(
                            onPressed: () {
                              launch('https://github.com/T0XT');
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            child: Container(
                                decoration: BoxDecoration(
                                    // color: Color.fromARGB(255, 182, 61, 216),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "guithub",
                                  style: TextStyle5,
                                )))),
                    _iconscontact(
                        iconButton: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              //  padding: const EdgeInsets.all(16.0),
                              //  textStyle: const TextStyle(fontSize: 20),
                            ),
                            child: Text(
                              "youtube",
                              style: TextStyle5,
                            ))),
                    _iconscontact(
                        iconButton: TextButton(
                            onPressed: () {
                              launch(
                                  "https://www.linkedin.com/in/mohsen-ali-033b60299/");
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              //  padding: const EdgeInsets.all(16.0),
                              //  textStyle: const TextStyle(fontSize: 20),
                            ),
                            child: Text(
                              "linked",
                              style: TextStyle5,
                            ))),
                    _iconscontact(
                        iconButton: TextButton(
                            onPressed: () {
                              launch('https://www.instagram.com/er.r.ro/');
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              //  padding: const EdgeInsets.all(16.0),
                              //  textStyle: const TextStyle(fontSize: 20),
                            ),
                            child: Text(
                              "insta",
                              style: TextStyle5,
                            ))),
                    //youtube
                  ],
                ), //facebook
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                left: 20,
                top: 170,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.black54, Colors.purple],
                          begin: Alignment.topRight,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(122, 45, 10, 56)),
                  // ignore: sort_child_properties_last
                  child: Image.asset("image/90.png"),

                  //alignment: Alignment.center,
                  width: 0.27 * MediaQuery.of(context).size.width,
                  height: 0.35 * MediaQuery.of(context).size.height,
                ),
              ),
            ],
          ),
          Positioned(
              left: 0.30 * MediaQuery.of(context).size.width,
              top: 0.20 * MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.black54, Colors.purple],
                            begin: Alignment.topRight,
                            end: Alignment.bottomCenter),
                        borderRadius: BorderRadius.circular(34),
                        color: const Color.fromARGB(179, 49, 30, 30)),
                    // color: Color.fromARGB(255, 240, 231, 231),
                    width: 0.400 * MediaQuery.of(context).size.width,
                    height: 0.600 * MediaQuery.of(context).size.height,
                    child: Align(
                      alignment: const Alignment(33, -0.9),
                      child: Text(
                        "  HI is Mohsen Ali and I am a computer engineer and a programmer from Baghdad, Iraq,I  working on various projects using Dart and Flutter languages. I have developed several applications and websites,I believe that programming is a creative and challenging activity that allows me to solve problems and create solutions.\n AGE : 23 \n FULL TIME FREE LANS \n email : mohsenT0X@outlook.com",
                        style: TextStyle(
                            fontSize: 2 * unitHeightValue,
                            fontWeight: FontWeight.w900,
                            wordSpacing: 0.1,
                            fontFamily: "Cairo",
                            color: const Color.fromARGB(255, 218, 214, 216),
                            backgroundColor: null),

                        //textAlign: TextAlign.left,
                      ),
                    ),
                  )
                ],
              )),
          _postcirkler(
              left: w - 140, top: 280, value: 0.9, skilss: "dart & flutter"),
          _postcirkler(left: w - 110, top: 450, value: 0.9, skilss: "office"),
          _postcirkler(left: w - 134, top: 620, value: 0.8, skilss: "Mangmant"),
          _postcirkler(
              left: w - 138, top: 790, value: 0.9, skilss: "ui/ux disnag"),
        ],
      ),
    );
  }

  Positioned _postcirkler(
      {required double left,
      required double top,
      required double value,
      required String skilss}) {
    return Positioned(
        left: left,
        top: top,
        child: Align(
          // alignment: Alignment.centerRight,
          child: Row(
            children: [
              TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: value),
                duration: const Duration(seconds: 2),
                builder: (context, value, _) => Column(
                  children: [
                    SizedBox(
                      child: CircularProgressIndicator(
                        color: const Color.fromARGB(255, 120, 15, 141),
                        backgroundColor:
                            const Color.fromARGB(159, 255, 255, 255),
                        value: value,
                        strokeWidth: 12,
                        strokeAlign: 1,
                      ),
                    ),
                    Text(
                      'rate: $value',
                      style: const TextStyle(
                          fontSize: 19, height: 3, color: Colors.white),
                    ),
                    Text(
                      skilss,
                      style: TextStyle(
                          height: 1,
                          fontSize: 24,
                          color: Colors.purpleAccent[100]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Expanded _iconscontact({required TextButton iconButton}) {
    return Expanded(
      child: iconButton,

      //flex: 6,
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
