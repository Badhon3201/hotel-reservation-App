import 'package:flutter/material.dart';
import 'package:place/models/distination.dart';
import 'package:place/models/hotel_list.dart';
class hotelCaresol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Exclusive Hotel',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5
                ),
              ),
              Text('See All',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: 1.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index){
              Hotel hotel = hotels[index];
              return Container(
                margin: EdgeInsets.all(10),
                width: 280,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom:20.0,
                      child: Container(
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('${hotel.name}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(height: 2.0,),
                              Text('${hotel.adress}',style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 2.0,),
                              Text('${hotel.price}',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0,2.0),
                          blurRadius: 6.0,
                        ),],
                      ),
                      child:
                          ClipRRect(
                            borderRadius:BorderRadius.circular(15),
                            child: Image(
                              height: 180.0,
                              width: 250.0,
                              image: AssetImage(
                                  hotel.imageUrl
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
