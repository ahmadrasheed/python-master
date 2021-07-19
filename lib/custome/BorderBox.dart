
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  const BorderBox({Key key,@required this.child, this.padding, this.height, this.width}) : super(key: key);
  final Widget child;
  final EdgeInsets padding;
  final double height,width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,height: this.height,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color:Colors.black26.withAlpha(20),width: 2),
      ),
      padding: padding?? const EdgeInsets.all(4.0),
      child: Center(child: child,),
    );
  }
}

class MyFilters extends StatelessWidget {
  const MyFilters({Key key,@required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {

    return Container(

      decoration:BoxDecoration(

        color: Colors.purple,
        borderRadius:BorderRadius.circular(25),

      ),
      child: Text(text,style: TextStyle(
        color: Colors.white,
      ),),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      margin: EdgeInsets.only(right: 5),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({Key key,@required this.itemData}) : super(key: key);
  final dynamic itemData;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData=Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(itemData["image"])),
              Positioned(
                  top:15,right: 15,
                  child: BorderBox(child: Icon(Icons.favorite_border),)),

            ],
          ),
          SizedBox(
            height:20,
          ),
          Text(itemData["address"],style: themeData.textTheme.headline6 ),
          Text(" Price: \$ ${itemData["amount"]}",style: themeData.textTheme.bodyText1),
        ],
      ),
      
    );
  }
}


