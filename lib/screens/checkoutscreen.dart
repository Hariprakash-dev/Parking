import 'package:flutter/material.dart';

class Checkoutscreen extends StatefulWidget {
  const Checkoutscreen({super.key});

  @override
  State<Checkoutscreen> createState() => _CheckoutscreenState();
}

class _CheckoutscreenState extends State<Checkoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      width: 100,
                    ),
                    const Text(
                      'Check Out',
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
            padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
            child: Container(
              padding: EdgeInsets.all(18),
              height: 500,
              width: 390,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 20)
                  ]),
              child: Form(
                child: Column(
                  children: [
                
                    Row(
                      children: const [
                       
                        Text(
                          'Enter Vechicle Number',
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                     SizedBox(height: 5,),
                    Row(
                      
                      children: [
                      
                        Expanded(
                          child: TextFormField(
                           
                            decoration: const InputDecoration(
                              hintText: 'TN81Z8786',hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text('Check in Date', style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),),
                            SizedBox(width: 86,),
                            Text('Check in Time', style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),)
                        
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              // height: 40,
                              width: 150,
                              child: TextFormField(
                                 decoration: const InputDecoration(
                                    hintText: '09Aug2024',hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                                  prefixIcon: Icon(Icons.calendar_month,color: Colors.black38,),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                    ),
                              ),
                            ),
                            SizedBox(width: 25,),

                            SizedBox(
                              // height: 40,
                              width: 155,
                              child: TextFormField(
                                 decoration: const InputDecoration(
                                    hintText: '07-05-30PM',hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                                  prefixIcon: Icon(Icons.schedule,color: Colors.black38),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                    ),
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 10,),



                        Row(
                          children: const [
                            Text('Check Out Date', style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),),
                            SizedBox(width: 75,),
                            Text('Check Out Time', style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),)
                        
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              // height: 40,
                              width: 150,
                              child: TextFormField(
                                 decoration: const InputDecoration(
                                  hintText: '09Aug2024',hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                                  prefixIcon: Icon(Icons.calendar_month,color: Colors.black38),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                    ),
                              ),
                            ),
                            SizedBox(width: 25,),

                            SizedBox(
                              // height: 40,
                              width: 155,
                              child: TextFormField(
                                 decoration: const InputDecoration(
                                  
                                  hintText: '09-08-20PM',hintStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                                  prefixIcon: Icon(Icons.schedule,color: Colors.black38),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                    ),
                              ),
                            ),

                          ],
                        ),


                        SizedBox(height: 10,),



                        Row(
                          children: const [
                            Text('Paid Amount', style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),),
                            SizedBox(width: 91,),
                            Text('Amount to be Paid', style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),)
                        
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(
                              // height: 40,
                              width: 150,
                              child: TextFormField(
                                 decoration: const InputDecoration(
                                  hintText: 'RS 10.00',hintStyle: TextStyle(
                                    decoration: TextDecoration.underline,decorationColor: Colors.blue,decorationThickness: 8,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500),
                                  prefixIcon: Icon(Icons.wallet,color: Colors.black38),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                    ),
                              ),
                            ),
                            SizedBox(width: 25,),

                            SizedBox(
                              // height: 40,
                              width: 155,
                              child: TextFormField(
                              
                                 decoration: const InputDecoration(
                                   hintText: 'RS 20.00',hintStyle: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500),
                                   prefixIcon: Icon(Icons.wallet,color: Colors.red),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                      )
                                    ),
                              ),
                            ),
                            

                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                children: [
                  TextButton(
                     onPressed: null,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                            child: Text(
                          'Check Out',
                          style: TextStyle(color: Colors.white),
                        )),
                      ))
                ],
              )



                        
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
