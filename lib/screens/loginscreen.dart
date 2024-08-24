import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController userid = TextEditingController();
  TextEditingController passw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 550,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20), topEnd: Radius.circular(20)),
        ),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Text(
                      'Enter User ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: userid,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter User ID',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter a User Id';
                        // } else if (!RegExp(
                        //         r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                        //     .hasMatch(value)) {
                        //   return 'please enter a valid User Id';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Text(
                      'Enter Password',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: passw,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter Password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter a Password';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: hitFn,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        height: 40,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Center(
                            child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        )),
                      ))
                ],
              )
            ],
          ),
        ),
      ),

    );

  }
  bool hasErrors() {
    bool hasError = _formkey.currentState?.validate() ?? false;
    return !hasError;
  }

  void hitFn(){
    if(hasErrors()) return;
   context.go('/login');


  }
  
}
