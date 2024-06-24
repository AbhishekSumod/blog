import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'detail_page1.dart';
import 'login_page.dart';
import 'post_page.dart';

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  // Date Widget
  Widget getDate() => Container(
        alignment: Alignment.topLeft,
        child: Text(
          "TUESDAY 25 JUNE",
          style:
              TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.w700),
        ),
      );

  // Profile Picture Widget
  Widget getImage() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Blog",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 40, color: Colors.white),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.login),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
        ],
      );

  // List Item
  Widget getListItem(coverImage, title, author, time, authorImage) => Container(
        margin: EdgeInsets.only(right: 30),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: NetworkImage(coverImage), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.black,
                        size: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(authorImage),
                    radius: 20,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      author,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(width: 4),
                        Text(
                          time,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );

  // Popular Widget
  Widget popularWidget(title, subtitle, time, like, image) => Container(
        // padding: EdgeInsets.only(bottom: 10),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 4, bottom: 4),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(image: NetworkImage(image)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.deepOrange, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 17),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.access_time,
                          size: 18,
                        ),
                        onPressed: null,
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(padding: EdgeInsets.only(left: 12)),
                      Icon(
                        Icons.thumb_up,
                        size: 18,
                        color: Colors.black,
                      ),
                      Padding(padding: EdgeInsets.only(left: 12)),
                      Text(
                        like,
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Date Widget
          getDate(),
          SizedBox(height: 2),
          getImage(),
          SizedBox(height: 30),
          Container(
            width: 350,
            height: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    hoverColor: Colors.black,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: getListItem(
                      "https://www.sdxcentral.com/wp-content/uploads/2023/11/AIRPA-e1701103268244.jpg",
                      "The Future of AI",
                      "Amruthesh P",
                      "44 sec ago",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBvqzyx_zoi6q2c0Gd1XnE7wysD9PGOLe3-A&s",
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.black,
                    enableFeedback: true,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage1()));
                    },
                    child: getListItem(
                      "https://static.vecteezy.com/system/resources/previews/002/136/625/non_2x/world-health-day-illustration-concept-with-characters-people-are-exercising-yoga-living-healthy-vector.jpg",
                      "HEALTH & WELLNESS",
                      "Sanpras Santhosh",
                      "7 minutes ago",
                      "https://media.licdn.com/dms/image/D5603AQHBcpj4RCfkbw/profile-displayphoto-shrink_800_800/0/1713510333010?e=1724889600&v=beta&t=KZ6PQtIW1gVECTNRHPLZyNobnt0wW06y3O5knUOaOHE",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Popular",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Text(
                "Show all",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepOrange),
              ),
            ],
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: popularWidget(
              "DESIGN",
              "Most Awaited - \nFigma Launches Plugin",
              "14 sec ago",
              "786",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIQD2lOj-t5HcuzLqYGOn-mrTHEgRiRILEphgYuXegZe-dQqlMiA",
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {},
            child: popularWidget(
              "TECH",
              "Netflix Tests Using Activity Data",
              "14 sec ago",
              "120",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVteQvAa_awP21V_ClaLK89W1kdtSltiedJmRsjTcE-e9Pn9moDQ",
            ),
          ),
        ],
      ),
    );
  }
}
