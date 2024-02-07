import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({
    super.key,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Color.fromARGB(255, 108, 50, 107)),
        Container(color: Color.fromARGB(255, 61, 156, 77)),
        Container(color: Color.fromARGB(255, 84, 163, 172)),
      ],
    );
  }
}
