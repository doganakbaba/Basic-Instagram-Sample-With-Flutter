import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, left: 8, bottom: 8, right: 20),
                        child: Icon(
                          Icons.send,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              StoryWidget(),
                              StoryWidget2(),
                              StoryWidget3(),
                              StoryWidget(),
                              StoryWidget2(),
                              StoryWidget3(),
                              StoryWidget(),
                              StoryWidget2(),
                              StoryWidget3(),
                            ],
                          ),
                        ),
                        PostItem(),
                      ],
                    ),
                  ),
                  color: Colors.white)),
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.home, size: 28, color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.search, size: 28, color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.smart_display,
                      size: 28, color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite, size: 28, color: Colors.black87),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.person, size: 28, color: Colors.black87),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  Container PostItem() => Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/jax.jpg",
                      ),
                      radius: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jax_teller",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        Text("Charming/USA",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Image.asset("assets/images/post1.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border, color: Colors.black87),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.comment_bank_outlined, color: Colors.black87),
                    ],
                  ),
                  Icon(Icons.flag_circle_outlined, color: Colors.black87),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Opie_winston",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 12,
                ),
              ),
              
              SizedBox(width: 3),
              Text("Nice Ride Dude!,You are my brother..Mr.President",
                  maxLines: 5,
                  style: TextStyle(
                    color: Colors.black54,
                     fontSize: 10
                     ),
                     ),
            ],
          ),
        ]),
      );

  Widget StoryWidget() {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/jax.jpg"),
            radius: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Jax_teller",
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

Widget StoryWidget2() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/opie.jpg"),
          radius: 40,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Opie_winston",
          style: TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}

Widget StoryWidget3() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/chibs.jpeg"),
          radius: 40,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Chibs_telford",
          style: TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}
