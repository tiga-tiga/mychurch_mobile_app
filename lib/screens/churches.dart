import 'package:flutter/material.dart';
import 'package:mychurch/constants/app_colors.dart';
import 'package:mychurch/screens/church_details.dart';
import 'package:mychurch/widgets/app_drawer.dart';

class Churches extends StatefulWidget {
  static const routeName = '/churches';
  @override
  _ChurchesState createState() => _ChurchesState();
}

class _ChurchesState extends State<Churches> {
  bool favoris = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Appdrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SwitchListTile(
                value: favoris,
                title: Text('Favoris'),
                activeColor: AppColors.PRIMARY_COLOR,
                onChanged: (value) {
                  setState(() {
                    favoris = value;
                  });
                },
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed(ChurchDetails.routeName);
                  },
                  child: Card(
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading :CircleAvatar(
                          radius: 20.0,
                          backgroundColor: const Color(0xFF778899),
                          backgroundImage:
                          NetworkImage("https://tineye.com/images/widgets/mona.jpg"),
                        ),
                      title: Text('tesst'),
                      subtitle: Text('Adresse de l\'église'),
                      trailing: Icon(Icons.keyboard_arrow_right),

                    ),
                  ),),
                );
              })
            ],),
        ),
      ),
    );
  }
}
