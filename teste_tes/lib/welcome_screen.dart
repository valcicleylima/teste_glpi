import 'package:teste_tes/login_screen.dart';
import 'package:flutter/material.dart';

import 'contants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/barber.png")
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 40,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "TadalaDev\n",
                        style: Theme.of(context).textTheme.headline4
                      ),
                      TextSpan(
                        text: "Bem-vindo ao GLPI movel",
                        style: Theme.of(context).textTheme.headline5
                      ),
                    ]
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context){
                            return LoginScreen();
                          }
                        )
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kPrimaryColor
                      ),
                      child: Row(
                        children: [
                          Text(
                            "COMEÇAR",
                            style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), 
        ],
      ),
    );
  }
}