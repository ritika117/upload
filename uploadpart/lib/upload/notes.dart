import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uploadpart/upload/questionp.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Upload Notes'),
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text(
            //   'Enter Subject Name',
            //   textAlign: TextAlign.left,
            //   style: TextStyle(
            //     fontSize: 10.0,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                showCursor: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter subject name',
                  labelText: 'Enter subject name',
                ),
              ),
            ),
            // Text(
            //   'Enter Unit number',
            //   style: TextStyle(
            //     fontSize: 10.0,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                showCursor: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter unit number',
                  labelText: 'Enter unit number',
                ),
              ),
            ),
            // Text(
            //   'Enter Author name',
            //   style: TextStyle(
            //     fontSize: 10.0,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                showCursor: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Author name',
                  labelText: 'Enter Author name',
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
                  'NEXT',
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
