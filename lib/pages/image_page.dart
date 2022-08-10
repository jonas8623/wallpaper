import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  Widget _rowIcons({required IconData icon}) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(icon, color: Colors.white, size: 40,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: DismissiblePage(
          direction: DismissiblePageDismissDirection.multi,
          onDismissed: () {
            Navigator.of(context).pop();
          },
          child: Hero(
            tag: "2",
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/2.jpg")
                )
              ),
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomCenter,
                color: Colors.black.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      _rowIcons(icon: Icons.share),
                      _rowIcons(icon: Icons.download),
                      _rowIcons(icon: Icons.favorite_border),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}
