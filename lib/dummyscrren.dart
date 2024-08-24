import 'package:flutter/material.dart';


class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 50,
            ),
            height: 150,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Registry',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Vechicle Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          SizedBox(
            height: 50,
            child: Expanded(
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorColor: Colors.black,
                    tabs: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registerscreen()));
                        },
                        child: Tab(
                          child: Text(
                            'Today Check in',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text('15 Day Before',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text('30 Day Before',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                                color: Colors.black)),
                      ),
                    ]),
                  
              ),
            ),
          ),
          Column(
            children: [
              ListView.builder(
                  padding: EdgeInsets.all(12),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.indigo[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Column(
                          children: const [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bike Number',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  'Check in Date ',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  'Amount',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            Divider(
                              height: 30,
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'TN81Z8786',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                                Text('07-Aug-2024',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900)),
                                Text('Rs.10.00',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900)),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                
            ],
          ),
     
        ],
      ),
    );
  }
}
