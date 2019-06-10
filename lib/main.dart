import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eudeka - OSG4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Eudeka - OSG4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  List<Map<String, dynamic>> users = [
  { "Title"   : "Godzilla: King of the Monsters (2019)", 
    "Age"    : "13+",
    "Duration"  : "2h 12min",
    "Genre"   : "Action, Adventure, Fantasy ",
    "Rating"  : "6,7",
    "Voters"  : "35.643",
    "Description" : "https://m.media-amazon.com/images/M/MV5BOGFjYWNkMTMtMTg1ZC00Y2I4LTg0ZTYtN2ZlMzI4MGQwNzg4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg",
    },
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

var content = Card(
  margin: EdgeInsets.all(15),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  elevation: 5,
  child: Container(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.network(
                'https://m.media-amazon.com/images/M/MV5BOGFjYWNkMTMtMTg1ZC00Y2I4LTg0ZTYtN2ZlMzI4MGQwNzg4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg',
                height: 200,
                fit: BoxFit.cover,
              ),
            )),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        "Godzilla: King of the Monsters (2019)",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          "13+",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "2h 11min",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                      ],
                    ),
                    Text(
                      "Action, Adventure, Fantasy",
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        verticalDirection: VerticalDirection.up,
                        children: <Widget>[
                          Text(
                            "8,3",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "/10",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w200),
                          )
                        ],
                      ),
                      Text("185")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
              "The crypto-zoological agency Monarch faces off against a battery of god-sized monsters, including the mighty Godzilla, who collides with Mothra, Rodan, and his ultimate nemesis, the three-headed King Ghidorah."),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "See More",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ),
);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[content, content, content, content, content],
          ),
        ));
  }
}
