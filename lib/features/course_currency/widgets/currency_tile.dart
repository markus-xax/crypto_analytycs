import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CurrencyTile extends StatelessWidget {
  const CurrencyTile({
    super.key,
    required this.coinName,
    required this.price
  });

  final String coinName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        coinName,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${price}',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      leading: SvgPicture.asset(
        'assets/svg/dollar.svg',
        height: 30,
        width: 30,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin',
          arguments: coinName,
        );
      },
    );
  }
}