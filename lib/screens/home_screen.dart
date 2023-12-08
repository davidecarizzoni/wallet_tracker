import 'package:flutter/material.dart';
import 'package:wallet_tracker/widget/wallet_card.dart';
import 'package:wallet_tracker/widget/wallet_transaction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 241, 242, 1),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: null,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                child: AspectRatio(
                  aspectRatio: 3.1 / 2,
                  child: GestureDetector(
                    child: const WalletCard(),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Last transactions",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const WalletTransaction(
                amount: 10,
                currency: '€',
              ),
              const WalletTransaction(
                amount: 20,
                currency: '€',
              ),
              const WalletTransaction(
                amount: 12,
                currency: '€',
              ),
              const WalletTransaction(
                amount: -20,
                currency: '€',
              ),
              const WalletTransaction(
                amount: -12,
                currency: '€',
              )
            ],
          ),
        ),
      ),
    );
  }
}
