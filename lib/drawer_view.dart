import 'package:drawer_with_flutter/hom_view.dart';
import 'package:drawer_with_flutter/primary_list_tile.dart';
import 'package:drawer_with_flutter/setting_view.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/322461/pexels-photo-322461.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'))),
              accountName: Text(
                'Samia Salhia',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.greenAccent,
                child: CircleAvatar(
                  radius: 34.2,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/6912824/pexels-photo-6912824.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load'),
                ),
              ),
            ),
            PrimaryListTile(
              text: 'Home',
              icon: Icons.home,
              onSelect: () {
                // Then close the drawer // إغلاق الدراور
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
            ),
            PrimaryListTile(
              text: 'Setting',
              icon: Icons.settings,
              onSelect: () {
                // Then close the drawer // إغلاق الدراور
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingView()));
              },
            ),
            PrimaryListTile(
              text: 'Share',
              icon: Icons.share,
              onSelect: () {
                // Then close the drawer // إغلاق الدراور
                Navigator.pop(context);
              },
            ),
            PrimaryListTile(
              text: 'Logout',
              icon: Icons.logout,
              onSelect: () {
                // Then close the drawer // إغلاق الدراور
                Navigator.pop(context);
              },
            )
          ]),
        ),
      ),
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Drawer Widget',
          )),
    );
  }
}
