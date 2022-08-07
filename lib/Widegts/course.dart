import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/pages/Course_details_page.dart';
import 'package:learning_app/models/course_args.dart';

import '../models/item.dart';

class Course extends StatelessWidget {
  final int index;
  Course(this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.pushNamed(context, 'course_details',
            arguments: CourseArgs(index));
      }),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.94,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          color: Colors.white70,
          elevation: 10,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.18,
                    maxHeight: MediaQuery.of(context).size.width * 0.18,
                  ),
                  child: Image.asset(Items[index].imageURL, fit: BoxFit.fill),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text(
                        Items[index].courseName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                      child: Text(
                        Items[index].description,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 100, 0, 40),
                    child: Text(
                      '\$' + Items[index].price.toString(),
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
