import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String pahlawanTitle;
  final String pahlawanPicture;
  final String pahlawanDesk;

  DetailScreen(
      {required this.pahlawanTitle,
      required this.pahlawanPicture,
      required this.pahlawanDesk});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pahlawanTitle),
      ),
      body: Column(
        children: [
          Image.asset(widget.pahlawanPicture),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              widget.pahlawanDesk,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          )
        ],
      ),
    );
  }
}
