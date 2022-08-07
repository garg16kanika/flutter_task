import 'package:flutter/material.dart';
import 'package:learning_app/models/course_args.dart';

import '../models/item.dart';

class CourseDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CourseArgs;

    void buyNow() {
      Navigator.pushNamed(context, 'buyNow');
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Items[args.indexNo].courseName),
      ),
      bottomNavigationBar: ButtonBar(
        buttonPadding: EdgeInsets.symmetric(horizontal: 10),
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '\$' + Items[args.indexNo].price.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: buyNow,
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.30,
                  maxHeight: MediaQuery.of(context).size.width * 0.30,
                ),
                child:
                    Image.asset(Items[args.indexNo].imageURL, fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                Items[args.indexNo].description,
                style: TextStyle(fontSize: 18, wordSpacing: 2),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         Items[args.indexNo].price.toString(),
            //         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //       ),
            //       IconButton(
            //         onPressed: buyNow,
            //         icon: Icon(
            //           Icons.shopping_cart,
            //           size: 30,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
