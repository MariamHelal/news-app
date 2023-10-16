import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cateory});
  final CategoryModel cateory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return  CategoryView(category: cateory.categoryName,);
          })
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: MediaQuery.of(context).size.height/6,
          width: MediaQuery.of(context).size.width/2,
          decoration: BoxDecoration(
            image: DecorationImage(image:
            AssetImage(cateory.image),fit: BoxFit.fill),
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(child: Text(cateory.categoryName,style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),),
        ),
      ),
    );
  }
}
