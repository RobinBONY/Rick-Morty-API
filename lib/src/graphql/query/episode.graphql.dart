import '../schema/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$FetchSeason {
  factory Variables$Query$FetchSeason({required Input$FilterEpisode filter}) =>
      Variables$Query$FetchSeason._({
        r'filter': filter,
      });

  Variables$Query$FetchSeason._(this._$data);

  factory Variables$Query$FetchSeason.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$FilterEpisode.fromJson((l$filter as Map<String, dynamic>));
    return Variables$Query$FetchSeason._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FilterEpisode get filter => (_$data['filter'] as Input$FilterEpisode);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$FetchSeason<Variables$Query$FetchSeason>
      get copyWith => CopyWith$Variables$Query$FetchSeason(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FetchSeason ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$FetchSeason<TRes> {
  factory CopyWith$Variables$Query$FetchSeason(
    Variables$Query$FetchSeason instance,
    TRes Function(Variables$Query$FetchSeason) then,
  ) = _CopyWithImpl$Variables$Query$FetchSeason;

  factory CopyWith$Variables$Query$FetchSeason.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchSeason;

  TRes call({Input$FilterEpisode? filter});
}

class _CopyWithImpl$Variables$Query$FetchSeason<TRes>
    implements CopyWith$Variables$Query$FetchSeason<TRes> {
  _CopyWithImpl$Variables$Query$FetchSeason(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchSeason _instance;

  final TRes Function(Variables$Query$FetchSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$FetchSeason._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$FilterEpisode),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchSeason<TRes>
    implements CopyWith$Variables$Query$FetchSeason<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchSeason(this._res);

  TRes _res;

  call({Input$FilterEpisode? filter}) => _res;
}

class Query$FetchSeason {
  Query$FetchSeason({
    this.episodes,
    this.$__typename = 'Query',
  });

  factory Query$FetchSeason.fromJson(Map<String, dynamic> json) {
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$FetchSeason(
      episodes: l$episodes == null
          ? null
          : Query$FetchSeason$episodes.fromJson(
              (l$episodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchSeason$episodes? episodes;

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
    if (other is! Query$FetchSeason || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchSeason on Query$FetchSeason {
  CopyWith$Query$FetchSeason<Query$FetchSeason> get copyWith =>
      CopyWith$Query$FetchSeason(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchSeason<TRes> {
  factory CopyWith$Query$FetchSeason(
    Query$FetchSeason instance,
    TRes Function(Query$FetchSeason) then,
  ) = _CopyWithImpl$Query$FetchSeason;

  factory CopyWith$Query$FetchSeason.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSeason;

  TRes call({
    Query$FetchSeason$episodes? episodes,
    String? $__typename,
  });
  CopyWith$Query$FetchSeason$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$FetchSeason<TRes>
    implements CopyWith$Query$FetchSeason<TRes> {
  _CopyWithImpl$Query$FetchSeason(
    this._instance,
    this._then,
  );

  final Query$FetchSeason _instance;

  final TRes Function(Query$FetchSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchSeason(
        episodes: episodes == _undefined
            ? _instance.episodes
            : (episodes as Query$FetchSeason$episodes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchSeason$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return local$episodes == null
        ? CopyWith$Query$FetchSeason$episodes.stub(_then(_instance))
        : CopyWith$Query$FetchSeason$episodes(
            local$episodes, (e) => call(episodes: e));
  }
}

class _CopyWithStubImpl$Query$FetchSeason<TRes>
    implements CopyWith$Query$FetchSeason<TRes> {
  _CopyWithStubImpl$Query$FetchSeason(this._res);

  TRes _res;

  call({
    Query$FetchSeason$episodes? episodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchSeason$episodes<TRes> get episodes =>
      CopyWith$Query$FetchSeason$episodes.stub(_res);
}

const documentNodeQueryFetchSeason = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchSeason'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'FilterEpisode'),
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
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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

class Query$FetchSeason$episodes {
  Query$FetchSeason$episodes({
    this.results,
    this.$__typename = 'ResponseEpisodes',
  });

  factory Query$FetchSeason$episodes.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$FetchSeason$episodes(
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchSeason$episodes$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchSeason$episodes$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchSeason$episodes ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchSeason$episodes
    on Query$FetchSeason$episodes {
  CopyWith$Query$FetchSeason$episodes<Query$FetchSeason$episodes>
      get copyWith => CopyWith$Query$FetchSeason$episodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchSeason$episodes<TRes> {
  factory CopyWith$Query$FetchSeason$episodes(
    Query$FetchSeason$episodes instance,
    TRes Function(Query$FetchSeason$episodes) then,
  ) = _CopyWithImpl$Query$FetchSeason$episodes;

  factory CopyWith$Query$FetchSeason$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSeason$episodes;

  TRes call({
    List<Query$FetchSeason$episodes$results?>? results,
    String? $__typename,
  });
  TRes results(
      Iterable<Query$FetchSeason$episodes$results?>? Function(
              Iterable<
                  CopyWith$Query$FetchSeason$episodes$results<
                      Query$FetchSeason$episodes$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchSeason$episodes<TRes>
    implements CopyWith$Query$FetchSeason$episodes<TRes> {
  _CopyWithImpl$Query$FetchSeason$episodes(
    this._instance,
    this._then,
  );

  final Query$FetchSeason$episodes _instance;

  final TRes Function(Query$FetchSeason$episodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchSeason$episodes(
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$FetchSeason$episodes$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes results(
          Iterable<Query$FetchSeason$episodes$results?>? Function(
                  Iterable<
                      CopyWith$Query$FetchSeason$episodes$results<
                          Query$FetchSeason$episodes$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchSeason$episodes$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchSeason$episodes<TRes>
    implements CopyWith$Query$FetchSeason$episodes<TRes> {
  _CopyWithStubImpl$Query$FetchSeason$episodes(this._res);

  TRes _res;

  call({
    List<Query$FetchSeason$episodes$results?>? results,
    String? $__typename,
  }) =>
      _res;

  results(_fn) => _res;
}

class Query$FetchSeason$episodes$results {
  Query$FetchSeason$episodes$results({
    required this.id,
    required this.name,
    this.air_date,
    this.episode,
    this.$__typename = 'Episode',
  });

  factory Query$FetchSeason$episodes$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$FetchSeason$episodes$results(
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
    if (other is! Query$FetchSeason$episodes$results ||
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

extension UtilityExtension$Query$FetchSeason$episodes$results
    on Query$FetchSeason$episodes$results {
  CopyWith$Query$FetchSeason$episodes$results<
          Query$FetchSeason$episodes$results>
      get copyWith => CopyWith$Query$FetchSeason$episodes$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchSeason$episodes$results<TRes> {
  factory CopyWith$Query$FetchSeason$episodes$results(
    Query$FetchSeason$episodes$results instance,
    TRes Function(Query$FetchSeason$episodes$results) then,
  ) = _CopyWithImpl$Query$FetchSeason$episodes$results;

  factory CopyWith$Query$FetchSeason$episodes$results.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchSeason$episodes$results;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchSeason$episodes$results<TRes>
    implements CopyWith$Query$FetchSeason$episodes$results<TRes> {
  _CopyWithImpl$Query$FetchSeason$episodes$results(
    this._instance,
    this._then,
  );

  final Query$FetchSeason$episodes$results _instance;

  final TRes Function(Query$FetchSeason$episodes$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchSeason$episodes$results(
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

class _CopyWithStubImpl$Query$FetchSeason$episodes$results<TRes>
    implements CopyWith$Query$FetchSeason$episodes$results<TRes> {
  _CopyWithStubImpl$Query$FetchSeason$episodes$results(this._res);

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
