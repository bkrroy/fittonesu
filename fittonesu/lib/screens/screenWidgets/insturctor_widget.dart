import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class InstructorWidget extends StatefulWidget {
  @override
  _InstructorWidgetState createState() => _InstructorWidgetState();
}

class _InstructorWidgetState extends State<InstructorWidget> {
  final double sizedBoxHeight = 40;

  final String url1 =
      'https://firebasestorage.googleapis.com/v0/b/fittonesu-51f48.appspot.com/o/Pexels%20Videos%202796307.mp4?alt=media&token=659a74f7-5654-4eef-9b72-bd48904d8f8c';

  final String url2 =
      'https://firebasestorage.googleapis.com/v0/b/fittonesu-51f48.appspot.com/o/Woman%20Stretching%20Near%20A%20Cliff.mp4?alt=media&token=1444406a-c1b8-4456-baa6-5eebc33ff129';

  final String url3 =
      'https://firebasestorage.googleapis.com/v0/b/fittonesu-51f48.appspot.com/o/video%20(1).mp4?alt=media&token=7920bede-8a47-4881-9169-4b6a4d6f06d7';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Instructors',
                  style: GoogleFonts.raleway(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              InstructorPostWidget(
                videoUrl: url1,
                userName: 'walkInTheCraziestWay',
                userCaption: 'The way you practice the meditation now is the way you live peacefully',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              InstructorPostWidget(
                videoUrl: url2,
                userCaption: 'The Thing about exercise is it keeps you and your mind healthy',
                userName: 'V A T S A L A S T A V',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              InstructorPostWidget(
                videoUrl: url3,
                userName: 'KhatroKeKhiladi',
                userCaption: 'This world and the Size dosen\'t matter all it matters is that you are willing to do it',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InstructorPostWidget extends StatefulWidget {
  InstructorPostWidget({this.videoUrl, this.userName, this.userCaption});

  final String videoUrl;
  final String userName;
  final String userCaption;

  @override
  _InstructorPostWidgetState createState() => _InstructorPostWidgetState();
}

class _InstructorPostWidgetState extends State<InstructorPostWidget> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.network(widget.videoUrl),
      aspectRatio: 19.9/9,
      autoInitialize: false,
      autoPlay: false,
      looping: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 304,
      width: 358,
      decoration: BoxDecoration(
        color: Color(0xFF373856),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                widget.userName,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 202,
            width: 358,
            child: Chewie(controller: _chewieController,),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              child: Text(
                widget.userCaption,
                style: GoogleFonts.raleway(),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
