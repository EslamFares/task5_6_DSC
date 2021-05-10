import 'package:flutter/material.dart';
import 'meal_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dropdownItem = ['small', 'meduim', 'large', 'max'];
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resturant Menu'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView.builder(
          itemBuilder: (context, index) => myCard(mealData[index], context),
          itemCount: mealData.length,
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }

  Widget myCard(MealModel meal, context) => Card(
        color: Colors.transparent,
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: mealImg(context, meal)),
                  SizedBox(width: 5),
                  dropdownButton()
                ],
              ),
              mealName(meal)
            ],
          ),
        ),
      );

  Text mealName(MealModel meal) {
    return Text(
      meal.name,
      style: TextStyle(
          color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }

  Widget dropdownButton() {
    return DropdownButton(
        hint: Text('size'),
        value: dropdownValue,
        onChanged: (value) {
          setState(() {
            dropdownValue = value;
          });
        },
        items: dropdownItem
            .map((size) => DropdownMenuItem(
                  child: Text(size),
                  value: size,
                ))
            .toList());
  }

  Container mealImg(context, MealModel meal) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: NetworkImage(meal.imgUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}
