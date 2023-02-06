import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/utils/colors.dart';
import 'package:my_app/utils/text.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConstraint.appbar,
        actions: [
          Expanded(
              child: Image.asset(
            "images/titlelogo.png",
          )),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: ColorsConstraint.icon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Icon(
              Icons.sort,
              color: ColorsConstraint.icon,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("images/SQUARE.png"),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(TextConstraint.air,
                    style: TextStyle(
                        fontSize: 20, color: ColorsConstraint.passcolor)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 10),
                child: Text(
                  "Watermelon",
                  style: TextStyle(
                      fontSize: 30, color: ColorsConstraint.passcolor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 10),
                child: Text("Peporomia",
                    style: TextStyle(
                        fontSize: 30, color: ColorsConstraint.passcolor)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160.0, left: 10),
                child: Text("PRICE",
                    style: TextStyle(
                        fontSize: 15, color: ColorsConstraint.passcolor)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 10),
                child: Text("RS 350",
                    style: TextStyle(
                        fontSize: 20,
                        color: ColorsConstraint.passcolor,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 240.0, left: 10),
                child: Text("SIZE",
                    style: TextStyle(
                        fontSize: 15, color: ColorsConstraint.passcolor)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 260.0, left: 10),
                child: Text("5 'h",
                    style: TextStyle(
                        fontSize: 20,
                        color: ColorsConstraint.passcolor,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70.0),
                child: Image.asset("images/sage.png"),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                Image.asset("images/rec.png"),
                Image.asset("images/HEART.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Text(
              "Overview",
              style: TextStyle(fontSize: 20, color: ColorsConstraint.passcolor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Image.asset("images/1.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("images/2.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("images/3.png"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Text(
              "Plant Bio",
              style: TextStyle(fontSize: 20, color: ColorsConstraint.passcolor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Text(
                "No green thumb requires to keep our artificial watermelon perperomia plant looking lively and lush anywhere you place it."),
          ),
        ],
      ),
    );
  }
}
