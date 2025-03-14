// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomePageController on _HomePageControllerBase, Store {
  final _$searchTextAtom = Atom(name: '_HomePageControllerBase.searchText');

  @override
  TextEditingController get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(TextEditingController value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  final _$listMangaAtom = Atom(name: '_HomePageControllerBase.listManga');

  @override
  ObservableList<Manga>? get listManga {
    _$listMangaAtom.reportRead();
    return super.listManga;
  }

  @override
  set listManga(ObservableList<Manga>? value) {
    _$listMangaAtom.reportWrite(value, super.listManga, () {
      super.listManga = value;
    });
  }

  final _$isSearchAtom = Atom(name: '_HomePageControllerBase.isSearch');

  @override
  bool get isSearch {
    _$isSearchAtom.reportRead();
    return super.isSearch;
  }

  @override
  set isSearch(bool value) {
    _$isSearchAtom.reportWrite(value, super.isSearch, () {
      super.isSearch = value;
    });
  }

  final _$notSearchAtom = Atom(name: '_HomePageControllerBase.notSearch');

  @override
  bool get notSearch {
    _$notSearchAtom.reportRead();
    return super.notSearch;
  }

  @override
  set notSearch(bool value) {
    _$notSearchAtom.reportWrite(value, super.notSearch, () {
      super.notSearch = value;
    });
  }

  final _$pageAtom = Atom(name: '_HomePageControllerBase.page');

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  final _$lastPageAtom = Atom(name: '_HomePageControllerBase.lastPage');

  @override
  int get lastPage {
    _$lastPageAtom.reportRead();
    return super.lastPage;
  }

  @override
  set lastPage(int value) {
    _$lastPageAtom.reportWrite(value, super.lastPage, () {
      super.lastPage = value;
    });
  }

  final _$searchAsyncAction = AsyncAction('_HomePageControllerBase.search');

  @override
  Future<void> search({BuildContext? context}) {
    return _$searchAsyncAction.run(() => super.search(context: context));
  }

  final _$_HomePageControllerBaseActionController =
      ActionController(name: '_HomePageControllerBase');

  @override
  void setSearchText(String value) {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.setSearchText');
    try {
      return super.setSearchText(value);
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSumPage(BuildContext context) {
    final _$actionInfo = _$_HomePageControllerBaseActionController.startAction(
        name: '_HomePageControllerBase.setSumPage');
    try {
      return super.setSumPage(context);
    } finally {
      _$_HomePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchText: ${searchText},
listManga: ${listManga},
isSearch: ${isSearch},
notSearch: ${notSearch},
page: ${page},
lastPage: ${lastPage}
    ''';
  }
}
