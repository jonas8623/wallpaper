import 'package:flutter/material.dart';

import '../components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
                    const Icon(Icons.menu, size: 30,),
                    const Text('Papel de Parede', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, 'favorite_page'),
                      child: const Icon(Icons.favorite, size: 30, color: Colors.red,),
                    ),
                  ],
                ),
              ),
              const ComponentSearchPage(),
              const TabBar(
                  isScrollable: true,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  indicator: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 2))
                  ),
                  tabs: [
                    Tab(text: "Todos",),
                    Tab(text: "Tendência",),
                    Tab(text: "Destaque",),
                    Tab(text: "Natural",),
                    Tab(text: "Paisagem",),
                    Tab(text: "Outros",),
                  ],
              ),
              const Flexible(
                  flex: 1,
                  child: TabBarView(
                      children: [
                        ComponentImage(),
                        ComponentImage(),
                        ComponentImage(),
                        ComponentImage(),
                        ComponentImage(),
                        ComponentImage(),
                      ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
