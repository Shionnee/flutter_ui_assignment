import 'package:flutter/material.dart';
import 'package:flutter_ui_assignment/button_section.dart';
import 'package:flutter_ui_assignment/image_section.dart';
import 'package:flutter_ui_assignment/text_section.dart';
import 'package:flutter_ui_assignment/title_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter layout demo'),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              /*IMAGE SECTION */

              ImageSection(
                  imageUrl: 'assets/images/arashiyama-bamboo-grove-kyoto.jpg'),
              /*TITLE SECTION */

              TitleSection(
                name: 'Arashiyama Bamboo Grove',
                location: 'Kyoto, Japan',
              ),
              /*BUTTON SECTION */

              ButtonSection(),
              /*ABOUT SECTION */

              TextSection(
                description:
                    'Bamboo Forest, Arashiyama Bamboo Grove or Sagano Bamboo Forest, is a natural bamboo forest in Arashiyama, Kyoto, Japan. The forest consists mostly of mōsō bamboo and has several pathways for tourists and visitors. The Ministry of the Environment considers it a part of the soundscape of Japan.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
