import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
        color: AppColors.txtInput.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
        // boxShadow: List.filled(
        //   200,
        //   const BoxShadow(
        //     // color: Colors.grey,
        //     spreadRadius: 1,
        //     blurRadius: 0.5,
        //     blurStyle: BlurStyle.normal,
        //   ),
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(13),
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.txtInput.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            // child: Image.asset(''),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 5),
            child: const Text(
              "Caramel \nmacchiato",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 13, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$40",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: AppColors.buttonTwo,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
