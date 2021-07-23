import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:python/custome/BorderBox.dart';
import 'package:python/db/ImageData.dart';
import 'package:python/screens/LandingScreen.dart';
import 'package:python/screens/PdfViewScreen.dart';
import '../Items.dart';
import 'package:get/get.dart';

class PinterestGrid extends StatelessWidget {
  const PinterestGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Column(
              
              children: [
                SizedBox(height: 6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderBox(
                      child: Icon(
                        Icons.menu,
                        color: Colors.purple,
                      ),
                      height: 40,
                      width: 40,
                    ),
                    BorderBox(
                      child: Icon(
                        Icons.settings,
                        color: Colors.purple,
                      ),
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 1,
                ),

                Text("Learn Python",
                    style: TextStyle(color: Colors.purple, fontSize: 30,
                      shadows: [
                        Shadow(
                          blurRadius: 0.5,
                          color: Colors.black,
                          offset: Offset(0.9, 0.9),
                        ),
                      ],)),
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
