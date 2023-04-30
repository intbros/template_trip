import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          elevation: 0,
          pinned: true,
          snap: false,
          floating: false,
          expandedHeight: 140.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFE9EFFF),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'Hi, Sam!',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                            ),
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.add_alert,
                                  color: Color(0xFF6266EC),
                                )),
                          ],
                        ),
                        const Text(
                          'Let\'s discover a new adventure!',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ))),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: const Color(0xFFE9EFFF),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 40, top: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 40,
                    color: Color(0xFF6266EC),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/trip_image.png'))),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('Adventures nearby',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Next trip',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 3,
              (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: 80.0,
                    child: Center(
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: const Image(
                                image:
                                    AssetImage('assets/images/trip_image.png'),
                                fit: BoxFit.fill,
                              )),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child:
                                  Text('Provence, Italy', textScaleFactor: 2),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            );
          }),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            children: const [
              Spacer(),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.location_on,
                    size: 40,
                    color: Color(0xFF6266EC),
                  )),
              Spacer(),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.local_airport_outlined,
                    size: 40,
                    color: Color(0xFF6266EC),
                  )),
              Spacer(),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 40,
                    color: Color(0xFF6266EC),
                  )),
              Spacer(),
            ],
          )),
    );
  }
}
