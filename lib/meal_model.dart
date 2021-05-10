import 'package:flutter/cupertino.dart';

class MealModel {
  final String name;
  final String imgUrl;

  MealModel({@required this.name, @required this.imgUrl});
}

List<MealModel> mealData = [
  MealModel(
      name: 'Burger',
      imgUrl:
          'https://images.pexels.com/photos/2983101/pexels-photo-2983101.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'pizaa',
      imgUrl:
          'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'Fresh',
      imgUrl:
          'https://images.pexels.com/photos/704569/pexels-photo-704569.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'Farm fresh',
      imgUrl:
          'https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'small Size',
      imgUrl:
          'https://images.pexels.com/photos/1109197/pexels-photo-1109197.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'potato',
      imgUrl:
          'https://images.pexels.com/photos/1583884/pexels-photo-1583884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'salad',
      imgUrl:
          'https://images.pexels.com/photos/406152/pexels-photo-406152.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'hot dish',
      imgUrl:
          'https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
  MealModel(
      name: 'Pizza',
      imgUrl:
          'https://images.pexels.com/photos/1260968/pexels-photo-1260968.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
];
