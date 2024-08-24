import 'package:flutter/material.dart';
import 'package:parking/screens/fifteenscreen.dart';
import 'package:parking/screens/thirtyscreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow[100],
                  border: Border.all(color: Colors.black),
                ),
                child: Icon(Icons.arrow_back),
              ),
            ),
            backgroundColor: Colors.yellow[100],
            title: Text(
              'Registry',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),centerTitle: true,
            bottom: TabBar(indicatorColor: Colors.black, tabs: const [
              Tab(
                child: Text(
                  'Today Check in',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  '15 Day Before',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  '30 Day Before',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.black),
                ),
              )
            ]),
          ),
          body: TabBarView(children: [
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
                          height: 90,
                          decoration: BoxDecoration(
                              color: Colors.indigo[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Bike Number',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black26),
                                    ),
                                    Text(
                                      'Check in Date ',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black26),
                                    ),
                                    Text(
                                      'Amount',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black26),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.black12,
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TN81Z8786',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    Text('07Aug2024',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                    Text('Rs.10.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
            Fifteenscreen(),
            Thirtyscreen()
          ]),
        ));
  }
}
