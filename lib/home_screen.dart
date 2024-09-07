import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    snackBar(message, context){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message))
      );
    }

    int _counter = 1;

    // initial quantities of the products
    int pulloverCount = 1;
    int tShirtCount = 1;
    int sportsDressCount = 1;

    // unit price for each product
    final int pulloverPrice = 51;
    final int tShirtPrice = 30;
    final int sportsDressPrice = 43;

    // the total amount

    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    void _decrementCounter() {
      setState(() {
        _counter--;
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'My Bag',
            style: GoogleFonts.bebasNeue(
              fontWeight: FontWeight.w500,
              fontSize: 40,
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // pullover
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                    child: Row(
                      children: [
                        // t-shirt image
                        Image.network(
                          'https://images.rawpixel.com/image_social_square/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA5L3JtMzYzLWIwOC1tb2NrdXAtMDEtam9iMTAwMy1sOGVobTlyYy5qcGc.jpg',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product Name
                            Text(
                              'Pullover',
                              style: GoogleFonts.robotoCondensed(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),

                            // color and size...
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Color: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: 'Black',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12))
                                        ])),
                                SizedBox(width: 10),
                                RichText(
                                    text: TextSpan(
                                        text: 'Size: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: 'L',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12))
                                        ])),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),

                            // +, - buttons
                            Row(
                              children: [
                                // - button
                                ElevatedButton(
                                  onPressed: () {
                                    _decrementCounter();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(5),
                                    backgroundColor: Colors.lightGreenAccent,
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Icon(Icons.remove),
                                ),
                                Text(_counter.toString()),
                                // + button
                                ElevatedButton(
                                  onPressed: () {
                                    _incrementCounter();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(5),
                                      backgroundColor: Colors.lightGreenAccent,
                                      foregroundColor: Colors.black),
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // the more button and price tag
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              // product price
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$$pulloverPrice',
                                    style: GoogleFonts.bebasNeue(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // t-Shirt
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 15,
                              offset: Offset(0, 7))
                        ]),
                    child: Row(
                      children: [
                        // t-shirt image
                        Image.network(
                          'https://images.rawpixel.com/image_social_square/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA5L3JtMzYzLWIwOC1tb2NrdXAtMDEtam9iMTAwMy1sOGVobTlyYy5qcGc.jpg',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product Name
                            Text(
                              'T-Shirt',
                              style: GoogleFonts.robotoCondensed(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),

                            // color and size...
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Color: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: 'Black',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12))
                                        ])),
                                SizedBox(width: 10),
                                RichText(
                                    text: TextSpan(
                                        text: 'Size: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: 'L',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12))
                                        ])),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),

                            // +, - buttons
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    _decrementCounter();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(5),
                                    backgroundColor: Colors.lightGreenAccent,
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Icon(Icons.remove),
                                ),
                                Text(_counter.toString()),
                                ElevatedButton(
                                  onPressed: () {
                                    _incrementCounter();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(5),
                                      backgroundColor: Colors.lightGreenAccent,
                                      foregroundColor: Colors.black),
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // the more button and price tag
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$$tShirtPrice',
                                    style: GoogleFonts.bebasNeue(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // sports dress
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 120,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 15,
                              offset: Offset(0, 7))
                        ]),
                    child: Row(
                      children: [
                        // t-shirt image
                        Image.network(
                          'https://images.rawpixel.com/image_social_square/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA5L3JtMzYzLWIwOC1tb2NrdXAtMDEtam9iMTAwMy1sOGVobTlyYy5qcGc.jpg',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product Name
                            Text(
                              'Sport Dress',
                              style: GoogleFonts.robotoCondensed(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),

                            // color and size...
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Color: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: 'Black',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12))
                                        ])),
                                SizedBox(width: 10),
                                RichText(
                                    text: TextSpan(
                                        text: 'Size: ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        children: [
                                          TextSpan(
                                              text: 'L',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12))
                                        ])),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),

                            // +, - buttons
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    _decrementCounter();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(5),
                                    backgroundColor: Colors.lightGreenAccent,
                                    foregroundColor: Colors.black,
                                  ),
                                  child: const Icon(Icons.remove),
                                ),
                                Text(_counter.toString()),
                                ElevatedButton(
                                  onPressed: () {
                                    _incrementCounter();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(5),
                                      backgroundColor: Colors.lightGreenAccent,
                                      foregroundColor: Colors.black),
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // the more button and price tag
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert),
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // price
                                  Text(
                                    '\$$sportsDressPrice',
                                    style: GoogleFonts.bebasNeue(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // total amount
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount', style: TextStyle(color: Colors.grey),),
                Text(
                  '124\$',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          // checkout button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  snackBar('Congratulations! You have checked out!', context);
                },
                child: Text('Checkout'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
