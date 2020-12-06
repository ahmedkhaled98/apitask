import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {

  String name;
  String brand;
  String category;
  //int MedicalName;

  HomeCard({this.name, this.brand, this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 270,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(3),
            child: Text(
              "luggage",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
            ),
          ),
          Container(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "Name:$name",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.green),
                    ),
                  ), Container(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "Brand:$brand",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "Category:$category",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),
                    ),
                  ),

                ],
              ),
    );
  }
}
