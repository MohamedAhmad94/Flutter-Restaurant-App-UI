import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/screens/categories.dart';
import 'package:flutter_restaurant_app/screens/trending.dart';
import 'package:flutter_restaurant_app/setup/constants.dart';
import 'package:flutter_restaurant_app/widgets/category_item.dart';
import 'dart:io' show Platform;
import 'package:flutter_restaurant_app/widgets/search_card.dart';
import 'package:flutter_restaurant_app/widgets/slider_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 70.0),
        child: Padding(
          padding: EdgeInsets.only(
            top: Platform.isAndroid ? 30.0 : 50.0,
            left: 10.0,
            right: 10.0,
          ),
          child: SearchCard(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: [
            SizedBox(height: 20.0),
            buildResturantsRow("Trending Resturants", context),
            SizedBox(height: 10.0),
            buildRestaurantsList(context),
            SizedBox(height: 10.0),
            buildCategoryRow("Categories", context),
            SizedBox(height: 10.0),
            buildCategoryList(context),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  buildResturantsRow(String? restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$restaurant",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Trending()));
          },
          child: Text(
            "View All",
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ],
    );
  }

  buildRestaurantsList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Constants.restaurants.length,
          itemBuilder: (context, index) {
            Map restaurant = Constants.restaurants[index];

            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SliderItem(
                title: restaurant["title"],
                image: restaurant["image"],
                address: restaurant["address"],
                rating: restaurant["rating"],
              ),
            );
          }),
    );
  }

  buildCategoryRow(String? category, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$category",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Categories()));
          },
          child: Text(
            "View All",
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ],
    );
  }

  buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: Constants.categories.length,
          itemBuilder: (context, index) {
            Map category = Constants.categories[index];

            return CategoryItem(category: category);
          }),
    );
  }
}
