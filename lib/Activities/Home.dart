import 'package:flutter/material.dart';
import 'package:pass_data_basic_rout/Activities/Second.dart';
import 'package:pass_data_basic_rout/Models/Products.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  static final route = "/home" ;
  List<Products> products = List.generate(
    50, 
    (index) => Products(name: "Products ${index+1}", description: "decription of product $index", price: (index + 1) * 20));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page" ,
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          // start container >>>
          return Container(
            // start listtile >>>
            child: ListTile(
              //this is title >>>>
              title: Text(
                products[index].name ,
                style: TextStyle(
                  fontWeight: FontWeight.bold ,
                  fontSize: 17 ,
                ),
              ),
              //this is subtitle >>>
              subtitle: Text(
                products[index].description ,
              ),
              // this is leading >>>>
              leading: Icon(Icons.car_rental , size: 40,),
              //this is trailing >>>>
              trailing: Icon(Icons.more , size: 25, color: Colors.red,),
              //this is ontap fun >>>>
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Second(product: products[index]),
                  ),
                );
              },
            ),
            // end listtile >>>

            //this is decoration >>>>
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10) ,
              border: Border.all(color: Colors.teal , width: 2) ,
            ),
            //this is margin >>> 
            margin: const EdgeInsets.all(12),
          );
          // end container >>>>>
        },
      ) ,
    );
  }
}