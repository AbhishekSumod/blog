import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var isPressed = true;

  // Main Image
  Widget mainImageWidget(double height) => Container(
        height: height / 2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1521747116042-5a810fda9664?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 48, left: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: isPressed
                    ? Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 28,
                      )
                    : Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 28,
                      ),
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
              ),
            ],
          ),
        ),
      );

  // Bottom Sheet Content
  Widget bottomContent(double height, double width) => Container(
        margin: EdgeInsets.only(top: height / 20),
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Category
              Text(
                "TECHNOLOGY",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),

              SizedBox(height: 12),

              // Title
              Text(
                "The Future of AI: Opportunities and Challenges",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 12),

              // Like and Duration
              Row(
                children: <Widget>[
                  Icon(
                    Icons.access_time,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "5 min ago",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(width: 20),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                    size: 16,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "1.2K",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Profile Pic
              Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1595152772835-219674b2a8a3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Alex Johnson",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Paragraph
              Text(
                "Artificial Intelligence (AI) is rapidly evolving and has the potential to revolutionize various industries. From healthcare to finance, AI is poised to create significant advancements. However, there are also challenges that need to be addressed, including ethical considerations and the impact on employment.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16.5,
                  height: 1.4,
                ),
                textAlign: TextAlign.left,
                maxLines: 8,
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: <Widget>[
            // Main Image
            mainImageWidget(height),

            // Bottom Sheet
            Container(
              // Bottom Sheet Dimensions
              margin: EdgeInsets.only(top: height / 2.3),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: bottomContent(height, width),
            ),
          ],
        ),
      ),
    );
  }
}
