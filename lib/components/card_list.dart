import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class CoffeeListCard extends StatelessWidget {
  const CoffeeListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.txtInput,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(13),
            // height: 100,
            decoration: BoxDecoration(
              color: AppColors.txtInput.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            // child: Image.asset(''),
          ),
          Container(
            child: Column(
              children: [
                const Text(
                  "Caramel Macchiato",
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
