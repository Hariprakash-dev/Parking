import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            padding: const EdgeInsets.all(12),
            height: 130,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow[100],
                            border: Border.all(color: Colors.black)),
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text(
                      'Profile',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    )
                  ],
                ),
              ],
            ),
          )),
      body: Column(
        
       
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 12,right: 12),
            child: Container(
              
              height: 550,
              width: 390,
              decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 20)]
              ),
              child: Column(
                children:    const [
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     CircleAvatar(radius: 80,),
                     
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Change Profile Picture',style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 16),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      ListTile(leading:CircleAvatar(radius: 15,backgroundColor:Colors.blueGrey,child: Icon(Icons.person,) ,),
                      title: Text('Today income',style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 16),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black12,),),
                     
                      ListTile(leading: CircleAvatar(radius: 15,backgroundColor:Colors.blueGrey,child: Icon(Icons.help,) ,),
                      title: Text('Help & Support',style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 16),),
                      subtitle: Text('Get help from our 24×7 Customer Service',style: TextStyle(fontSize: 10),),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black12,),)
                    ],
                  ),
                  SizedBox(height:80,),
                  Divider(color: Colors.black12,),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.login_sharp,color: Colors.red,),
                      SizedBox(width: 12,),
                      Text('Logout',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),)
                    ],
                  )
                  
                 
                ],

                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
