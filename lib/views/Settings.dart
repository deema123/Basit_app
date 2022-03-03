import 'package:basit/views/App_Bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'constants.dart';

class SettingsPage extends StatefulWidget {
  final routeName = "/SettingsPage";
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool status=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Settings',[Container()]),
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10),
        margin: EdgeInsets.only(top: 20),
        //padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            tile('assets/images/Notification.png', 'Notification',  FlutterSwitch(
              height: 20.0,
              width: 40.0,
              padding: 4.0,
              toggleSize: 15.0,
              borderRadius: 10.0,
              inactiveColor: Color(0xFFC2D5E0),
              value: status,
              onToggle: (value) {
                setState(() {
                  status = value;
                });
              },
            ),),
            Divider(
              thickness: 1,
              color: Color(0xFF649AB8),
            ),
            tile(
              'assets/images/language.png',
              'Change language',
              Container(
                  width: 70,
                  child: Row(children: [
                    Text(
                      'EN',
                      style: TextStyle(color: kFColor),
                    ),
                    IconButton(
                        color: kFColor,
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios_outlined))
                  ])),
            ),
            Divider(
              thickness: 1,
              color: Color(0xFF649AB8),
            ),
            tile(
                'assets/images/password.png',
                'Change password',
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )),
            Divider(
              thickness: 1,
              color: Color(0xFF649AB8),
            ),
            tile(
                'assets/images/terms.png',
                'Terms of use',
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )),
            Divider(
              thickness: 1,
              color: Color(0xFF649AB8),
            ),
            tile(
                'assets/images/Privacy.png',
                'Privacy Policy',
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )),
            Divider(
              thickness: 1,
              color: Color(0xFF649AB8),
            ),
            tile(
                'assets/images/Signout.png',
                'Sign out',
                Icon(
                  Icons.arrow_forward_ios_outlined,
                )),
            Divider(
              thickness: 1,
              color: Color(0xFF649AB8),
            ),
          ],
        ),
      ),
    );
  }

  Widget tile(String images, String texts, Widget trail) {
    return Container(
    //  padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: Image.asset(
          images,
        ),
        title: Text(
          texts,
          style: TextStyle(color: Color(0xff5D8AB4),fontSize: 15),
        ),
        trailing: trail,
        // onTap: onClicked,
      ),
    );
  }

}
