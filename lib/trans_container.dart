import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TransContainer extends StatefulWidget {
  const TransContainer({super.key});

  @override
  State<TransContainer> createState() => _TransContainerState();
}

class _TransContainerState extends State<TransContainer> {
  final List<String> months = ['August', 'September', 'October'];
  int currentMonthIndex = 1;
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: PageView.builder(
                    itemCount: months.length,
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(
                        () {
                          currentMonthIndex = index;
                        },
                      );
                    },
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(
                          months[index],
                          style: TextStyle(
                            fontSize: 25,
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
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: months.length,
                    effect: SlideEffect(
                      activeDotColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '**** 4527',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '37',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'This month',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 170,
                          child: Stack(
                            clipBehavior: Clip.hardEdge,
                            children: [
                              Positioned(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'images/avatar.jpg',
                                  ),
                                  radius: 30,
                                ),
                              ),
                              Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'images/av.jpg',
                                  ),
                                  radius: 30,
                                ),
                              ),
                              Positioned(
                                left: 75,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'images/av1.jpg',
                                  ),
                                  radius: 30,
                                ),
                              ),
                              Positioned(
                                left: 108,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 30,
                                  child: Text(
                                    '+7',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//
// Row(
// children: [
// Text(
// 'This month',
// style: TextStyle(
// fontSize: 20,
// ),
// ),
// SizedBox(
// width: 80,
// ),
// Stack(
// clipBehavior: Clip.none,
// children: [
// Positioned(
// child: CircleAvatar(
// backgroundImage: AssetImage(
// 'images/avatar.jpg',
// ),
// radius: 30,
// ),
// ),
// Positioned(
// left: 35,
// child: CircleAvatar(
// backgroundImage: AssetImage(
// 'images/av.jpg',
// ),
// radius: 30,
// ),
// ),
// Positioned(
// left: 66,
// child: CircleAvatar(
// backgroundImage: AssetImage(
// 'images/av1.jpg',
// ),
// radius: 30,
// ),
// ),
// Positioned(
// left: 92,
// child: CircleAvatar(
// backgroundColor: Colors.black,
//
// radius: 30,
// child: Text(
// '+7',
// style: TextStyle(color: Colors.white),
// ),
// ),
// ),
// ],
// )
// ],
// )
