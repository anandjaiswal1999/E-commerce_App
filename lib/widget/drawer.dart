import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const img =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.lightGreen,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Anand Jaiswal"),
                accountEmail: const Text("anandjaiswal@gmail.com"),
                currentAccountPicture: Image.network(img),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
