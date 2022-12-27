import 'package:flutter/material.dart';
import '../components/home/home_header.dart';
import '../components/home/search_bar.dart';
import '../components/home/section_title.dart';
import '../components/home/suggestion_list.dart';
import '../components/home/trending_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            HomeHeader(),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 20),
            SectionTitle(title: 'Trending'),
            SizedBox(height: 20),
            TrendingList(),
            SizedBox(height: 25),
            SectionTitle(title: 'Suggestion'),
            SizedBox(height: 20),
            SuggestionList(),
          ],
        ),
      ),
    );
  }
}
