import 'package:flutter/material.dart';
import 'package:pass_data_basic_rout/Models/Products.dart';

// ignore: must_be_immutable
class Second extends StatelessWidget {
  Products product ;
   static final route = "/second" ;
  Second({ this.product});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Page" ,
        ),
        backgroundColor: Colors.blue ,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Center(
                child: ListTile(
                  title: Text(
                    product.name ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      fontSize: 18 ,
                    ),
                  ),
                  subtitle: Text(
                    product.description ,
                  ),
                  trailing: Text("price : ${product.price}"),
                ),
              ),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12) ,
                border: Border.all(color: Colors.blue , width: 2)
              ),
            ),
          ],
        ),
      ),
    );
  }
}