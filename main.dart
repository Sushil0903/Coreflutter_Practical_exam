import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Product_list.dart';
import 'ProductD.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "Home",
      routes: {
        "Home": (context) => home_page(),
        "ProductD": (context) => productdetail(),
      },
      debugShowCheckedModeBanner: false,
      home: home_page(),
    ),
  );
}

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Home page",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 15),
              height: 55,
              width: 370,
              decoration: BoxDecoration(
                  color: Color(0xfff4f4f4),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Search your product",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Image.network(
              "https://rukminim2.flixcart.com/fk-p-flap/480/210/image/ac0104205865bfde.jpg?q=20",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Smart phone",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                Spacer(),
                Row(
                  children: Smartphone.map((e) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "ProductD", arguments: e);
                      },
                      child: Product(
                        img: e["img"],
                        name: e["name"],
                        cat: e["cat"],
                        price: e["price"],
                      ),
                    );
                  }).toList(),
                ),
                Spacer(),
                Row(
                  children: Smartphone1.map((e) {
                    return Product(
                      img: e["img"],
                      name: e["name"],
                      cat: e["cat"],
                      price: e["price"],
                    );
                  }).toList(),
                ),
                Spacer(),


              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text("Laptops",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Spacer(),
                Row(
                  children: Laptop.map((e) {
                    return Product(
                      img: e["img"],
                      name: e["name"],
                      cat: e["cat"],
                      price: e["price"],
                    );
                  }).toList(),
                ),
                Spacer(),
                Row(
                  children: Laptop2.map((e) {
                    return Product(
                      img: e["img"],
                      name: e["name"],
                      cat: e["cat"],
                      price: e["price"],
                    );
                  }).toList(),
                ),
                Spacer(),


              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  String? name;
  String? img;
  String? cat;
  double? price;

  Product({super.key, this.name, this.img, this.cat, this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "ProductD");
      },
      child: Container(
        height: 300,
        width: 180,
        decoration: BoxDecoration(
            color: Color(0xfff4f4f4), borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Image.network(img ?? "", height: 200),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text(name??"",style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("Catagory: $cat",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    Text("\$$price",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                  ],
                ),
                color: Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
