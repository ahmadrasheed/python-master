import 'package:flutter/material.dart';
import 'package:python/custome/BorderBox.dart';
import 'package:python/Items.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    const double xpadding = 15.0;
    return Scaffold(

      appBar: null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(xpadding),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderBox(
                        child: Icon(
                          Icons.menu,
                          color: Colors.black12,
                        ),
                        height: 50,
                        width: 50,
                      ),
                      BorderBox(
                        child: Icon(
                          Icons.settings,
                          color: Colors.black12,
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text("My city",
                      style: TextStyle(color: Colors.grey, fontSize: 25)),
                  Divider(color: Colors.grey),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        "functions",
                        "loops",
                        "data types",
                        "install",
                        "oop",
                        "lists"
                      ].map((e) => MyFilters(text: e)).toList(),
                    ),
                  ),
                  SizedBox(
                    height: xpadding,
                  ),
                  Expanded(
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: RE_DATA.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(itemData: RE_DATA[index]);
                        }),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: MyFlatButton(
                  icon: Icons.map,
                  text: "Map",
                  height: 37,
                  width: 120,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyFlatButton extends StatelessWidget {
  const MyFlatButton(
      {Key key, this.icon, this.text, this.height, this.width, this.color})
      : super(key: key);
  final IconData icon;
  final String text;
  final Color color;
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey,

        ),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('Map'),
            Icon(Icons.map,color: Colors.white,),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
