import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:python/custome/BorderBox.dart';
import 'package:python/db/ImageData.dart';
import 'package:python/screens/LandingScreen.dart';
import 'package:python/screens/PdfViewScreen.dart';
import 'package:python/screens/quiz/quiz_screen.dart';
import 'package:python/utils/BottomNavBarV2.dart';
import 'package:python/utils/ViewPdf.dart';
import '../Items.dart';
import 'package:get/get.dart';

class PinterestGrid extends StatefulWidget {
  const PinterestGrid({Key key}) : super(key: key);

  @override
  _PinterestGridState createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black,
        ),
        backgroundColor: Colors.white,
         centerTitle: true,
         title:     Text("Learn Python",
             style: TextStyle(color: Colors.purple, fontSize: 30,
               shadows: [
                 Shadow(
                   blurRadius: 0.5,
                   color: Colors.black,
                   offset: Offset(0.9, 0.9),
                 ),
               ],)),
       // backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        //leading: Icon(Icons.email),
      ),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 300,width:double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                      radius: 50,
                        child: (
                        Text('Ghofran',style: TextStyle(fontSize: 22.0,
                          shadows: [
                          Shadow(
                          blurRadius: 0.5,
                          color: Colors.black,
                          offset: Offset(0.9, 0.9),
                        )],))
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 50,
                        child: (
                            Text('Haneen',style: TextStyle(fontSize: 22.0,
                                shadows: [
                              Shadow(
                                blurRadius: 0.5,
                                color: Colors.black,
                                offset: Offset(0.9, 0.9),
                              ),
                            ]))
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),


            ListTile(
              leading: Icon(Icons.home,color: Colors.purple), title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.purple,), title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts,color: Colors.purple), title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline,color: Colors.purple,), title: Text("Resources"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 300,width:double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Text('This app was developed by Ghofran Atheer & Haneen Saad and supervised by ِA.L ِZainab Khaldoon',
                          maxLines: 5,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            color: Colors.black87,
                              fontSize: 16.0,
                          ),
                            textAlign: TextAlign.center,

                        ),
                      ),
                      ],
                  )
                ],
              ),
            ),

          ],

        ),

      ),


    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: (){Get.to(QuizScreen());},
        child: Container(child: Text('Quiz')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Column(

              children: [
                SizedBox(height: 6,),

                SizedBox(
                  height: 1,
                ),


                Divider(color: Colors.purple),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      "functions","loops","data types","install","oop","lists"
                    ].map((e) => MyFilters(text: e)).toList(),
                  ),
                ),
                SizedBox(height: 5,),
                Expanded(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: ItemsData.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap:(){onItemTab(index);},
                      child: XGridItem(
                        itemData: ItemsData[index],
                      ),
                    ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    physics: BouncingScrollPhysics(),
                  ),


                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  onItemTab(int index) {

    Get.to(PdfViewScreen(lessonIndex: index,));

  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      // child: Image.network(imageData.imageUrl, fit: BoxFit.cover),
      child: Image.asset(imageData.imageName,fit: BoxFit.cover,),
    );
  }
}

class XGridItem extends StatelessWidget {
  const XGridItem({Key key,  this.itemData}) : super(key: key);
  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: itemData['width'], height: itemData['height'],
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: itemData['color'],
      ),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Image.asset(itemData['pythonLogo'],width: 40,height: 40,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(itemData['text1'],style: TextStyle(
                  fontSize: 26,
                  color: itemData['text1Color'],
                  shadows: [
                    Shadow(
                      blurRadius: 1.0,
                      color: Colors.black,
                      offset: Offset(0.8, 0.8),
                    ),
                  ],
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
