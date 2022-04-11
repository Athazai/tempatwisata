import 'package:flutter/cupertino.dart';

class TouristPlace {

  late String name;
  late String location;
  late String description;
  late String openDays;
  late String openTime;
  late String ticketPrice;
  late String imageAsset;

  late List <String> imageUrls;


  TouristPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

  var touristPlaceList = [
    TouristPlace(
        name: "Pantai Kuta",
        location: "Kuta, Bali, Indonesia",
        description: "Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta, sebelah selatan Kota Denpasar, Bali, Indonesia. Daerah ini merupakan sebuah tujuan wisata turis mancanegara dan telah menjadi objek wisata andalan Pulau Bali sejak awal tahun 1970-an. ",
        openDays: "Everyday",
        openTime: "07:00",
        ticketPrice: "600k",
        imageAsset: "gambar/bali.png",
        imageUrls: [
          'https://images.unsplash.com/photo-1560103104-4623c14a473b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1558005530-a7958896ec60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFsaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1517322048670-4fba75cbbb62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1574079899277-78c0454deba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1544959068-7c75914bf21e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
        ]
    ),
    TouristPlace(
        name: "Gunung",
        location: "Bromo",
        description: "Indah",
        openDays: "Monday - Thursday",
        openTime: "08:00",
        ticketPrice: "100k - 600k",
        imageAsset: "gambar/bali.png",
        imageUrls: [
          'https://images.unsplash.com/photo-1560103104-4623c14a473b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1558005530-a7958896ec60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFsaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1517322048670-4fba75cbbb62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1574079899277-78c0454deba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1544959068-7c75914bf21e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
        ]
    ),
    TouristPlace(
        name: "Jembatan",
        location: "Bali",
        description: "Indah",
        openDays: "Everyday",
        openTime: "07:30",
        ticketPrice: "100k - 300k",
        imageAsset: "gambar/bali.png",
        imageUrls: [
          'https://images.unsplash.com/photo-1560103104-4623c14a473b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1558005530-a7958896ec60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFsaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1517322048670-4fba75cbbb62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1574079899277-78c0454deba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1544959068-7c75914bf21e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
        ]
    ),
    TouristPlace(
        name: "Taman",
        location: "Bali",
        description: "Indah",
        openDays: "Only Weekdays",
        openTime: "06:00",
        ticketPrice: "50k - 900k",
        imageAsset: "gambar/bali.png",
        imageUrls: [
          'https://images.unsplash.com/photo-1560103104-4623c14a473b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1558005530-a7958896ec60?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFsaXxlbnwwfDB8MHx8&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1517322048670-4fba75cbbb62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1574079899277-78c0454deba7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
          'https://images.unsplash.com/photo-1544959068-7c75914bf21e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGJhbGl8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
        ]
    )
  ];
