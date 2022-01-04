import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:navigator/navigator.dart';
import 'package:profesyonelmuzikegitimi/iletisim.dart';
import 'package:profesyonelmuzikegitimi/mylife.dart';
import 'package:profesyonelmuzikegitimi/sabitler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: () {
        return const MaterialApp(
          home: Scaffolddondur(),
          debugShowCheckedModeBanner: false,
          title: 'Profesyonel Müzik Eğitimi',
        );
      }));
}

class Scaffolddondur extends StatefulWidget {
  static const String route = "/";

  const Scaffolddondur({Key? key}) : super(key: key);

  @override
  State<Scaffolddondur> createState() => _ScaffolddondurState();
}

class _ScaffolddondurState extends State<Scaffolddondur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.green.shade500,
          automaticallyImplyLeading: false,
          title: TextButton(
            onPressed: () {},
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
            Stack(
              children: [
                Sabitler.resim,
                Row(
                  children: [
                    SizedBox(
                      width: 150.w,
                    ),
                    Column(
                      children: [
                        Divider(height: 50),
                        Center(
                          child: Container(
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("PİYANO", style: TextStyle(fontSize: 18)),
                                Padding(
                                  padding: EdgeInsets.all(9.0),
                                  child: Text(
                                      "Piyano eğitimine küçük yaşlarda başlamanın birçok yararı olduğu bilinmektedir. Bunlardan birkaçını sıralayacak olursak:\n - Vücut kordinasyonunu geliştirir\n - İşitsel  ve sözel becerileri geliştirir\n - Konsantrasyon süresini arttırır\n - Dil gelişimi üzerinde olumlu etkileir olduğu bilinmektedir\n - Sayısal zekayı geliştirir\n - Hızlı okuma becerisi kazandırır\n - Hafızayı geliştirir.\n - Çalışma disiplini verir \n - Soyutlama yeteneği geliştirir.",
                                      style: TextStyle(
                                          fontSize: defaultTargetPlatform ==
                                                      TargetPlatform.macOS ||
                                                  defaultTargetPlatform ==
                                                      TargetPlatform.windows ||
                                                  defaultTargetPlatform ==
                                                      TargetPlatform.linux
                                              ? 15
                                              : 10)),
                                ),
                              ],
                            )),
                            height: 200.h,
                            width: 225.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Sabitler.ayzialanirengi,
                            ),
                          ),
                        ),
                        Divider(
                          height: 100,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 42,
                    ),
                  ],
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  color: Sabitler.anarenk,
                  height: 500.h,
                  width: 412.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(
                      height: 100,
                      color: Sabitler.anarenk,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Sabitler.ayzialanirengi,
                            ),
                            height: 300.h,
                            width: 250.w,
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                  "             Derslerimizi Nasıl İşliyoruz ?\n\n burada yazılar var"),
                            )),
                      ),
                    ),
                    Divider(
                      height: 100.h,
                      color: Sabitler.anarenk,
                    )
                  ],
                )
              ],
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 860.h,
                width: 412.w,
                child: Column(
                  children: [
                    sarkiOynat(songName: "jSYbRwLzOQY"),
                    sarkiOynat(songName: "_KsVBynt9pI"),
                  ],
                ),
              ),
            ),
            Stack(children: [
              Container(
                color: Colors.black,
                height: 300.h,
                width: 412.w,
              ),
              Container(
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
                                        builder: (context) => Iletisim(),
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
                                    launch("tel://+xxxxxxxx");
                                  }
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                    ),
                                    Text("xxxxxx")
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
                                      "xxxxxxx",
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
                                          'xxxxxxxx';

                                      if (await canLaunch(url)) {
                                        await launch(
                                          url,
                                          universalLinksOnly: true,
                                        );
                                      } else {
                                        throw 'There was a problem to open the url: $url';
                                      }
                                    },
                                    child: Icon(
                                      Ionicons.logo_instagram,
                                      color: Colors.white,
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
                                          "xxxxxxxxxx");
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
          ],
        ));
  }

  sarkiOynat({required String songName}) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: songName,
      params: YoutubePlayerParams(
        startAt: Duration.zero,
        showControls: true,
        showFullscreenButton: true,
        loop: true,
      ),
    );

    return 
       SizedBox(
        height: 412.h,
        width: 400.w,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: YoutubePlayerIFrame(
            controller: _controller,
            aspectRatio: 16 / 9,
          ),
        ),
      )
    ;
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
}
