import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class HeroPhotoViewRouteWrapper extends StatelessWidget {
  const HeroPhotoViewRouteWrapper({this.imageProvider, this.tag, this.index});

  final ImageProvider? imageProvider;
  final String? tag;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Ảnh $index")),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(
              height: MediaQuery.of(context).size.height,
            ),
            child: PhotoView(
              imageProvider: imageProvider,
              filterQuality: FilterQuality.high,
              // initialScale: PhotoViewComputedScale.contained,
              minScale: PhotoViewComputedScale.contained * 0.7,
              maxScale: PhotoViewComputedScale.contained * 2,
              // maxScale: PhotoViewComputedScale.contained * 0.5,
              heroAttributes: PhotoViewHeroAttributes(tag: tag!),
              loadingBuilder: (context, event) {
                return const Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8).copyWith(top: 44),
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: Navigator.of(context).pop,
                ),
              ))
        ],
      ),
    );
  }
}
