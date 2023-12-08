import 'package:flutter/material.dart';

class WalletTransaction extends StatelessWidget {
  const WalletTransaction(
      {super.key, required this.amount, required this.currency});

  final int amount;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              amount < 0
                  ? const Icon(Icons.arrow_downward, color: Colors.red)
                  : const Icon(Icons.arrow_upward, color: Colors.green),
              const SizedBox(width: 5),
              const Text(
                "Shopping",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                amount.toString(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              Text(
                currency,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
