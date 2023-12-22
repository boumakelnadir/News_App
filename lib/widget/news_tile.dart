import 'package:flutter/material.dart';
import 'package:untitled/model/news_tile_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:untitled/views/web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articles});

  final NewsTileModel articles;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => WebView(url: articles.url),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 190,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: articles.image != null
                  ? CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: articles.image!,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )
                  : Image.asset(
                      'assets/no-image-1.jpg',
                      fit: BoxFit.fill,
                    ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            articles.title ?? 'Sorry Not Have Data',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            articles.description ?? 'Sorry Not Have Data',
            style: const TextStyle(
              color: Colors.blueGrey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
