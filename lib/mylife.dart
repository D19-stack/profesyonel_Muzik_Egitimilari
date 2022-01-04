import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:navigator/navigator.dart';
import 'package:profesyonelmuzikegitimi/iletisim.dart';
import 'package:profesyonelmuzikegitimi/main.dart';
import 'package:profesyonelmuzikegitimi/sabitler.dart';
import 'package:url_launcher/url_launcher.dart';

class MyLife extends StatefulWidget {
  static const String route2 = "/Özgeçmiş";

  const MyLife({Key? key}) : super(key: key);

  @override
  _MyLifeState createState() => _MyLifeState();
}

class _MyLifeState extends State<MyLife> {
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
            onPressed: () {},
            child: Text(
              "Özgeçmiş",
              style: Sabitler.mystyle,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  NoAnimationMaterialPageRoute(
                      builder: (context) => Iletisim(),
                      settings: RouteSettings(
                        name: "/İletişim",
                      )));
            },
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
              "https://images.unsplash.com/photo-1538922834563-a49edd1ac1a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80",
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
                      child: const Center(
                        child: Text(
                          "Özgeçmiş",
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
              child: Container(
                height: 300.h,
                width: 412.w,
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            child:const Text("Resim"),
                            radius: 50.r,
                          ),
                          const Text(
                            "Özgür Evcin",
                            style: TextStyle(fontSize: 20),
                          ),
                          const Divider(
                            height: 100,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: 7,
                        child: Text(
                            "1979 yılında İstanbul'da doğdum.2003 yılında Gazi Üniversitesi müzik bölümünden mezun oldum."))
                  ],
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
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const Divider(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            child:
                                Image.asset("images/Free_Sample_By_Wix.jpg"),
                            radius: 50,
                            backgroundColor: Colors.red,
                          ),
                        ),
                        const Divider(
                          height: 30,
                        ),
                        Text(
                          "Özgür Evcin",
                          style: Sabitler.mystyle2,
                        ),
                        const Divider(
                          height: 50,
                        ),
                        const Divider(
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
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding:  EdgeInsets.all(6.0),
                            child: Text(
                              "Sayfalar",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    NoAnimationMaterialPageRoute(
                                        builder: (context) =>const MyLife(),
                                        settings: const RouteSettings(
                                            name: "/Özgeçmiş")));
                              },
                              child:const Text(
                                "   Özgeçmiş",
                                style: TextStyle(color: Colors.white),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    NoAnimationMaterialPageRoute(
                                        builder: (context) => const Iletisim(),
                                        settings:const RouteSettings(
                                            name: "/İletişim")));
                              },
                              child:const Text("İletişim ",
                                  style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Padding(
                            padding:  EdgeInsets.all(6.0),
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
                                  children: const [
                                    Icon(
                                      Icons.phone,
                                    ),
                                    Text("0 505 333 57 09")
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(
                                            Colors.black)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: const[
                                    Icon(Icons.email),
                                    Text(
                                      "ozgurevcin@gmail.com",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(
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
                                    child:const Expanded(
                                      child: Icon(
                                        Ionicons.logo_instagram,
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                        minimumSize:
                                            MaterialStateProperty.all(
                                               const Size(40, 40)),
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
  if ( _youtubeUrl.isNotEmpty) {
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
