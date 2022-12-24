import 'package:flutter/material.dart';
import 'package:twentyfour/screens/login/logindemo.dart';

import '../../models/on_boarding_model.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: NetworkImage(
                'https://images.pexels.com/photos/6608542/pexels-photo-6608542.jpeg'),
            height: size.height * 0.45,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Text(
            '',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 80.0,
          ),
          if (model.counterText == '3')
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return LoginDemo();
                    }),
                  );
                },
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    shape: const StadiumBorder()),
              ),
            ),
        ],
      ),
    );
  }
}
