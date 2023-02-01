import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IDCard extends StatefulWidget {
  const IDCard({super.key});

  @override
  State<IDCard> createState() => _IDCardState();
}

class _IDCardState extends State<IDCard> {
  var sem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'ID Card',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30.0),
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 100.0,
            backgroundImage: AssetImage('assets/profilePic.jpg'),
          ),
          const SizedBox(height: 40.0),
          const Divider(
            indent: 25.0,
            endIndent: 25.0,
            color: Colors.red,
            thickness: 6.0,
          ),
          const SizedBox(height: 40.0),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(width: 5.0),
              Text(
                'Name : ',
                style: TextStyle(color: Colors.green, fontSize: 18.0),
              ),
              SizedBox(width: 10.0),
              Text(
                'Nirdesh',
                style: TextStyle(color: Colors.red, fontSize: 18.0),
              ),
              SizedBox(width: 20.0),
              Text(
                'Reg. No. :',
                style: TextStyle(color: Colors.green, fontSize: 18.0),
              ),
              SizedBox(width: 10.0),
              Text(
                '20BCE7062',
                style: TextStyle(color: Colors.red, fontSize: 18.0),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 5.0),
              const Text(
                'Year : ',
                style: TextStyle(color: Colors.green, fontSize: 18.0),
              ),
              const SizedBox(width: 10.0),
              const Text(
                '3rd',
                style: TextStyle(color: Colors.red, fontSize: 18.0),
              ),
              const SizedBox(width: 20.0),
              const Text(
                'Semester : ',
                style: TextStyle(color: Colors.green, fontSize: 18.0),
              ),
              const SizedBox(width: 10.0),
              Text(
                '$sem',
                style: const TextStyle(color: Colors.red, fontSize: 18.0),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Row(
            children: const [
              SizedBox(width: 5.0),
              Icon(
                Icons.email,
                color: Colors.green,
                size: 18.0,
              ),
              SizedBox(width: 10.0),
              Text(
                'nirdesh.20bce7062@vitap.ac.in',
                style: TextStyle(color: Colors.red, fontSize: 18.0),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Row(
            children: const [
              SizedBox(width: 5.0),
              Icon(
                Icons.phone_android_outlined,
                color: Colors.green,
                size: 18.0,
              ),
              SizedBox(width: 10.0),
              Text(
                '7777777777',
                style: TextStyle(color: Colors.red, fontSize: 18.0),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          setState(() {
            sem = sem + 1;
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
    );
  }
}
