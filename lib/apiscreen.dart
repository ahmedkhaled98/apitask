import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:apitask/card.dart';

class SimpleRequestScreen extends StatefulWidget {
  @override
  _SimpleRequestScreenState createState() => _SimpleRequestScreenState();
}

class _SimpleRequestScreenState extends State<SimpleRequestScreen> {
  String name;
  int age;
  String brand;
  String category;
  //String MedicalName;
  //int price;
 // var MedicalCategory;

  List listOfResults = List();
  bool isLoading = true;

  getDataFromRestApi() async {
    Response response = await Dio().get("https://run.mocky.io/v3/701ff6f4-0181-47fe-9461-473f6d0aec92");
    name = response.data['name'];
    brand = response.data['brand'];
    category = response.data['category'];
    //MedicalName = response.data['midecals']['name'];
    listOfResults = response.data['luggage'];
    //listOfResults = response.data['midecals'];
    isLoading = false;
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataFromRestApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HK.com"),
          centerTitle: true,
        ),
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
          itemCount: listOfResults.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: HomeCard(
                   name: listOfResults[index]['name'],
                   brand: listOfResults[index]['brand'],
                   category: listOfResults[index]['category'],
                   //MedicalName: listOfResults [index]['midecals']['name'],

              ),
            );
          },
        ));

  }
}
