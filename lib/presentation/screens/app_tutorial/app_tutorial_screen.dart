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

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final pageViewController = PageController();

  bool endReached = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageViewController.addListener(() {
      /* 
        at some point the controller may not be asigned to any page view,
        so the page property will be null, to avoid errors we use the null coalescing
        operator to assign a default value of 0 in that case.
      
       */
      final page = pageViewController.page ?? 0;
      print('${pageViewController.page}');

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          // print('End reached');
          endReached = true;
        });
      }
    });
  }

  /* 
    Always dispose controllers when the widget is removed from the tree
    to avoid memory leaks.  
   */
  @override
  void dispose() {
    // TODO: implement dispose
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
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
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 50,
                  child: FilledButton(
                    onPressed: () => context.pop(),
                    child: Text('Comenzar'),
                  ),
                )
              : const SizedBox(),
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
