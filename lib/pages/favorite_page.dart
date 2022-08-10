import 'package:flutter/material.dart';

import '../components/components.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const Icon(Icons.arrow_back, size: 30,),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  const Text('Favoritos', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, 'favorite_page'),
                    child: const Icon(Icons.favorite, size: 30, color: Colors.red,),
                  ),
                ],
              ),
            ),
           Container(
             margin: const EdgeInsets.all(15),
             alignment: Alignment.centerLeft,
             child: const Text('Seus Favoritos: ', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
           ),
           const Flexible(
               flex: 1,
               child: ComponentImage())
          ],
        ),
      ),
    );
  }
}
