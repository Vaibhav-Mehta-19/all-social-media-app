import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Launch Google Search"),
            onTap: () async{
              const url = 'https://google.com';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          ListTile(
            title: Text("Launch Facebook Login"),
            onTap: () async{
              const url = 'https://www.facebook.com/';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          ListTile(
            title: Text("Launch LinkedIn Login"),
            onTap: () async{
              const url = 'https://www.linkedin.com/login';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          ListTile(
            title: Text("Launch Instagram Login"),
            onTap: () async{
              const url = 'https://www.instagram.com/accounts/login/';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          ListTile(
            title: Text("Launch Twitter Login"),
            onTap: () async{
              const url = 'https://mobile.twitter.com/login';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
        ],
      ),
    );
  }
}