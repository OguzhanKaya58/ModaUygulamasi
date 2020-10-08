import 'package:flutter/material.dart';
import 'package:moda_uygulamasi/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatefulWidget {
  @override
  _ModaAppState createState() => _ModaAppState();
}

class _ModaAppState extends State<ModaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(controller: tabController, tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.blueGrey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.blueGrey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.blueGrey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.blueGrey,
              size: 22,
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.blueGrey,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Container(
              // color: Colors.blue.shade400,
              height: 140,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: [
                  ListeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  ListeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  ListeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                  SizedBox(
                    width: 30,
                  ),
                  ListeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  ListeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  SizedBox(
                    width: 30,
                  ),
                  ListeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 4,
                // color: Colors.blue.shade300,
                child: Container(
                  height: 480,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("assets/model1.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "34 Mins Ago",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 10,
                                      color: Colors.blueGrey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.blueGrey,
                            size: 22,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "This official website features a ribbed knit zipper jacket that is moders and stylish. It looks temparament and"
                        "is recomemmend to friends.",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Montserrat",
                            color: Colors.blueGrey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: 'assets/modelgrid1.jpeg'),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/modelgrid1.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: 'assets/modelgrid2.jpeg'),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'assets/modelgrid2.jpeg',
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: 'assets/modelgrid3.jpeg'),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid3.jpeg",
                                  child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                "# Lois vuitton",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Colors.brown),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                "# Chloe",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Colors.brown),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: Colors.blueGrey,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.4),
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "1.7k",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.brown.withOpacity(0.4),
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.4),
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "325",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.brown.withOpacity(0.4),
                                fontSize: 18),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 225,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red.shade600,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2.3k",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.brown.withOpacity(0.4),
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListeElemani(String imagePeth, String logoPeth) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                      image: AssetImage(imagePeth), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPeth), fit: BoxFit.contain)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Montserrat", fontSize: 14),
            ),
          ),
        )
      ],
    );
  }
}
