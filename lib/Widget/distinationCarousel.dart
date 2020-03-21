import 'package:flutter/material.dart';
import 'package:place/models/distination.dart';

import 'distinationScreen.dart';

class DistinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top Distination',
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
              Destination destination = destinations[index];
              return Container(
                margin: EdgeInsets.all(10),
                width: 210,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom:20.0,
                      child: Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${destination.activities.length} activities'),
                              Text(destination.discription),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DestinationScreen(
                              destination : destination,
                            ),
                          ),
                      ),

                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0,2.0),
                            blurRadius: 6.0,
                          ),],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag:destination.imageUrl,
                              child: ClipRRect(
                                borderRadius:BorderRadius.circular(15),
                                child: Image(
                                  height: 180.0,
                                  width: 180.0,
                                  image: AssetImage(
                                      destination.imageUrl
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(destination.city,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                                  Text(destination.country,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                                ],
                              ),
                            )
                          ],
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
