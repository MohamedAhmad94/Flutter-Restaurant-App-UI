import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/setup/constants.dart';
import 'package:flutter_restaurant_app/widgets/search_card.dart';
import 'package:flutter_restaurant_app/widgets/trending_item.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending Restaurants"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: [
            SearchCard(),
            SizedBox(height: 10.0),
            ListView.builder(
              scrollDirection: Axis.vertical,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Constants.restaurants.length,
              itemBuilder: (context, index) {
                Map restaurant = Constants.restaurants[index];

                return TrendingItem(
                    title: restaurant["title"],
                    image: restaurant["image"],
                    address: restaurant["address"],
                    rating: restaurant["rating"]);
              },
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
