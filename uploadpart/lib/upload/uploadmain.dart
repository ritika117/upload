import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uploadpart/upload/notes.dart';
import 'package:uploadpart/upload/questionp.dart';
import 'package:uploadpart/upload/syllabus.dart';

class UploadDoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Documents: '),
        backgroundColor: Colors.yellow[700],
      ),
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 300,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Notes()));
                },
                backgroundColor: Colors.yellow[700],
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  'Notes',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Questionp()));
                },
                backgroundColor: Colors.yellow[700],
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  'Question Papers',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Syllabus()));
                },
                backgroundColor: Colors.yellow[700],
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  'Syllabus',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
