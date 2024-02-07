import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    //otra forma similar con otra funcion pero similar:
    //final otroProvider = Provider.of<DiscoverProvider>(context, listen: false);
    return Scaffold(
      body: discoverProvider.initialLoading
          ? Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : VideoScrollableView(videos: discoverProvider.videos),
    );
  }
}
