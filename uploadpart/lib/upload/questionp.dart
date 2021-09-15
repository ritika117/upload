import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questionp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'One';
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Upload Question Papers '),
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Subject Name ',
                  labelText: 'Enter Subject Name',
                ),
              ),
            ),
            DropdownButton(
                value: dropdownValue,
                onChanged: (newvalue) {
                  setState(() {
                    dropdownValue = newvalue;
                  });
                  
                }, 
                items: [],

                
              ),
          ],
        ),
      ),
    );
  }
}
