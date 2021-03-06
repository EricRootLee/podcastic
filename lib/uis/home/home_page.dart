import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';
import 'package:podcastic/uis/home/tab_contents/tab_contents.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CupertinoTabScaffold(
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return Home();
              case 1:
                return Explore();
              case 2:
                return MyPodcasts();
              case 3:
                return Settings();
              default:
                return Home();
            }
          },
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.lightbulb), label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.list_dash), label: 'My podcasts'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings), label: 'Settings'),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 50,
          child: Material(
            color: CupertinoTheme.brightnessOf(context) == Brightness.dark
                ? Colors.white12
                : Colors.black12,
            child: ListTile(
                contentPadding: EdgeInsets.all(4),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        TestImages.getRandomImage(),
                        fit: BoxFit.fitHeight,
                      )),
                ),
                trailing: CupertinoButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    //TODO: Add on pressed
                  },
                  child: Icon(
                    CupertinoIcons.pause,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                title: Container(
                  height: 20,
                  child: Marquee(
                    text: "All about the perseverance rover by Samuel Baraka",
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    style: GoogleFonts.redHatDisplay(
                        color: CupertinoTheme.brightnessOf(context) ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16),
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                        padding: EdgeInsets.all(4),
                        onPressed: () {},
                        child: Icon(
                          Icons.replay_10_outlined,
                          size: 30,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    CupertinoButton(
                        padding: EdgeInsets.all(4),
                        onPressed: () {},
                        child: Icon(
                          CupertinoIcons.play,
                          size: 40,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    CupertinoButton(
                        padding: EdgeInsets.all(4),
                        onPressed: () {},
                        child: Icon(Icons.forward_10_outlined, size: 30)),
                  ],
                )),
          ),
        )
      ],
    );
  }
}
