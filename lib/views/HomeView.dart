import 'package:flutter/material.dart';
import 'package:news_app_course/widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text
              ('News',
            style: TextStyle(
              color: Colors.black,
            ),),
            Text
              ('Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child:  SizedBox(
                    height: 32,
                  ),
            ),

            NewsListViewBuilder(category: 'general',),

          ],
        ),
      ),


    );
  }
}


