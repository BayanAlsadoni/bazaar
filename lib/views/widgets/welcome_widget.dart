import 'package:flutter/cupertino.dart';

class WelcomeWidget extends StatelessWidget {
  String imagePath;
  WelcomeWidget(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 2,
            // width: 200,
            width: MediaQuery.of(context).size.width,
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "العنوان",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              textAlign: TextAlign.right,
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam",
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
