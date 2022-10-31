import 'package:flutter/material.dart';

class Listview_with_builder extends StatelessWidget {
  List<String> a = [
    'Avengers',
    "Dora ",
    "UglyDolls",
    "Captain Marvel",
    "John Wick",
    'Us',
    'Triple Threat',
    'WatchDogs'
  ];
  List<int> color = [900, 800, 700, 600, 500, 400, 300, 200,];
  List<String> yr = [
    "2019",
    "2020",
    "2021",
    "2021",
    "2022",
    '2018',
    '2012',
    '2014'
  ];
  List<String> sub = [
    "Action, Thriller",
    "Adventure, Fantasy",
    "Comedy, Historical",
    "Crime, Horror",
    "Romance, Comedy",
    'Horror, Thriller',
    'Action, Thriller',
    'Sci-Fi, Action'
  ];
  List img = [
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png"),
    ("assets/images/clapperboard.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text("Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 27),
        child: ListView.builder(
            itemCount: a.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 75,
                width: 20,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.blue[color[index]],
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(),
                        child: Text(
                          a[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      leading: Image.asset(img[index]),
                      trailing: Text(
                        yr[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only( top: 6),
                        child: Text(
                          sub[index],
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    )),
              );
            }),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Listview_with_builder(),
  ));
}
