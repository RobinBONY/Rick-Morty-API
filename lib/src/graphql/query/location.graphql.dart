import 'package:gql/ast.dart';

class Variables$Query$FetchLocations {
  factory Variables$Query$FetchLocations({required int page}) =>
      Variables$Query$FetchLocations._({
        r'page': page,
      });

  Variables$Query$FetchLocations._(this._$data);

  factory Variables$Query$FetchLocations.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    return Variables$Query$FetchLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  int get page => (_$data['page'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$page = page;
    result$data['page'] = l$page;
    return result$data;
  }

  CopyWith$Variables$Query$FetchLocations<Variables$Query$FetchLocations>
      get copyWith => CopyWith$Variables$Query$FetchLocations(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FetchLocations ||
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

abstract class CopyWith$Variables$Query$FetchLocations<TRes> {
  factory CopyWith$Variables$Query$FetchLocations(
    Variables$Query$FetchLocations instance,
    TRes Function(Variables$Query$FetchLocations) then,
  ) = _CopyWithImpl$Variables$Query$FetchLocations;

  factory CopyWith$Variables$Query$FetchLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchLocations;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$FetchLocations<TRes>
    implements CopyWith$Variables$Query$FetchLocations<TRes> {
  _CopyWithImpl$Variables$Query$FetchLocations(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchLocations _instance;

  final TRes Function(Variables$Query$FetchLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$FetchLocations._({
        ..._instance._$data,
        if (page != _undefined && page != null) 'page': (page as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchLocations<TRes>
    implements CopyWith$Variables$Query$FetchLocations<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchLocations(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$FetchLocations {
  Query$FetchLocations({
    this.locations,
    this.$__typename = 'Query',
  });

  factory Query$FetchLocations.fromJson(Map<String, dynamic> json) {
    final l$locations = json['locations'];
    final l$$__typename = json['__typename'];
    return Query$FetchLocations(
      locations: l$locations == null
          ? null
          : Query$FetchLocations$locations.fromJson(
              (l$locations as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchLocations$locations? locations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locations = locations;
    _resultData['locations'] = l$locations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locations = locations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locations,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchLocations || runtimeType != other.runtimeType) {
      return false;
    }
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations != lOther$locations) {
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

extension UtilityExtension$Query$FetchLocations on Query$FetchLocations {
  CopyWith$Query$FetchLocations<Query$FetchLocations> get copyWith =>
      CopyWith$Query$FetchLocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchLocations<TRes> {
  factory CopyWith$Query$FetchLocations(
    Query$FetchLocations instance,
    TRes Function(Query$FetchLocations) then,
  ) = _CopyWithImpl$Query$FetchLocations;

  factory CopyWith$Query$FetchLocations.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLocations;

  TRes call({
    Query$FetchLocations$locations? locations,
    String? $__typename,
  });
  CopyWith$Query$FetchLocations$locations<TRes> get locations;
}

class _CopyWithImpl$Query$FetchLocations<TRes>
    implements CopyWith$Query$FetchLocations<TRes> {
  _CopyWithImpl$Query$FetchLocations(
    this._instance,
    this._then,
  );

  final Query$FetchLocations _instance;

  final TRes Function(Query$FetchLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLocations(
        locations: locations == _undefined
            ? _instance.locations
            : (locations as Query$FetchLocations$locations?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchLocations$locations<TRes> get locations {
    final local$locations = _instance.locations;
    return local$locations == null
        ? CopyWith$Query$FetchLocations$locations.stub(_then(_instance))
        : CopyWith$Query$FetchLocations$locations(
            local$locations, (e) => call(locations: e));
  }
}

class _CopyWithStubImpl$Query$FetchLocations<TRes>
    implements CopyWith$Query$FetchLocations<TRes> {
  _CopyWithStubImpl$Query$FetchLocations(this._res);

  TRes _res;

  call({
    Query$FetchLocations$locations? locations,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchLocations$locations<TRes> get locations =>
      CopyWith$Query$FetchLocations$locations.stub(_res);
}

const documentNodeQueryFetchLocations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchLocations'),
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
        name: NameNode(value: 'locations'),
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
                name: NameNode(value: 'type'),
                alias: NameNode(value: 'type'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dimension'),
                alias: NameNode(value: 'dimension'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'residents'),
                alias: NameNode(value: 'residents'),
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

class Query$FetchLocations$locations {
  Query$FetchLocations$locations({
    required this.info,
    this.results,
    this.$__typename = 'ResponseLocations',
  });

  factory Query$FetchLocations$locations.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$FetchLocations$locations(
      info: Query$FetchLocations$locations$info.fromJson(
          (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchLocations$locations$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchLocations$locations$info info;

  final List<Query$FetchLocations$locations$results?>? results;

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
    if (other is! Query$FetchLocations$locations ||
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

extension UtilityExtension$Query$FetchLocations$locations
    on Query$FetchLocations$locations {
  CopyWith$Query$FetchLocations$locations<Query$FetchLocations$locations>
      get copyWith => CopyWith$Query$FetchLocations$locations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLocations$locations<TRes> {
  factory CopyWith$Query$FetchLocations$locations(
    Query$FetchLocations$locations instance,
    TRes Function(Query$FetchLocations$locations) then,
  ) = _CopyWithImpl$Query$FetchLocations$locations;

  factory CopyWith$Query$FetchLocations$locations.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLocations$locations;

  TRes call({
    Query$FetchLocations$locations$info? info,
    List<Query$FetchLocations$locations$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$FetchLocations$locations$info<TRes> get info;
  TRes results(
      Iterable<Query$FetchLocations$locations$results?>? Function(
              Iterable<
                  CopyWith$Query$FetchLocations$locations$results<
                      Query$FetchLocations$locations$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchLocations$locations<TRes>
    implements CopyWith$Query$FetchLocations$locations<TRes> {
  _CopyWithImpl$Query$FetchLocations$locations(
    this._instance,
    this._then,
  );

  final Query$FetchLocations$locations _instance;

  final TRes Function(Query$FetchLocations$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLocations$locations(
        info: info == _undefined || info == null
            ? _instance.info
            : (info as Query$FetchLocations$locations$info),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$FetchLocations$locations$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchLocations$locations$info<TRes> get info {
    final local$info = _instance.info;
    return CopyWith$Query$FetchLocations$locations$info(
        local$info, (e) => call(info: e));
  }

  TRes results(
          Iterable<Query$FetchLocations$locations$results?>? Function(
                  Iterable<
                      CopyWith$Query$FetchLocations$locations$results<
                          Query$FetchLocations$locations$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchLocations$locations$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchLocations$locations<TRes>
    implements CopyWith$Query$FetchLocations$locations<TRes> {
  _CopyWithStubImpl$Query$FetchLocations$locations(this._res);

  TRes _res;

  call({
    Query$FetchLocations$locations$info? info,
    List<Query$FetchLocations$locations$results?>? results,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchLocations$locations$info<TRes> get info =>
      CopyWith$Query$FetchLocations$locations$info.stub(_res);

  results(_fn) => _res;
}

class Query$FetchLocations$locations$info {
  Query$FetchLocations$locations$info({
    required this.count,
    required this.next,
    this.$__typename = 'Info',
  });

  factory Query$FetchLocations$locations$info.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$FetchLocations$locations$info(
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
    if (other is! Query$FetchLocations$locations$info ||
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

extension UtilityExtension$Query$FetchLocations$locations$info
    on Query$FetchLocations$locations$info {
  CopyWith$Query$FetchLocations$locations$info<
          Query$FetchLocations$locations$info>
      get copyWith => CopyWith$Query$FetchLocations$locations$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLocations$locations$info<TRes> {
  factory CopyWith$Query$FetchLocations$locations$info(
    Query$FetchLocations$locations$info instance,
    TRes Function(Query$FetchLocations$locations$info) then,
  ) = _CopyWithImpl$Query$FetchLocations$locations$info;

  factory CopyWith$Query$FetchLocations$locations$info.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLocations$locations$info;

  TRes call({
    int? count,
    int? next,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLocations$locations$info<TRes>
    implements CopyWith$Query$FetchLocations$locations$info<TRes> {
  _CopyWithImpl$Query$FetchLocations$locations$info(
    this._instance,
    this._then,
  );

  final Query$FetchLocations$locations$info _instance;

  final TRes Function(Query$FetchLocations$locations$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLocations$locations$info(
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

class _CopyWithStubImpl$Query$FetchLocations$locations$info<TRes>
    implements CopyWith$Query$FetchLocations$locations$info<TRes> {
  _CopyWithStubImpl$Query$FetchLocations$locations$info(this._res);

  TRes _res;

  call({
    int? count,
    int? next,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchLocations$locations$results {
  Query$FetchLocations$locations$results({
    required this.id,
    required this.name,
    this.type,
    this.dimension,
    this.residents,
    this.$__typename = 'Location',
  });

  factory Query$FetchLocations$locations$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$dimension = json['dimension'];
    final l$residents = json['residents'];
    final l$$__typename = json['__typename'];
    return Query$FetchLocations$locations$results(
      id: (l$id as String),
      name: (l$name as String),
      type: (l$type as String?),
      dimension: (l$dimension as String?),
      residents:
          (l$residents as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? type;

  final String? dimension;

  final List<String?>? residents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$dimension = dimension;
    _resultData['dimension'] = l$dimension;
    final l$residents = residents;
    _resultData['residents'] = l$residents?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$type = type;
    final l$dimension = dimension;
    final l$residents = residents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$type,
      l$dimension,
      l$residents == null ? null : Object.hashAll(l$residents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchLocations$locations$results ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$dimension = dimension;
    final lOther$dimension = other.dimension;
    if (l$dimension != lOther$dimension) {
      return false;
    }
    final l$residents = residents;
    final lOther$residents = other.residents;
    if (l$residents != null && lOther$residents != null) {
      if (l$residents.length != lOther$residents.length) {
        return false;
      }
      for (int i = 0; i < l$residents.length; i++) {
        final l$residents$entry = l$residents[i];
        final lOther$residents$entry = lOther$residents[i];
        if (l$residents$entry != lOther$residents$entry) {
          return false;
        }
      }
    } else if (l$residents != lOther$residents) {
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

extension UtilityExtension$Query$FetchLocations$locations$results
    on Query$FetchLocations$locations$results {
  CopyWith$Query$FetchLocations$locations$results<
          Query$FetchLocations$locations$results>
      get copyWith => CopyWith$Query$FetchLocations$locations$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchLocations$locations$results<TRes> {
  factory CopyWith$Query$FetchLocations$locations$results(
    Query$FetchLocations$locations$results instance,
    TRes Function(Query$FetchLocations$locations$results) then,
  ) = _CopyWithImpl$Query$FetchLocations$locations$results;

  factory CopyWith$Query$FetchLocations$locations$results.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchLocations$locations$results;

  TRes call({
    String? id,
    String? name,
    String? type,
    String? dimension,
    List<String?>? residents,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchLocations$locations$results<TRes>
    implements CopyWith$Query$FetchLocations$locations$results<TRes> {
  _CopyWithImpl$Query$FetchLocations$locations$results(
    this._instance,
    this._then,
  );

  final Query$FetchLocations$locations$results _instance;

  final TRes Function(Query$FetchLocations$locations$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? dimension = _undefined,
    Object? residents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchLocations$locations$results(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined ? _instance.type : (type as String?),
        dimension: dimension == _undefined
            ? _instance.dimension
            : (dimension as String?),
        residents: residents == _undefined
            ? _instance.residents
            : (residents as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchLocations$locations$results<TRes>
    implements CopyWith$Query$FetchLocations$locations$results<TRes> {
  _CopyWithStubImpl$Query$FetchLocations$locations$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? type,
    String? dimension,
    List<String?>? residents,
    String? $__typename,
  }) =>
      _res;
}
