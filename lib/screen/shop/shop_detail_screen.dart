import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../cart/cart_screen.dart';

class ShopDetailScreen extends StatelessWidget {
  const ShopDetailScreen({Key? key}) : super(key: key);

  static const dataLoremHtml =
      r"""<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames 
    ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 
    tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. 
    Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p> 
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames 
    ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 
    tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. 
    Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames 
    ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, 
    tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. 
    Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p
    """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      extendBody: true,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.45,
                        color: Colors.grey,
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CartScreen(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.shopping_bag,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 10.0,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Sikat Gigi Premium',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5.0,
                      bottom: 10.0,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Html(
                          data: dataLoremHtml,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.5,
                height: 64,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_circle,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tambah Keranjang',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.5,
                height: 64,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.monetization_on_rounded,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Beli',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
