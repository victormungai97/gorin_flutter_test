import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageFullScreen extends StatelessWidget {
  const ImageFullScreen({
    super.key,
    required this.backgroundImage,
  });

  final ImageProvider<Object> backgroundImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Stack(
        children: [
          PhotoView(
            imageProvider: backgroundImage,
            loadingBuilder: (context, progress) {
              double? value;
              if (progress != null) {
                final bytesLoaded = progress.cumulativeBytesLoaded;
                final totalBytes = progress.expectedTotalBytes ?? 1;
                value = bytesLoaded / totalBytes;
              }
              return Center(
                child: Container(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(value: value),
                ),
              );
            },
            backgroundDecoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
            ),
            gaplessPlayback: false,
            customSize: MediaQuery.of(context).size,
            initialScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 1.8,
            minScale: PhotoViewComputedScale.contained * 0.8,
          ),
          Align(
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
              color: Colors.white,
            ),
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }
}
