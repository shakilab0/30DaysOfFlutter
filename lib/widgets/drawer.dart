import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fdac8-1.fna.fbcdn.net/v/t39.30808-6/240461426_1215910098855145_236512538259015710_n.jpg?_nc_cat=107&ccb=1-6&_nc_sid=09cbfe&_nc_eui2=AeEJUfqxFUK28uL_U9vVopgUY6CsdEvOgaljoKx0S86BqZUp4DNbG_8IK29I7kTXMHfs2MlNm83CvqMtwxZIBHhB&_nc_ohc=CphZSueG0jcAX_34oKN&_nc_ht=scontent.fdac8-1.fna&oh=00_AT8JtfiO5m9m-jWcp2MA2FmYDNTmZLIBpt-vqS4eMBIkww&oe=628B0FE2";
    return Drawer(
      backgroundColor: Colors.deepOrangeAccent,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              accountName: Text("Shakil Ahmed"),
              accountEmail: Text("shakilahmed@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Mail Me",
              textScaleFactor: 1.2,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
