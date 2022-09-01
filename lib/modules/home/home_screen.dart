import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //controling the shadow under the app bar it takes double
        elevation:20,
        // controling the action icon control its color and size
        actionsIconTheme: IconThemeData(
          color: Colors.pink,
          size: 40,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: (){
            print("Menu is clicked");
          },
        ),
        title: Text("First App"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notification_important,
              ),
              onPressed:OnNotficution,
          ),
          IconButton(
              icon:Icon(
                  Icons.search
              ),
              onPressed:(){
                {
                  print("Search is clicked");
                }
              },
          )


        ],
        //put the title in the centter
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 0.8,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50,horizontal: 100),
            child: Container(
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),

              ),
              // to cut the borders and make it circular
              clipBehavior:Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter ,
                children: [
                  Image(
                    width: 200,
                    height: 200,
                    image: NetworkImage('https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg'),
                    // to make it fit the screen
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.6),
                    width: double.infinity,
                    padding: EdgeInsetsDirectional.only(top :10,bottom: 10),
                    child: Text(
                        'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );










  }
  //when notifcution icon button clicked
  void OnNotficution() {
    print("notifcution clicked");
  }
}
