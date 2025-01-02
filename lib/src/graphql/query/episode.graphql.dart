import 'package:gql/ast.dart';

class Variables$Query$FetchEpisodes {
  factory Variables$Query$FetchEpisodes({required int page}) =>
      Variables$Query$FetchEpisodes._({
        r'page': page,
      });

  Variables$Query$FetchEpisodes._(this._$data);

  factory Variables$Query$FetchEpisodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    return Variables$Query$FetchEpisodes._(result$data);
  }

  Map<String, dynamic> _$data;

  int get page => (_$data['page'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$page = page;
    result$data['page'] = l$page;
    return result$data;
  }

  CopyWith$Variables$Query$FetchEpisodes<Variables$Query$FetchEpisodes>
      get copyWith => CopyWith$Variables$Query$FetchEpisodes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FetchEpisodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([l$page]);
  }
}

abstract class CopyWith$Variables$Query$FetchEpisodes<TRes> {
  factory CopyWith$Variables$Query$FetchEpisodes(
    Variables$Query$FetchEpisodes instance,
    TRes Function(Variables$Query$FetchEpisodes) then,
  ) = _CopyWithImpl$Variables$Query$FetchEpisodes;

  factory CopyWith$Variables$Query$FetchEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchEpisodes;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$FetchEpisodes<TRes>
    implements CopyWith$Variables$Query$FetchEpisodes<TRes> {
  _CopyWithImpl$Variables$Query$FetchEpisodes(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchEpisodes _instance;

  final TRes Function(Variables$Query$FetchEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$FetchEpisodes._({
        ..._instance._$data,
        if (page != _undefined && page != null) 'page': (page as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchEpisodes<TRes>
    implements CopyWith$Variables$Query$FetchEpisodes<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchEpisodes(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$FetchEpisodes {
  Query$FetchEpisodes({
    this.episodes,
    this.$__typename = 'Query',
  });

  factory Query$FetchEpisodes.fromJson(Map<String, dynamic> json) {
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$FetchEpisodes(
      episodes: l$episodes == null
          ? null
          : Query$FetchEpisodes$episodes.fromJson(
              (l$episodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchEpisodes$episodes? episodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episodes = episodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episodes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchEpisodes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchEpisodes on Query$FetchEpisodes {
  CopyWith$Query$FetchEpisodes<Query$FetchEpisodes> get copyWith =>
      CopyWith$Query$FetchEpisodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchEpisodes<TRes> {
  factory CopyWith$Query$FetchEpisodes(
    Query$FetchEpisodes instance,
    TRes Function(Query$FetchEpisodes) then,
  ) = _CopyWithImpl$Query$FetchEpisodes;

  factory CopyWith$Query$FetchEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchEpisodes;

  TRes call({
    Query$FetchEpisodes$episodes? episodes,
    String? $__typename,
  });
  CopyWith$Query$FetchEpisodes$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$FetchEpisodes<TRes>
    implements CopyWith$Query$FetchEpisodes<TRes> {
  _CopyWithImpl$Query$FetchEpisodes(
    this._instance,
    this._then,
  );

  final Query$FetchEpisodes _instance;

  final TRes Function(Query$FetchEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchEpisodes(
        episodes: episodes == _undefined
            ? _instance.episodes
            : (episodes as Query$FetchEpisodes$episodes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchEpisodes$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return local$episodes == null
        ? CopyWith$Query$FetchEpisodes$episodes.stub(_then(_instance))
        : CopyWith$Query$FetchEpisodes$episodes(
            local$episodes, (e) => call(episodes: e));
  }
}

class _CopyWithStubImpl$Query$FetchEpisodes<TRes>
    implements CopyWith$Query$FetchEpisodes<TRes> {
  _CopyWithStubImpl$Query$FetchEpisodes(this._res);

  TRes _res;

  call({
    Query$FetchEpisodes$episodes? episodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchEpisodes$episodes<TRes> get episodes =>
      CopyWith$Query$FetchEpisodes$episodes.stub(_res);
}

const documentNodeQueryFetchEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchEpisodes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'episodes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: NameNode(value: 'count'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'next'),
                alias: NameNode(value: 'next'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: NameNode(value: 'id'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: NameNode(value: 'name'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'air_date'),
                alias: NameNode(value: 'air_date'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'episode'),
                alias: NameNode(value: 'episode'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$FetchEpisodes$episodes {
  Query$FetchEpisodes$episodes({
    required this.info,
    this.results,
    this.$__typename = 'ResponseEpisodes',
  });

  factory Query$FetchEpisodes$episodes.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$FetchEpisodes$episodes(
      info: Query$FetchEpisodes$episodes$info.fromJson(
          (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchEpisodes$episodes$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchEpisodes$episodes$info info;

  final List<Query$FetchEpisodes$episodes$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info = info;
    _resultData['info'] = l$info.toJson();
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info = info;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$info,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchEpisodes$episodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchEpisodes$episodes
    on Query$FetchEpisodes$episodes {
  CopyWith$Query$FetchEpisodes$episodes<Query$FetchEpisodes$episodes>
      get copyWith => CopyWith$Query$FetchEpisodes$episodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchEpisodes$episodes<TRes> {
  factory CopyWith$Query$FetchEpisodes$episodes(
    Query$FetchEpisodes$episodes instance,
    TRes Function(Query$FetchEpisodes$episodes) then,
  ) = _CopyWithImpl$Query$FetchEpisodes$episodes;

  factory CopyWith$Query$FetchEpisodes$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchEpisodes$episodes;

  TRes call({
    Query$FetchEpisodes$episodes$info? info,
    List<Query$FetchEpisodes$episodes$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$FetchEpisodes$episodes$info<TRes> get info;
  TRes results(
      Iterable<Query$FetchEpisodes$episodes$results?>? Function(
              Iterable<
                  CopyWith$Query$FetchEpisodes$episodes$results<
                      Query$FetchEpisodes$episodes$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchEpisodes$episodes<TRes>
    implements CopyWith$Query$FetchEpisodes$episodes<TRes> {
  _CopyWithImpl$Query$FetchEpisodes$episodes(
    this._instance,
    this._then,
  );

  final Query$FetchEpisodes$episodes _instance;

  final TRes Function(Query$FetchEpisodes$episodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchEpisodes$episodes(
        info: info == _undefined || info == null
            ? _instance.info
            : (info as Query$FetchEpisodes$episodes$info),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$FetchEpisodes$episodes$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchEpisodes$episodes$info<TRes> get info {
    final local$info = _instance.info;
    return CopyWith$Query$FetchEpisodes$episodes$info(
        local$info, (e) => call(info: e));
  }

  TRes results(
          Iterable<Query$FetchEpisodes$episodes$results?>? Function(
                  Iterable<
                      CopyWith$Query$FetchEpisodes$episodes$results<
                          Query$FetchEpisodes$episodes$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchEpisodes$episodes$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchEpisodes$episodes<TRes>
    implements CopyWith$Query$FetchEpisodes$episodes<TRes> {
  _CopyWithStubImpl$Query$FetchEpisodes$episodes(this._res);

  TRes _res;

  call({
    Query$FetchEpisodes$episodes$info? info,
    List<Query$FetchEpisodes$episodes$results?>? results,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchEpisodes$episodes$info<TRes> get info =>
      CopyWith$Query$FetchEpisodes$episodes$info.stub(_res);

  results(_fn) => _res;
}

class Query$FetchEpisodes$episodes$info {
  Query$FetchEpisodes$episodes$info({
    required this.count,
    required this.next,
    this.$__typename = 'Info',
  });

  factory Query$FetchEpisodes$episodes$info.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$FetchEpisodes$episodes$info(
      count: (l$count as int),
      next: (l$next as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int next;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$next = next;
    _resultData['next'] = l$next;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$next = next;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$next,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchEpisodes$episodes$info ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$next = next;
    final lOther$next = other.next;
    if (l$next != lOther$next) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchEpisodes$episodes$info
    on Query$FetchEpisodes$episodes$info {
  CopyWith$Query$FetchEpisodes$episodes$info<Query$FetchEpisodes$episodes$info>
      get copyWith => CopyWith$Query$FetchEpisodes$episodes$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchEpisodes$episodes$info<TRes> {
  factory CopyWith$Query$FetchEpisodes$episodes$info(
    Query$FetchEpisodes$episodes$info instance,
    TRes Function(Query$FetchEpisodes$episodes$info) then,
  ) = _CopyWithImpl$Query$FetchEpisodes$episodes$info;

  factory CopyWith$Query$FetchEpisodes$episodes$info.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchEpisodes$episodes$info;

  TRes call({
    int? count,
    int? next,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchEpisodes$episodes$info<TRes>
    implements CopyWith$Query$FetchEpisodes$episodes$info<TRes> {
  _CopyWithImpl$Query$FetchEpisodes$episodes$info(
    this._instance,
    this._then,
  );

  final Query$FetchEpisodes$episodes$info _instance;

  final TRes Function(Query$FetchEpisodes$episodes$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchEpisodes$episodes$info(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        next:
            next == _undefined || next == null ? _instance.next : (next as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchEpisodes$episodes$info<TRes>
    implements CopyWith$Query$FetchEpisodes$episodes$info<TRes> {
  _CopyWithStubImpl$Query$FetchEpisodes$episodes$info(this._res);

  TRes _res;

  call({
    int? count,
    int? next,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchEpisodes$episodes$results {
  Query$FetchEpisodes$episodes$results({
    required this.id,
    required this.name,
    this.air_date,
    this.episode,
    this.$__typename = 'Episode',
  });

  factory Query$FetchEpisodes$episodes$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$FetchEpisodes$episodes$results(
      id: (l$id as String),
      name: (l$name as String),
      air_date: (l$air_date as String?),
      episode: (l$episode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? air_date;

  final String? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$air_date = air_date;
    _resultData['air_date'] = l$air_date;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$air_date = air_date;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$air_date,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchEpisodes$episodes$results ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$air_date = air_date;
    final lOther$air_date = other.air_date;
    if (l$air_date != lOther$air_date) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchEpisodes$episodes$results
    on Query$FetchEpisodes$episodes$results {
  CopyWith$Query$FetchEpisodes$episodes$results<
          Query$FetchEpisodes$episodes$results>
      get copyWith => CopyWith$Query$FetchEpisodes$episodes$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchEpisodes$episodes$results<TRes> {
  factory CopyWith$Query$FetchEpisodes$episodes$results(
    Query$FetchEpisodes$episodes$results instance,
    TRes Function(Query$FetchEpisodes$episodes$results) then,
  ) = _CopyWithImpl$Query$FetchEpisodes$episodes$results;

  factory CopyWith$Query$FetchEpisodes$episodes$results.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchEpisodes$episodes$results;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchEpisodes$episodes$results<TRes>
    implements CopyWith$Query$FetchEpisodes$episodes$results<TRes> {
  _CopyWithImpl$Query$FetchEpisodes$episodes$results(
    this._instance,
    this._then,
  );

  final Query$FetchEpisodes$episodes$results _instance;

  final TRes Function(Query$FetchEpisodes$episodes$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchEpisodes$episodes$results(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        air_date:
            air_date == _undefined ? _instance.air_date : (air_date as String?),
        episode:
            episode == _undefined ? _instance.episode : (episode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchEpisodes$episodes$results<TRes>
    implements CopyWith$Query$FetchEpisodes$episodes$results<TRes> {
  _CopyWithStubImpl$Query$FetchEpisodes$episodes$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? $__typename,
  }) =>
      _res;
}
