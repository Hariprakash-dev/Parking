

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parking/dummyscrren.dart';
import 'package:parking/screens/checkoutscreen.dart';
import 'package:parking/screens/profilescreen.dart';
import 'package:parking/screens/welcomescreen.dart';
import 'screens/loginscreen.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>MyApp(),
    ),
     GoRoute(
      path: '/login',
      builder: (context, state) => Loginscreen(),
    ),

     GoRoute(
      path: '/registry',
      builder: (context, state) => Registerscreen(),
    ),
      GoRoute(
      path: '/checkout',
      builder: (context, state) => Checkoutscreen(),
    ),
     GoRoute(
      path: '/profile',
      builder: (context, state) => Profilescreen(),
    ),
  ],
);

void main(List<String> args) {
  runApp( MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerConfig: _router,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      backgroundColor: Colors.white,
      body: 
       
         Column(
           children:[ 
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://t4.ftcdn.net/jpg/00/71/97/79/360_F_71977999_MriSR1utSIYu8hgAzvFKlsTXhi7xwCZ8.jpg'),
                            fit: BoxFit.fill)),
                    height: 250,
                    width: 500,
                  ),
                ),
                const SizedBox(height: 10,),
                LoginForm(),
              
           ],
         ),
    );
  }
}


