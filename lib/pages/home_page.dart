import 'package:flutter/material.dart';
import 'package:pdpui1/constants.dart';

import '../reusables.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.green[900]!,
              Colors.green[500]!,
              Colors.green[400]!,
              //in order to fix the ?Color error, i used ! since i am sure that the value wont be null
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80.0,
            ),
            //login part
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Login', style: login),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Welcome Back', style: welcoming),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60.0,
                        ),
                        //email and password route
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, 0.7),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              //email field.
                              ReusableTextField(
                                myhint: 'Email',
                              ),
                              ReusableTextField(
                                myhint: 'Password',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40.0,),
                        //login
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50.0),
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green[800],
                          ),
                          child: const Center(
                            child: Text('Login', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        const SizedBox(height: 30.0,),
                        //login with SNS
                        const Text('Login with SNS', style: sns,),
                        const SizedBox(height: 30.0,),
                        //facecbook and github
                        Row(
                          children: [
                            ReusableFaceAndGit(whatSocielMedia: 'Facebook', whichColor: Colors.blue,),
                            ReusableFaceAndGit(whatSocielMedia: 'GitHub', whichColor: Colors.black,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

