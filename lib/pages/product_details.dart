import 'package:flutter/material.dart';
import 'package:shopapp/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
              child: Text('ShopApp')),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),

          ]),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("\$${widget.product_detail_old_price}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough))),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ================ the first buttons ============
          Row(
            children: <Widget>[
              //  =========== the size butttons ==========
              Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text('Close'),
                              )
                            ]
                          );
                        });
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children: [
                        Expanded(child: Text("Size")),
                          Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),

              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("Choose the color"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text('Close'),
                              )
                            ]
                        );
                      });
                    },
                     color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                  children: [
                        Expanded(child: Text("Color")),
                         Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),

              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(context: context, builder: (context){
                        return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text('Close'),
                              )
                            ]
                        );
                      });
                    },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Кол-во")),
                    Expanded(child: Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
            ],
          ),
          // ================ the second buttons ============
          Row(
            children: <Widget>[
              //  =========== the size butttons ==========
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product name", style: TextStyle(color: Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),)
            ],
          ),
                          // remember to add the brands
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product brand", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("Brand A"),)
            ],
          ),
          // remember to add the conditions
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("COnd A"),)
            ],
          ),
          Divider(),
          Text("Similar products"),

          // similar products section
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 49990,
      "price": 29990,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 69990,
      "price": 39990,
    },
    {
      "name": "Cool Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 129990,
      "price": 109990,
    },
    {
      "name": "Amazing Hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 149990,
      "price": 119990,
    },
    {
      "name": "Dress",
      "picture": "images/products/skt1.jpeg",
      "old_price": 69990,
      "price": 39990,
    },
    {
      "name": "Dress",
      "picture": "images/products/skt2.jpeg",
      "old_price": 69990,
      "price": 39990,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int_index) {
          return Similar_single_products(
            prod_name: product_list[int_index]['name'],
            prod_picture: product_list[int_index]['picture'],
            prod_old_price: product_list[int_index]['old_price'],
            prod_price: product_list[int_index]['price'],
          );
        });
  }
}

class Similar_single_products extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_products({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the values of the product to the products details
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),
                    Text("\$${prod_price}", style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                  ]
                  ),
                ),
                child: Image.asset(prod_picture),
              ),
            ),
          ),
        ));
  }
}

