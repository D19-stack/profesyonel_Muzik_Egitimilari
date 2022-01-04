// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:navigator/navigator.dart';
import 'package:profesyonelmuzikegitimi/main.dart';
import 'package:profesyonelmuzikegitimi/mylife.dart';
import 'package:profesyonelmuzikegitimi/sabitler.dart';
import 'package:url_launcher/url_launcher.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({Key? key}) : super(key: key);
  static const String route3 = "/İletişim";
  @override
  _IletisimState createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.green.shade500,
        automaticallyImplyLeading: false,
        title: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                NoAnimationMaterialPageRoute(
                    builder: (context) => Scaffolddondur(),
                    settings: RouteSettings(name: "/")));
          },
          child: Text(
            'Profesyonel Müzik Eğitimi',
            style: Sabitler.mystyle2,
          ),
        ),
        backgroundColor: Sabitler.anarenk,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  NoAnimationMaterialPageRoute(
                      builder: (context) => MyLife(),
                      settings: RouteSettings(name: "/Özgeçmiş")));
            },
            child: Text(
              "Özgeçmiş",
              style: Sabitler.mystyle,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "İletişim",
              style: Sabitler.mystyle,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(children: [
            Image.network(
              "https://images.unsplash.com/photo-1534536281715-e28d76689b4d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
              height: 400.h,
              width: 412.w,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Container(
                      height: 50.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300,
                      ),
                      child: Center(
                        child: Text(
                          "İletişim",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  )
                ],
              ),
            ),
          ]),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300.h,
                  width: 412.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              if (defaultTargetPlatform ==
                                      TargetPlatform.windows ||
                                  defaultTargetPlatform ==
                                      TargetPlatform.linux ||
                                  defaultTargetPlatform ==
                                      TargetPlatform.macOS) {
                              } else {
                                launch("tel://+905053335709");
                              }
                            },
                            child: Row(
                              children: [
                                Icon(Icons.phone),
                                Text(
                                  "Telefon Numarası:0 505 333 57 09",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.email),
                                Text(
                                  "Eposta : ozgurevcin@gmail.com",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () async {
                                  var url =
                                      'https://www.instagram.com/ozgurevcin/';

                                  if (await canLaunch(url)) {
                                    await launch(
                                      url,
                                      universalLinksOnly: true,
                                    );
                                  } else {
                                    throw 'There was a problem to open the url: $url';
                                  }
                                },
                                child: Icon(Ionicons.logo_instagram),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white70.withOpacity(1))),
                              ),
                              TextButton(
                                onPressed: () async {
                                  _launchYoutubeVideo(
                                      "https://www.youtube.com/channel/UCGkuvwjx6NUBYMkM0w2aCkQ");
                                },
                                child: Sabitler.youtubeimage,
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white70.withOpacity(1))),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(children: [
              Container(
                color: Colors.black,
                height: 432.h,
                width: 412.w,
              ),
              SizedBox(
                height: 300.h,
                width: 412.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Divider(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            child: Image.asset("images/Free_Sample_By_Wix.jpg"),
                            radius: 50,
                            backgroundColor: Colors.red,
                          ),
                        ),
                        Divider(
                          height: 30,
                        ),
                        Text(
                          "Özgür Evcin",
                          style: Sabitler.mystyle2,
                        ),
                        Divider(
                          height: 50,
                        ),
                        Divider(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tasarım : Doğaç Evcin",
                            style: Sabitler.mystyle2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Sayfalar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    NoAnimationMaterialPageRoute(
                                        builder: (context) => MyLife(),
                                        settings:
                                            RouteSettings(name: "/Özgeçmiş")));
                              },
                              child: Text(
                                "   Özgeçmiş",
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    NoAnimationMaterialPageRoute(
                                        builder: (context) => Iletisim(),
                                        settings:
                                            RouteSettings(name: "/İletişim")));
                              },
                              child: Text("İletişim ",
                                  style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text("İletişim",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  if (defaultTargetPlatform ==
                                          TargetPlatform.windows ||
                                      defaultTargetPlatform ==
                                          TargetPlatform.linux ||
                                      defaultTargetPlatform ==
                                          TargetPlatform.macOS) {
                                  } else {
                                    launch("tel://+905053335709");
                                  }
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                    ),
                                    Text("0 505 333 57 09")
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(Icons.email),
                                    Text(
                                      "ozgurevcin@gmail.com",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black)),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () async {
                                      var url =
                                          'https://www.instagram.com/ozgurevcin/';

                                      if (await canLaunch(url)) {
                                        await launch(
                                          url,
                                          universalLinksOnly: true,
                                        );
                                      } else {
                                        throw 'There was a problem to open the url: $url';
                                      }
                                    },
                                    child: Expanded(
                                      child: Icon(
                                        Ionicons.logo_instagram,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all(
                                            Size(40, 40)),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black)),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      _launchYoutubeVideo(
                                          "https://www.youtube.com/channel/UCGkuvwjx6NUBYMkM0w2aCkQ");
                                    },
                                    child: Sabitler.youtubeimage,
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchYoutubeVideo(String _youtubeUrl) async {
  if (_youtubeUrl.isNotEmpty) {
    if (await canLaunch(_youtubeUrl)) {
      final bool _nativeAppLaunchSucceeded = await launch(
        _youtubeUrl,
        forceSafariVC: false,
        universalLinksOnly: true,
      );
      if (!_nativeAppLaunchSucceeded) {
        await launch(_youtubeUrl, forceSafariVC: true);
      }
    }
  }
}
