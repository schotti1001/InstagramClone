import 'package:InstagramClone/feed_data.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.network(
            "https://fontmeme.com/images/instagram-new-logo.png",
            width: 120,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_a_photo_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.grey[800],
          unselectedItemColor: Colors.grey[400],
          showSelectedLabels: false,
          onTap: (_) {},
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow_outlined,
                size: 30,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_outlined,
                size: 30,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 13,
                backgroundImage: Image.network(
                  feedData[0].profilePicture,
                ).image,
              ),
              label: "Search",
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: feedData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(left: 5, top: 8, right: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 60,
                            child: Stack(children: [
                              CircleAvatar(
                                radius: 29,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.red,
                                        Colors.orange[300],
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: Image.network(
                                            feedData[index].profilePicture)
                                        .image),
                              ),
                              if (index == 0)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 9, right: 5),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.blue,
                                      child: Icon(
                                        Icons.add,
                                        size: 10.0,
                                      ),
                                    ),
                                  ),
                                )
                            ]),
                          ),
                          Text(
                            feedData[index].profileName,
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: feedData.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    FeedEntry(feedData[index]),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class FeedEntry extends StatelessWidget {
  final FeedData data;
  FeedEntry(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: Image.network(data.profilePicture).image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data.profileName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.7,
          child: Image.network(
            data.pictureUrl,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.comment_rounded),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward_outlined),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.bookmark_border_outlined),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                data.likes.toString() + " Aufrufe",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  new TextSpan(
                      text: data.profileName + " ",
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: data.picutreText,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
