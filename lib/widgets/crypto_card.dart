import 'package:flutter/material.dart';
import 'package:coinrich/models/crypto_data.dart';

class CryptoCard extends StatelessWidget {
  final CoinData coinData;
  const CryptoCard({required this.coinData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(coinData.name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow)),
                Row(
                  children: [
                    Icon(
                        coinData.quote.USD.percent_change_24h > 0 ? Icons.arrow_upward : Icons.arrow_downward,
                        color: coinData.quote.USD.percent_change_24h > 0 ? Colors.green : Colors.red),
                    Text('${coinData.quote.USD.percent_change_24h.toString().substring(0,5)}%',style: TextStyle(color: Colors.white)),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(4))
                  ),
                  width: 60,
                  padding: const EdgeInsets.all(2),
                  child: const Center(child: Text('ADA')),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Price   \$${coinData.quote.USD.price.toString().toString().substring(0,5)}',style: TextStyle(color: Colors.white),),
                Text('Rank    ${coinData.cmc_rank}',style: const TextStyle(color: Colors.white),),
                IconButton(
                    onPressed: () async{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('IconButton Pressed')));
                    },
                    icon: const Icon(Icons.arrow_circle_right_sharp,color: Colors.yellow,size: 32,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
