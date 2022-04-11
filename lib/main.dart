import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tempatwisata/main_screen.dart';
import 'package:tempatwisata/model/tourist_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata-Wisata',
      theme: ThemeData(),
      //menghilangkan debug
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class DetailScreeen extends StatelessWidget {

  late final TouristPlace placedetail;
  DetailScreeen({required this.placedetail});
  // var fontOxygen = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //mengikuti besaran status bar di setiap device
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(placedetail.imageAsset),
                  SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                  icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white
                                  ),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }),
                            ),
                            FavoriteButton(),
                          ],
                        ),
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(placedetail.name, style: TextStyle(fontFamily: 'Staatliches', fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8),
                        Text(placedetail.openDays, style: TextStyle(fontFamily: 'Staatliches'),),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(height: 8),
                        Text(placedetail.openTime),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.money_rounded),
                        SizedBox(height: 8),
                        Text(placedetail.ticketPrice),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(40),
                child: Text(
                    placedetail.description,
                  textAlign: TextAlign.center
                ),
              ),
              Container(
                height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: placedetail.imageUrls.map((urlgambar){
                      return Padding(padding: EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(urlgambar),

                      ),
                      );
                    }).toList()
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
         isFavorite ? Icons.favorite : Icons.favorite_border, color: Colors.red),
      onPressed: (){
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

// Navigator.pop(context, MaterialPageRoute(builder: (context){
// return MainScreen();
// }));

