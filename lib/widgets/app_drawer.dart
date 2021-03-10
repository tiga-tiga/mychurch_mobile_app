import 'package:flutter/material.dart';
import 'package:mychurch/constants/app_colors.dart';

class Appdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: AppColors.ACCENT_COLOR,
              child: UserAccountsDrawerHeader(

                decoration: BoxDecoration(color: AppColors.PRIMARY_COLOR),
                accountName: Text('Info Eglises'),
                accountEmail: Text('Nous contacter ?'),
                currentAccountPicture: new CircleAvatar(
                  radius: 50.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage:
                  NetworkImage("https://tineye.com/images/widgets/mona.jpg"),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.description, color: Colors.orange,),
                        SizedBox(width: 5,),
                        Text(
                          'Les eglises ',
                          style: TextStyle(color: AppColors.PRIMARY_COLOR),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      //Navigator.of(context).pushReplacementNamed(DashBoard.routeName);
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.local_activity, color: Colors.red.shade500,),
                        SizedBox(width: 5,),
                        Text(
                          'Fil d\'actualités',
                          style: TextStyle(color: AppColors.PRIMARY_COLOR),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      //Navigator.of(context).pushNamed(PendingInstalls.routeName);
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text(
                          'Réservations',
                          style: TextStyle(color: AppColors.PRIMARY_COLOR),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      //Navigator.of(context).pushNamed(SearchInstall.routeName);
                    },
                  ),




                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
