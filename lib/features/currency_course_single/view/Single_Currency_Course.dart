
import 'dart:developer';

import 'package:flutter/material.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({super.key});

  @override
  State<CoinScreen> createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  String? name;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null) {
      log('Need args');
      return;
    }
    if (args is! String) {
      log('Need String');
      return;
    }
    name = args;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? '...'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
    );
  }
}
