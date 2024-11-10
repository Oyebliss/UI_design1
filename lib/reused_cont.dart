import 'package:flutter/material.dart';

class ReusedCont extends StatefulWidget {
  const ReusedCont({super.key});

  @override
  State<ReusedCont> createState() => _ReusedContState();
}

class _ReusedContState extends State<ReusedCont> {
  final List<String> months = ['August', 'September', 'October'];
  int currentMonthIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: PageView.builder(
              itemCount: months.length,
              controller: PageController(initialPage: currentMonthIndex),
              onPageChanged: (index) {
                setState(() {
                  currentMonthIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    months[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: index == currentMonthIndex
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
