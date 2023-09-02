import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sssi/widgets/themes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://scontent.fktm13-1.fna.fbcdn.net/v/t39.30808-6/243350733_404263341080174_2554957150264230687_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5614bc&_nc_ohc=MemHnfM0NH4AX_k19Ih&_nc_oc=AQmoBV6YWSkfOJWVaFlJuAAETvP01mM4_nXmPaTi2DeDuNmQFBUj9DfZ7krw6Rqo5Wg&_nc_ht=scontent.fktm13-1.fna&oh=00_AfDajniaHYg69ZWk3eTGL2vywlitsL7klP7pNFz0NHFOtA&oe=64F6B8B9";
    return Drawer(
      backgroundColor: Colors.blue,
      child: Material(
        child: Container(
          color: Colors.blue,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.blue),
                  accountName: Text(
                    "Aakash Pandey",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text(
                    "susilaorigin@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
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
                  style: TextStyle(
                    color: Colors.white,
                  ),
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
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Email us",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.sun_max_fill,
                  color: Colors.white,
                ),
                title: Text(
                  "Dark Mode",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () => MyTheme.darkTheme(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
