import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsWidget extends StatelessWidget {
  final double sizedBoxHeight = 30;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 47,
                    width: 142,
                    child: Text(
                      'Friends',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.add,
                    size: 30.0,
                  )
                ],
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              FriendInfoWidget(
                userName: 'VATsal',
                friendName: 'Vatsal',
                calBurned: '2000',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              FriendInfoWidget(
                userName: 'proTHAM',
                friendName: 'Pratham',
                calBurned: '2400',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              FriendInfoWidgetDown(
                userName: 'Random',
                friendName: 'DurVala',
                calBurned: '400',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              FriendInfoWidget(
                userName: 'proNAW',
                friendName: 'Pranav',
                calBurned: '2500',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              FriendInfoWidgetDown(
                userName: 'something',
                friendName: 'Random',
                calBurned: '500',
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              FriendInfoWidget(
                userName: 'aRyA',
                friendName: 'Arya',
                calBurned: '2300',
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



class FriendInfoWidgetDown extends StatelessWidget {

  FriendInfoWidgetDown({
    this.userName,
    this.friendName,
    this.calBurned,
  });

  final String friendName;
  final String userName;
  final String calBurned;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 349,
      decoration: BoxDecoration(
        color: Color(0xFFFFD12F),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('images/friendPicture.png'),
            ),

            /// this container is used for the friend name
            Container(
              height: 46,
              width: 122,
              child: Column(
                children: [
                  Text(
                    friendName,
                    style: GoogleFonts.raleway(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userName,
                    style: GoogleFonts.raleway(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              width: 22,
              child: Image.asset('images/downImageIcon.png'),
            ),
            Container(
              height: 36,
              width: 74,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFF6AD8EE),
                      Color(0xFF6CEBCA),
                    ],
                  )),
              child: Center(
                child: Text(
                  '$calBurned cal',
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class FriendInfoWidget extends StatelessWidget {

  FriendInfoWidget({
    this.userName,
    this.friendName,
    this.calBurned,
});

  final String friendName;
  final String userName;
  final String calBurned;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 349,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('images/friendPicture.png'),
            ),

            /// this container is used for the friend name
            Container(
              height: 46,
              width: 122,
              child: Column(
                children: [
                  Text(
                    friendName,
                    style: GoogleFonts.raleway(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userName,
                    style: GoogleFonts.raleway(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              width: 22,
              child: Image.asset('images/upIcon.png'),
            ),
            Container(
              height: 36,
              width: 74,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFF6AD8EE),
                      Color(0xFF6CEBCA),
                    ],
                  )),
              child: Center(
                child: Text(
                  '$calBurned cal',
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
