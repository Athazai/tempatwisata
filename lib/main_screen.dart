import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tempatwisata/detail_screen.dart';
import 'package:tempatwisata/main.dart';
import 'package:tempatwisata/model/tourist_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata-Wisata'),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        final TouristPlace place = touristPlaceList[index];
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreeen(placedetail: place,);
            }));
          },
          child: Card(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset(place.imageAsset, width: 200,),
                ),
                Expanded(
                  child: Padding(padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          place.name
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(place.location)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }, itemCount: touristPlaceList.length,),
    );
  }
}
