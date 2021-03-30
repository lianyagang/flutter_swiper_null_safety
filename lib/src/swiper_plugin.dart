import 'package:flutter/widgets.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'flutter_page_indicator/flutter_page_indicator.dart';

/// plugin to display swiper components
///
abstract class SwiperPlugin {
  const SwiperPlugin();

  Widget build(BuildContext context, SwiperPluginConfig config);
}

class SwiperPluginConfig {
  final int activeIndex;
  final int itemCount;
  final PageIndicatorLayout? indicatorLayout;
  final Axis scrollDirection;
  final bool loop;
  final bool outer;
  final PageController? pageController;
  final SwiperController controller;
  final SwiperLayout? layout;

  const SwiperPluginConfig(
      {this.activeIndex = 0,
      this.itemCount = 0,
      this.indicatorLayout,
      this.outer = false,
      required this.scrollDirection,
      required this.controller,
      this.pageController,
      this.layout,
      this.loop = false});
}

class SwiperPluginView extends StatelessWidget {
  final SwiperPlugin plugin;
  final SwiperPluginConfig config;

  const SwiperPluginView(this.plugin, this.config);

  @override
  Widget build(BuildContext context) {
    return plugin.build(context, config);
  }
}
