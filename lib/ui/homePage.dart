import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:place/Widget/distinationCarousel.dart';
import 'package:place/Widget/hotel_carasol.dart';
import 'package:place/Widget/profile.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _listIndex = 0;
  int _currentTab = 0;

  List<IconData> _list = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];
  Widget _buildIcons (int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _listIndex = index;
        });
        print(index);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _listIndex == index ? Color(0XFFBECFE3) : Color(0xffe7ebee),

          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _list[index],
          size: 20,
          color: _listIndex == index ? Theme.of(context).primaryColor : Color(0XFFB4C1C4),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 120 ),
              child: Text('What would you like to find ?',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _list
                  .asMap()
                  .entries
                  .map((MapEntry map)=>_buildIcons(map.key))
                  .toList()
            ),
            SizedBox(height: 20.0,),
            DistinationCarousel(),
            SizedBox(height: 20.0,),
            hotelCaresol(),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            size: 30,),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              size: 30,),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()),);
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://scontent.fdac89-1.fna.fbcdn.net/v/t1.0-0/p640x640/53898179_2050618665238128_467341709374652416_o.jpg?_nc_cat=105&_nc_sid=7aed08&_nc_ohc=LE9u5OQI1VYAX9yq2PG&_nc_ht=scontent.fdac89-1.fna&_nc_tp=6&oh=13b1e9f7c8c8daaeb6a769f04d972845&oe=5E994DD4'
                ),
              ),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}