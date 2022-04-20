import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyPage(),
));

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: Center(child:Text('ProductBox',
            style:TextStyle(
                fontWeight:FontWeight.bold,
            )))),
        body: ListView(
          padding: EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
          children: <Widget>[
            ProductBox(
              name: "iPhone",
              model: "Apple iPhone 13 Pro Max ",
              price: 179000,
              image: "iphone.jpeg",
            ),
            ProductBox(
              name: "Android",
              model: "Redmi Note 10 Pro",
              price: 16900,
              image: "android.jpeg",
            ),
            ProductBox(
              name: "Tablet",
              model: "Lenova Tab M10 HD",
              price: 15999,
              image: "tablet.jpeg",
            ),
            ProductBox(
              name: "Dell Laptop",
              model: "Dell XPS 13",
              price: 117413,
              image: "laptop.jpeg",
            ),
          ],
        )
    );
  }
}
class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name, required this.model, required this.price, required this.image})
      :
        super(key: key);

  final String name;
  final String model;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(2),
      height:110,
      child:Card(
        child:Row(
          children: [
            Image.asset("assets/"+image),
            Expanded(
                child: Container(
                padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        this.name,
                        style:TextStyle(

                          fontSize:18.0,
                          fontWeight:FontWeight.bold,
                        )
                      ),

                      Text(
                        this.model,
                          style:TextStyle(
                            fontWeight:FontWeight.bold,
                          )
                      ),
                      Text(
                        "Price:"+this.price.toString(),
                          style:TextStyle(
                            fontWeight:FontWeight.bold,
                          )
                      ),

                    ],
                  ),
            ))
          ],
        )
      )
    );
  }
}