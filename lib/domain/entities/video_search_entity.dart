import 'package:browser_app/domain/entities/search_entity.dart';

class VideoSearchEntity extends SearchEntity {
  const VideoSearchEntity({
    required super.title,
    required super.link,
    required super.snippet,
    required super.position,
    this.duration,
    this.source,
    this.channel,
    this.date,
  });

  final Duration? duration;
  final String? source;
  final String? channel;
  final DateTime? date;

  @override
  List<Object?> get props => [
        ...super.props,
        duration,
        source,
        channel,
        date,
      ];
}
