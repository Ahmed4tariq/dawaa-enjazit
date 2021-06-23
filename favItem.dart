import 'package:dawaa_app/models/Cart.dart';
import 'package:flutter/material.dart';

class favItem extends StatelessWidget {
    final List<String> favoriteItems;

    const favItem ({Key key, @required this.favoriteItems, favarte}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                appBar: AppBar(
                title: Text('Favorites words'),
        ),
        body: ListView.separated(
        itemCount: favoriteItems.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) => ListTile(
        title: Text(favoriteItems[index]),
        ),
        ),
        );
    }
}