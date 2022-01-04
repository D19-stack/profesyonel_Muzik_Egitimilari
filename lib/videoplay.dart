import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoPlay extends StatefulWidget {
  VideoPlay({required this.videoPlayerController,Key? key}) : super(key: key);
  final VideoPlayerController videoPlayerController;
  @override
  _VideoPlayState createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay>{
  late ChewieController _chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
      _chewieController=ChewieController(videoPlayerController: widget.videoPlayerController,aspectRatio: 1/1,looping: true,autoPlay: false,autoInitialize: true,errorBuilder: (context,str){
      return Center(child: Text("Bir Hata Oluştu : ${str.toString()}"));
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Chewie(controller: _chewieController,),
    );
  }
  @override
  void dispose() {
    _chewieController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}