import 'package:flutter/material.dart';
import 'Product_list.dart';

class productdetail extends StatefulWidget {
  Map? Smartphone;

  productdetail({super.key, this.Smartphone});

  @override
  State<productdetail> createState() => _productdetailState();
}

class _productdetailState extends State<productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          "Product Detail",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Image.network("https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/3/5/l/-original-imaghx9qmgqsk9s4.jpeg?q=70&crop=false")),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xfff4f4f4),borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Text(
                    "Iphone 14",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Text("\$250.20",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Text("Description :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.circle_rounded,size: 10,color: Colors.black87,),
                  Text("  128 GB ROM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.circle_rounded,size: 10,color: Colors.black87,),
                  Text("  15.49 cm (6.1 inch) Super Retina XDR Display",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.circle_rounded,size: 10,color: Colors.black87,),
                  Text("  12MP + 12MP | 12MP Front Camera",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.circle_rounded,size: 10,color: Colors.black87,),
                  Text("  12MP + 12MP | 12MP Front Camera",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.circle_rounded,size: 10,color: Colors.black87,),
                  Text("  A15 Bionic Chip, 6 Core Processor Processor",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),)
                ],
              ),
                SizedBox(height: 20,),
              Container(
                height: 60,
                width: 290,
                decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text("Add to cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
              ),
              SizedBox(height: 10,),
            ],
          ),
          ),

        ],
      ),
    );
  }
}
