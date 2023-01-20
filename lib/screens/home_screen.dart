import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => GestureDetector(
              child: ProductCard(),
              onTap: () => Navigator.pushNamed(context, 'product'),
            )
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
   );
  }
}