
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackviolet/home_page_map.dart';
import 'sleeping_sounds.dart';
import 'google_maps.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Sleeping Sounds",
      subtitle: ("Listen to these sleeping sounds"),
      event: ("and hues to help you fall asleep"),
      img: "assets/sleeping_sounds.png");



  Items item2 = new Items(
    title: "Journal",
    subtitle: "Write down your thoughts to help",
    event: "you feel more at ease",
    img: "assets/journal2.png",
  );
  Items item3 = new Items(
    title: "Resources",
    subtitle: "Resources for mental health,",
    event: "sleep struggles, and more",
    img: "assets/map.png",
  );
  Items item4 = new Items(
    title: "Games",
    subtitle: "Games and fun activities to",
    event: "help you fall asleep",
    img: "assets/festival.png",
  );
  Items item5 = new Items(
    title: "Planning",
    subtitle: "A space to write down tasks",
    event: "to complete tomorrow",
    img: "assets/todo.png",
  );
  Items item6 = new Items(
    title: "Profile",
    subtitle: "Edit to your liking for",
    event: " a personalized experience",
    img: "assets/profile2.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MapPage(),
                  ),
                  );
                },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 60,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
          ],
              ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  var location;
  Items({this.title, this.subtitle, this.event, this.img,this.location});
}