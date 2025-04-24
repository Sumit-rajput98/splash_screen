import 'package:flutter/material.dart';
import '../../models/on_boarding_model/on_boarding_model.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image),height: model.height*0.4,),
          Column(
            children: [
              Text(model.title,style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),),
              Text(model.subTitle,textAlign: TextAlign.center,),
            ],
          ),
          //Text(model.counter,style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 100,)
        ],
      ),

    );
  }
}
