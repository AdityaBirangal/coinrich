import 'package:flutter/material.dart';

class ShowchartAndCard extends StatelessWidget {
  const ShowchartAndCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.pie_chart_outline,color: Colors.yellow),
              Text('Show Chart',style: TextStyle(color: Colors.yellow)),
            ],
          ),
          Text('Count: 5',style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
