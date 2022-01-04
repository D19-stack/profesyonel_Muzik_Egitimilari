import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sabitler {
  static final Image resim = Image.network(
    "https://images.unsplash.com/photo-1593697972679-c4041d132a46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    height: 600.h,
    width: 412.w,
    fit: BoxFit.cover,
  );
  static final Color anarenk = Colors.green;
  static const Color ayzialanirengi = Colors.white;
  static const TextStyle mystyle =
      TextStyle(fontFamily: "RobotoMono", color: Colors.white);
  static final TextStyle mystyle2 =
      TextStyle(fontFamily: "RobotoMono", color: Colors.white, fontSize: 12);
  static final TextStyle mystyle3 = TextStyle(fontSize: 17);
  static final Image instagramimage = Image.asset(
    "images/pngtree-instagram-social-media-icon-design-template-vector-png-image_3654765.png",
    height: 40,
    width: 40,
    fit: BoxFit.cover,
  );

  static final Image youtubeimage = Image.asset(
    "images/youtube-logo-hd-8.png",
    height: 80,
    width: 80,
    fit: BoxFit.cover,
  );
}
