import 'activity.dart';

class Destination{
  String imageUrl;
  String city;
  String country;
  String discription;
  List<Activity>activities;

  Destination({this.imageUrl,this.city,this.country,this.discription,this.activities});

}

List<Activity>activities = [
  Activity(
    imageUrl: 'images/photo.jpg',
    name: 'Saint- Martin',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 2000,
    rating: 5,
  ),
  Activity(
    imageUrl: 'images/photo1.jpg',
    name: 'Coxes Bazar',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 2000,
    rating: 5,
  ),
  Activity(
    imageUrl: 'images/photo2.jpg',
    name: 'Canada',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 2000,
    rating: 5,
  ),
  Activity(
    imageUrl: 'images/photo3.jpg',
    name: 'Saint- Martin',
    type: 'Saint martin tour',
    startTimes: ['9:00am','11:00am'],
    price: 2000,
    rating: 5,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'images/photo.jpg',
    city: 'Dhaka',
    country: 'Bangladesh',
    discription: 'Beutifull Netural View in This Place',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/photo1.jpg',
    city: 'Panchagarh',
    country: 'Canada',
    discription: 'Canada is Beutifull Netural View in This Place',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/photo5.png',
    city: 'CoxesBazar',
    country: 'Bangladesh',
    discription: 'Beutifull Netural View in This Place',
    activities: activities,
  ),
  Destination(
    imageUrl: 'images/photo2.jpg',
    city: 'Dhaka',
    country: 'Bangladesh',
    discription: 'Beutifull Netural View in This Place',
    activities: activities,
  ),
];