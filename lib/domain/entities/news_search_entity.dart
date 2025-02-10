import 'package:browser_app/domain/entities/search_entity.dart';

class NewsSearchEntity extends SearchEntity {
  const NewsSearchEntity({
    required super.title,
    required super.link,
    required super.snippet,
    required super.position,
    required this.imageUrl,
    required this.date,
  });

  final String imageUrl;
  final String date;

  @override
  List<Object?> get props => [
        ...super.props,
        imageUrl,
        date,
      ];
}
