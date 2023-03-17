import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.black,
                border: Border(
                  bottom: BorderSide(
                    color: CupertinoColors.black.withOpacity(0.1),
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Cupertino ",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 200,
                itemBuilder: (context, index) {
                  return productUI();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productUI() {
    return Container(
      height: 80,
      width: double.infinity,
      color: CupertinoColors.white,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Image.asset("assets/img/1.jpeg"),
              height: 80,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CupertinoColors.black,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 20,
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: CupertinoColors.black.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "car",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$50,000000",
                          style: TextStyle(
                            fontSize: 11,
                            color: CupertinoColors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 21,
                      color: CupertinoColors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}