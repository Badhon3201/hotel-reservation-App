import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: IconButton(
                icon: Icon(Icons.arrow_back,size: 30,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Edit Profile',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      'https://scontent.fdac89-1.fna.fbcdn.net/v/t1.0-0/p640x640/53898179_2050618665238128_467341709374652416_o.jpg?_nc_cat=105&_nc_sid=7aed08&_nc_ohc=LE9u5OQI1VYAX9yq2PG&_nc_ht=scontent.fdac89-1.fna&_nc_tp=6&oh=13b1e9f7c8c8daaeb6a769f04d972845&oe=5E994DD4'
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 60,top: 60),
                    child: GestureDetector(
                      onTap: (){

                      },
                        child: Icon(
                          Icons.camera_enhance,
                          size: 40,
                        )
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('User Name',style: TextStyle(
                    fontSize: 20,color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Text("Azs Badhon",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Email',style: TextStyle(
                    fontSize: 20,color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Text("badhon9265@gmail.com",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Phone',style: TextStyle(
                    fontSize: 20,color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Text("01788071656",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Date of Birth',style: TextStyle(
                    fontSize: 20,color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Text("01-01-1996",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Address',style: TextStyle(
                    fontSize: 20,color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 20,),
                  Text("Mirpur-2, Dhaka",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
