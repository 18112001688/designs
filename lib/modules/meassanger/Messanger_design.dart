import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
   const Messanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        //like padding moves the title
        titleSpacing: 12,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls='),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 37,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {

                      },
                      icon: const Icon(
                        Icons.search,
                      ),
                    ),
                    const Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>  buildStorytop(),
                    separatorBuilder: (context,index)=>const SizedBox(width: 15,),
                    itemCount: 7,
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 500,
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>buildChatItem(),
                    separatorBuilder: (context,index)=>const SizedBox(height: 15),
                    itemCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // we made a function that returns a widget (Row()) because we will use it many times
  Widget buildChatItem() => Row(
    children: [
      const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqM1ut1Cg3fmJcQ9wY0mJkCfvumG5xbnUTwxBO8PWtzbQR4FvUK2bkqz77_etWlKyjkNI&usqp=CAU'),
        child: Padding(
          padding: EdgeInsetsDirectional.only(top: 40, start: 40),
          child: CircleAvatar(
            radius: 7,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Moustafa Mahmoud",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hello body how are you'
                        ' i was wondering if you could help me with somthing',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Text('02:50 pm'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
  Widget buildStorytop()=> Container(
    width: 60,
    child: Column(
      children: [
        CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.istockphoto.com/photos/portrait-of-smiling-young-man-on-the-street-picture-id1155093653?k=20&m=1155093653&s=170667a&w=0&h=5C9hYP1ZYALRUG8DqfZ8Bc7_WpFYbVBmXoB_iGxAzsg='),
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  top: 40, start: 40),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            radius: 30,
            backgroundColor: Colors.black54),
        Text(
          'Moustafa Mahmoud',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    ),
  );


  }
