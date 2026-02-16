import 'package:flutter/material.dart';

import '../../../helper/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.network(AppAssets.topBannerHomePageAsset,
              width: double.infinity,
              height: size.height * 0.3,
              fit: BoxFit.cover,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                width: double.infinity,
                height: size.height * 0.3,
                color: Colors.black
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 16.0),
              child: Text('Street Clothes',style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white),
            ),
            ),
          ],
        )
      ],
    );
  }
}
