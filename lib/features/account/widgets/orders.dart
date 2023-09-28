import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary list
  List list = [
    'https://images.unsplash.com/photo-1524638067-feba7e8ed70f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTR8fGVjb21tZXJjZSUyMHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1524638067-feba7e8ed70f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTR8fGVjb21tZXJjZSUyMHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1524638067-feba7e8ed70f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTR8fGVjb21tZXJjZSUyMHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: ((context, index) {
              return SingleProduct(
                img: list[index],
              );
            }),
          ),
        ),
      ],
    );
  }
}
