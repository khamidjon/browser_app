import 'package:browser_app/domain/entities/search_entity.dart';
import 'package:browser_app/domain/repositories/search_repository.dart';

class FetchSearchItemsUseCase {
  FetchSearchItemsUseCase(
    this._searchRepository,
    this._connectivity,
  );

  final SearchRepository _searchRepository;
  final Connectivity _connectivity;

  Future<List<SearchEntity>> search(String searchText) async {
    if (_connectivity.hasConnection) {
      try {
        final remoteItems = await _searchRepository.searchRemote(searchText);
        await _searchRepository.saveLocal(remoteItems);
        return remoteItems;
      } on Object catch (_) {
        return await _searchLocal(searchText);
      }
    } else {
      return await _searchLocal(searchText);
    }
  }

  Future<List<SearchEntity>> _searchLocal(String searchText) {
    return _searchRepository.searchLocal(searchText);
  }
}
