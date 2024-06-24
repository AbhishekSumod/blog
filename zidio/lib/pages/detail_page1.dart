import 'package:flutter/material.dart';

class DetailPage1 extends StatefulWidget {
  @override
  _DetailPage1State createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1> {
  var isPressed = true;

  // Main Image
  Widget mainImageWidget(double height) => Container(
        height: height / 2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXveBMgYFiWqh5h00SpryTfPWdnyK0mOnWhw&s"),
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
                "HEALTH & WELLNESS",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.tealAccent,
                ),
              ),

              SizedBox(height: 12),

              // Title
              Text(
                "10 Tips for a Healthier Lifestyle",
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
                    "5 minutes ago",
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
                    "220",
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
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXveBMgYFiWqh5h00SpryTfPWdnyK0mOnWhw&s"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Jamie Lee",
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
                "Maintaining a healthy lifestyle can be simple with a few easy steps. Incorporate more fruits and vegetables into your diet, stay hydrated, exercise regularly, and ensure you get enough sleep. Remember, small changes can lead to significant improvements in your overall well-being.",
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
