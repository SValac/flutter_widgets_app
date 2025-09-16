import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
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
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Salir'),
            ),
          ),
        ],
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
    // final tileStyle = Theme.of(context).textTheme.titleLarge;
    // final captionStyle = Theme.of(context).textTheme.bodySmall;
    final TextTheme(:titleLarge, :bodySmall) = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleLarge),
            SizedBox(height: 10),
            Text(caption, style: bodySmall),
          ],
        ),
      ),
    );
  }
}
