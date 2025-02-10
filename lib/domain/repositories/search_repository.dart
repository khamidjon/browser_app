import 'package:browser_app/domain/entities/search_entity.dart';

abstract interface class SearchRepository {
  Future<List<SearchEntity>> searchRemote(String searchText);

  Future<List<SearchEntity>> searchLocal(String searchText);

  Future<void> saveLocal(List<SearchEntity> items);
}
