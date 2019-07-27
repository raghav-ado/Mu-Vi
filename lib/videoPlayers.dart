import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player/main.dart';
import 'package:music_player/theme.dart';
import 'package:music_player/chewie_list_item.dart';

class VideoPlayers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: darkAccentColor),
        title: Text(
          'Video',
          style: TextStyle(color: Colors.grey[500]),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  'Mu-Vi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'cursive',
                    letterSpacing: 4.0,
                    height: 1.5,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: accentColor),
            ),
            ListTile(
              title: Text(
                'Audio',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 17.0,
                ),
              ),
              leading: Icon(Icons.audiotrack),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            ListTile(
              title: Text(
                'Video',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 17.0,
                ),
              ),
              leading: Icon(Icons.movie),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '#',
                        style: TextStyle(
                          color: Color(0xFFf08f8f),
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      "Local Videos",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                  height: 0,
                )
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 2.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Bunny playing with bucket.mp4',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5)
                  ),
                ),
              ],
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/sampleVideo.mp4',
            ),
            looping: true,
          ),
          Divider(
            color: Colors.black,
            height: 36,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '#',
                        style: TextStyle(
                          color: Color(0xFFf08f8f),
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      "Online Videos",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.white,
                  height: 0,
                )
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 2.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Butterfly in the garden.mp4',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5)
                  ),
                ),
              ],
            ),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
            ),
          ),
          Divider(
            color: Colors.black,
            height: 10,
          ),
        ],
      ),
    );
  }
}

