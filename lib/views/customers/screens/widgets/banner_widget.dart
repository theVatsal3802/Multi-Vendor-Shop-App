import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<String> banners = [];

  getBanners() async {
    await _firestore.collection("banners").get().then(
      (QuerySnapshot querySnapshot) {
        for (var doc in querySnapshot.docs) {
          setState(() {
            banners.add(doc["imageUrl"]);
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getBanners();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.yellow.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: PageView.builder(
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              banners[index],
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: banners.length,
      ),
    );
  }
}
