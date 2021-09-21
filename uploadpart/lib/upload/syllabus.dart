import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uploadpart/upload/questionp.dart';

class Syllabus extends StatefulWidget {
  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  String dropdownValue = '1';
  var items = ['1', '2', '3', '4', '5', '6', '7', '8'];
  String dropdownvalue1 = 'CSE';
  var items1 = ['CSE', 'ISE', 'MECH', 'BIOTECH', 'EEE', 'ECE'];
  String dropdownValue2 = '2021';
  var items2 = [
    '1995',
    '1996',
    '1997',
    '1998',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Upload Syllabus'),
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                showCursor: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Subject name',
                  labelText: 'Enter Subject name',
                ),
              ),
            ),
            DropdownButton(
              value: dropdownValue,
              hint: Text('Select year'),
              icon: Icon(Icons.keyboard_arrow_down),
              isDense: true,
              items: items.map((String items) {
                return new DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownValue = newvalue!;
                });
              },
            ),
            DropdownButton(
              value: dropdownvalue1,
              hint: Text('enter branch'),
              icon: Icon(Icons.keyboard_arrow_down),
              items: items1.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue1 = newValue!;
                });
              },
            ),
            DropdownButton(
              value: dropdownValue2,
              hint: Text('enter branch'),
              icon: Icon(Icons.keyboard_arrow_down),
              items: items2.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue2 = newValue!;
                });
              },
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
