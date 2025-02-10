import 'package:browser_app/domain/entities/search_entity.dart';

class ImageSearchEntity extends SearchEntity {
  const ImageSearchEntity({
    required super.title,
    required super.link,
    required super.snippet,
    required super.position,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageUrl,
    required this.thumbnailUrlWidth,
    required this.thumbnailUrlHeight,
    required this.thumbnailUrl,
  });

  final int imageWidth;
  final int imageHeight;
  final String imageUrl;
  final int thumbnailUrlWidth;
  final int thumbnailUrlHeight;
  final String thumbnailUrl;

  @override
  List<Object?> get props => [
        ...super.props,
        imageWidth,
        imageHeight,
        imageUrl,
        thumbnailUrlWidth,
        thumbnailUrlHeight,
        thumbnailUrl,
      ];
}
