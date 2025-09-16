import 'package:flutter/material.dart';

class SlidesInfo {
  final String titile;
  final String caption;
  final String imageUrl;

  SlidesInfo({
    required this.titile,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlidesInfo>[
  SlidesInfo(
    titile: 'Busca la comida',
    caption: 'Nostrud eiusmod cupidatat elit eu enim non consequat do et.',
    imageUrl: 'assets/images/1.png',
  ),
  SlidesInfo(
    titile: 'Entrega rapida',
    caption: 'Quis occaecat fugiat cillum sit ut tempor.',
    imageUrl: 'assets/images/2.png',
  ),
  SlidesInfo(
    titile: 'Disfruta la comida',
    caption:
        'Reprehenderit culpa proident mollit eiusmod tempor labore officia.',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: BouncingScrollPhysics(),
        children: slides
            .map(
              (slide) => _Slide(
                title: slide.titile,
                caption: slide.caption,
                imageUrl: slide.imageUrl,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
