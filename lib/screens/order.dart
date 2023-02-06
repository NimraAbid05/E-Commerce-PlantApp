import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/utils/colors.dart';

import '../utils/text.dart';

class OrderReceived extends StatefulWidget {
  const OrderReceived({super.key});

  @override
  State<OrderReceived> createState() => _OrderReceivedState();
}

class _OrderReceivedState extends State<OrderReceived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:200.0),
                child: Image.asset("images/circle2.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30,left:150.0),
                child: Image.asset("images/circle.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:400,left:90.0),
                child: Image.asset("images/Logo.png",width: 200,height: 100,),
              ),
              Padding(
                padding: const EdgeInsets.only(left:140,top:200.0),
                child: Text("Order",style: TextStyle(color: ColorsConstraint.themecolor,fontSize: 40),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:120,top:250.0),
                child: Text("Received",style: TextStyle(color: ColorsConstraint.themecolor,fontSize: 40),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:130,top:300.0),
                child: Text("Order ID : #2345566",style: TextStyle(color: ColorsConstraint.passcolor,fontSize: 15),),
              ),

            ],
            
          ),
         SizedBox(
          height: 20,
         ),
            SizedBox(
            width: 300,
            height: 40,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: ColorsConstraint.themecolor,
                  
                   // Background color
                ),
                child: Text(TextConstraint.order,style: TextStyle(fontSize: 30),)),
          )
        ],
        
      ),


    );
  }
}