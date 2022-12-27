import 'package:flutter/material.dart';
import '../components/detail/detail_footer.dart';
import '../components/detail/detail_header.dart';
import '../components/detail/detail_info.dart';
import '../components/detail/photo_list.dart';
import '../components/detail/section_title.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String location;
  final String description;


  const DetailScreen(
      {Key? key,
      required this.title,
      required this.location,
      required this.description,
    
      })
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            DetailHeader(title: widget.title),
            const SizedBox(height: 15),
            const SectionTitle(),
            const SizedBox(height: 15),
            const PhotoList(),
            const SizedBox(height: 20),
            // suggestion text
            DetailInfo(
              title: 'Description',
              description: '${widget.description}',
            ),
            const SizedBox(height: 20),
            DetailInfo(
              title: 'Location',
              description: '${widget.location}\n400 m away from your location.',
            ),
            const SizedBox(height: 20),
            const DetailFooter(),
          ],
        ),
      ),
    );
  }
}
