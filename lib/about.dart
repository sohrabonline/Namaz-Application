import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:namaz/config/assets.dart';
import 'package:namaz/config/constants.dart';

import 'about.dart';
import 'event.dart';
import 'home.dart';
import 'notification.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:  Padding(
          padding: const EdgeInsets.all(70.0),
          child: Text("About Us",style: TextStyle(color: Colors.white),),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.asset(Assets.namaz).image,
                
                  
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Namaz is the most supreme worship which is obligatory upon every Muslim to perform five times a day on their respective timings. With the collaboration of MFS and Ned and with the noble intention to make Muslim Ummah aware about the prayer timings of any location in the world has introduced Prayer Times application for android devices. ',
                  textScaleFactor: 2,
                ),
                // SizedBox(
                //   height: 2,
                // ),
                // Text(
                //     'Android. Flutter. Dotnet. Python. Web. Desktop Applications. Cricket. Music.\nLikes Traveling.',
                //     style: Theme.of(context).textTheme.caption,
                //     textScaleFactor: 2,
                //     textAlign: TextAlign.center,
                //   ),
                // SizedBox(
                //   height: 40,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: <Widget>[
                //     FlatButton.icon(
                //       icon: SizedBox(
                //           width: 20,
                //           height: 20,
                //           child: Image.asset(Assets.github)),
                //       label: Text('Github'),

                //       onPressed:_launchgithub,// html.window.open(Constants.PROFILE_GITHUB,'Hasan Rehman' ),
                //     ),
                //     // ),FlatButton.icon(
                //     //   icon: SizedBox(
                //     //       width: 20,
                //     //       height: 20,
                //     //       child: Image.asset(Assets.twitter)),
                //     //   label: Text('Twitter'),
                //     //   onPressed:()=> html.window.open(Constants.PROFILE_TWITTER,'Hasan Rehman' ),
                //     // ),
                //     // FlatButton.icon(
                //     //   icon: SizedBox(
                //     //       width: 20,
                //     //       height: 20,
                //     //       child: Image.asset(Assets.medium)),
                //     //   label: Text('Medium'),
                //     //   onPressed:()=> html.window.open(Constants.PROFILE_MEDIUM,'Hasan Rehman' ),
                //     // )
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: <Widget>[
                //     FlatButton.icon(
                //       icon: SizedBox(
                //           width: 20,
                //           height: 20,
                //           child: Image.asset(Assets.instagram)),
                //       label: Text('Instagram'),
                //       onPressed: _launchinsta,
                //     ),FlatButton.icon(
                //       icon: SizedBox(
                //           width: 20,
                //           height: 20,
                //           child: Image.asset(Assets.facebook)),
                //       label: Text('Facebook'),
                //       onPressed:_launchfacebook,
                //     ),FlatButton.icon(
                //       icon: SizedBox(
                //           width: 20,
                //           height: 20,
                //           child: Image.asset(Assets.linkedin)),
                //       label: Text('Linkedin'),
                //       onPressed:_launchlinklen,
                //     )
                //
               //  ],
             //   )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: new BottomAppBar(
        color: Colors.green,
        child: new Container(
//            margin: const EdgeInsets.only(left: 70.0, right: 70.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: new IconButton(
                  icon: new Icon(Icons.home),
                  iconSize: 50,
                  color: Colors.white,
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => new HomeView()));
                  },
                ),
              ),
              Expanded(
                child: new IconButton(
                  icon: new Icon(Icons.event_note),
                  iconSize: 50,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Event()));
                  },
                ),
              ),

              Expanded(
                child: new IconButton(
                  icon: new Icon(Icons.notifications),
                  iconSize: 50,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Notification1()));
                  },
                ),
              ),

              Expanded(
                child: new IconButton(
                  icon: new Icon(Icons.priority_high),
                  iconSize: 50,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new AboutTab()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
_launchgithub() async {
  const url = Constants.PROFILE_GITHUB;

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchlinklen() async {
  const url = Constants.PROFILE_LINKEDIN;

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchinsta() async {
  const url = Constants.PROFILE_INSTAGRAM;

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchfacebook() async {
  const url = Constants.PROFILE_FACEBOOK;

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}