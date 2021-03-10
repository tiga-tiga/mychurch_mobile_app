
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mychurch/constants/app_colors.dart';

class ChurchDetails extends StatefulWidget {
  static const routeName = '/churchDetail';

  @override
  _ChurchDetailsState createState() => _ChurchDetailsState();
}

class _ChurchDetailsState extends State<ChurchDetails> {
  bool floatingOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: buildSpeedDial(context),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.network("https://tineye.com/images/widgets/mona.jpg", fit: BoxFit.cover,)

            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Saint Joseph",
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("Product Designer"),
                                    subtitle: Text("Kathmandu"),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text("285"),
                                      Text("Likes")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text("3025"),
                                      Text("Actualités")
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Text("5"),
                                      Text("Services")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                image: NetworkImage("https://tineye.com/images/widgets/mona.jpg"), fit: BoxFit.cover)),
                        margin: EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text("Infos Utiles"),
                          children: <Widget>[
                            ListTile(
                              title: Text("Phone"),
                              subtitle: Text("+977-9815225566"),
                              leading: Icon(Icons.phone),
                            ),
                           ListTile(
                              title: Text("Adresse"),
                              subtitle: Text("Hlm Grand Yoff"),
                              leading: Icon(Icons.phone),
                            ),
                            ListTile(
                              title: Text("Email"),
                              subtitle: Text("butterfly.little@gmail.com"),
                              leading: Icon(Icons.email),
                            ),
                            ListTile(
                              title: Text("A propos"),
                              subtitle: Text(
                                  "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                              leading: Icon(Icons.person),
                            ),

                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {
                    //Navigator.of(context).pushNamed(Profile.routeName);
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    size: 28,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  SpeedDial buildSpeedDial(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.list_view,


      animatedIconTheme: IconThemeData(size: 22.0),
      backgroundColor: AppColors.PRIMARY_COLOR,
      // child: Icon(Icons.add),
      onOpen: () {
        setState(() {
          floatingOpened = true;
        });
      },
      onClose: () {
        setState(() {
          floatingOpened = false;
        });
      },
      visible: true,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Icon(Icons.shopping_cart, color: AppColors.ACCENT_COLOR),
          backgroundColor: AppColors.PRIMARY_COLOR,
          onTap: () {
            //Navigator.of(context)..pushNamed(ShopScreen.routeName);
          },
          label: 'Boutique',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w300, color: AppColors.ACCENT_COLOR),
          labelBackgroundColor: AppColors.PRIMARY_COLOR,
        ),
        SpeedDialChild(
          child: Icon(Icons.person_add, color: AppColors.ACCENT_COLOR),
          backgroundColor: AppColors.PRIMARY_COLOR,
          onTap: () {
            //Navigator.of(context).pushNamed(ClientSuggest.routeName);
          },
          label: 'Proposer un client',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w300, color: AppColors.ACCENT_COLOR),
          labelBackgroundColor: AppColors.PRIMARY_COLOR,
        ),
        SpeedDialChild(
          child: Icon(Icons.search, color: AppColors.ACCENT_COLOR),
          backgroundColor: AppColors.PRIMARY_COLOR,
          onTap: () {
            //Navigator.of(context).pushNamed(SearchInstall.routeName);
          },
          label: 'Chercher une installation',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w300, color: AppColors.ACCENT_COLOR),
          labelBackgroundColor: AppColors.PRIMARY_COLOR,
        ),
      ],
    );
  }
}