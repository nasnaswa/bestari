import 'package:flutter/material.dart';

class deskripsi extends StatefulWidget {
  const deskripsi({super.key});

  @override
  State<deskripsi> createState() => _deskripsiState();
}

class _deskripsiState extends State<deskripsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Deskripsi",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ItemDescription(
            itemName: 'Coffee Susu',
            itemPrice: 'Rp 15.000',
            itemDescription:
                'Minuman kopi susu yang nikmat dan segar, cocok untuk dinikmati kapan saja.',
            imageUrl: '../asset/cof3.jpg',
          ),
        ),
      ),
    );
  }
}

class ItemDescription extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemDescription;
  final String imageUrl;

  const ItemDescription({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemDescription,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 490,
      width: 500,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 300,
              width: 440,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imageUrl),
                ),
              ),
              // child: const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Icon(
              //       // Icons.favorite_outline,
              //       // color: Colors.white,
              //       // size: 25,
              //       ),
              // ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, size: 20, color: Colors.brown),
                      Icon(Icons.star, size: 20, color: Colors.brown),
                      Icon(Icons.star, size: 20, color: Colors.brown),
                      Icon(Icons.star, size: 20, color: Colors.brown),
                      Icon(Icons.star, size: 20, color: Colors.brown),
                    ],
                  ),
                  Text(
                    itemPrice,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    itemDescription,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
