import 'package:flutter/material.dart';

import '../../../../models/products.dart';

class ListItemHome extends StatelessWidget {
  final Products product;
  const ListItemHome({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  product.imageUrl,
                  width: 150,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: SizedBox(
                  width: 50,
                  height: 30,
                  child: product.discontValue != null ? DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(child: Text('${product.discontValue}%',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white),)),
                  ): Container(),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(product.category,style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey),),
          SizedBox(height: 4),
          Text(product.title,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
          SizedBox(height: 4),
          Text('\$${product.price}',style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey),),

        ],
      ),
    );
  }
}
