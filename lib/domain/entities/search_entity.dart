import 'package:equatable/equatable.dart';

class SearchEntity with EquatableMixin {
  const SearchEntity({
    required this.title,
    required this.link,
    required this.snippet,
    required this.position,
  });

  final String title;
  final String link;
  final String snippet;
  final int position;

  @override
  List<Object?> get props => [
        title,
        link,
        snippet,
        position,
      ];
}
