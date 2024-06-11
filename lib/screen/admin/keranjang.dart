import 'package:flutter/material.dart';
import 'package:bopat/config/asset.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Barang 1
              checkoutItem(
                imagePath: '../asset/cof1.jpg',
                itemName: 'Coffee Susu',
                price: 'Rp 15.000',
                quantity: 2,
              ),
              const SizedBox(height: 20),

              // Barang 2
              checkoutItem(
                imagePath: '../asset/peach.jpg',
                itemName: 'Peach Tea',
                price: 'Rp 18.000',
                quantity: 1,
              ),
              const SizedBox(height: 20),

              // Barang 3
              checkoutItem(
                imagePath: '../asset/otak.jpg',
                itemName: 'Otak-Otak',
                price: 'Rp 15.000',
                quantity: 3,
              ),
              const SizedBox(height: 20),

              // Total Harga
              totalPrice(['Rp 15.000', 'Rp 18.000', 'Rp 15.000'], [2, 1, 3]),
            ],
          ),
        ),
      ),
    );
  }

  Widget checkoutItem({
    required String imagePath,
    required String itemName,
    required String price,
    required int quantity,
  }) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurStyle: BlurStyle.outer,
            blurRadius: 0.3,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                // child: Icon(
                //   Icons.favorite_outline,
                //   color: Colors.white,
                //   size: 25,
                // ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'x$quantity',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.brown,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget totalPrice(List<String> prices, List<int> quantities) {
    int total = 0;
    for (int i = 0; i < prices.length; i++) {
      int price =
          int.parse(prices[i].replaceAll('Rp ', '').replaceAll('.', ''));
      total += price * quantities[i];
    }

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0.3,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Harga',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rp ${total.toString().replaceAllMapped(
                      RegExp(r'(\d)(?=(\d{3})+$)'),
                      (match) => '${match.group(1)}.',
                    )}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          // Tombol Bayar
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Nomor Antrian: 01"),
                    content: Text(
                        "2x Coffee Susu, 1x Peach Tea, 1x Otak-Otak\nTotal pembayaran: Rp 93.000\nMetode pembayaran: Tunai\nSilahkan ambil struk dan lakukan pembayaran di kasir. Terima kasih dan selamat menikmati!"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Tutup"),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              'Bayar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown, // Warna latar belakang tombol
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
