import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          elevation: 0,
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: 330.0,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(0),
            title: Container(
                //alignment:Alignment.bottomCenter,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(25))),
                child: const Padding(
                    padding: EdgeInsets.only(
                        left: 30, right: 15, top: 15, bottom: 15),
                    child: Text(
                      'Travel in the mountains',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ))),
            background: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Image(
                    image: AssetImage('assets/images/trip_image.png'),
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
          elevation: 0,
          child: Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Color(0xFF6266EC),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(
              children: [
                const Spacer(),
                const Text('\$89',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    )),
                const Spacer(),
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor : Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Book now',
                         style : TextStyle(fontSize: 30, color: Colors.white),

                      ),
                    )),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
