import 'package:gql/ast.dart';

class Variables$Query$FetchCharacters {
  factory Variables$Query$FetchCharacters({required int page}) =>
      Variables$Query$FetchCharacters._({
        r'page': page,
      });

  Variables$Query$FetchCharacters._(this._$data);

  factory Variables$Query$FetchCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    return Variables$Query$FetchCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int get page => (_$data['page'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$page = page;
    result$data['page'] = l$page;
    return result$data;
  }

  CopyWith$Variables$Query$FetchCharacters<Variables$Query$FetchCharacters>
      get copyWith => CopyWith$Variables$Query$FetchCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FetchCharacters ||
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

abstract class CopyWith$Variables$Query$FetchCharacters<TRes> {
  factory CopyWith$Variables$Query$FetchCharacters(
    Variables$Query$FetchCharacters instance,
    TRes Function(Variables$Query$FetchCharacters) then,
  ) = _CopyWithImpl$Variables$Query$FetchCharacters;

  factory CopyWith$Variables$Query$FetchCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchCharacters;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$FetchCharacters<TRes>
    implements CopyWith$Variables$Query$FetchCharacters<TRes> {
  _CopyWithImpl$Variables$Query$FetchCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchCharacters _instance;

  final TRes Function(Variables$Query$FetchCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$FetchCharacters._({
        ..._instance._$data,
        if (page != _undefined && page != null) 'page': (page as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchCharacters<TRes>
    implements CopyWith$Variables$Query$FetchCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchCharacters(this._res);

  final TRes _res;

  @override
  call({int? page}) => _res;
}

class Query$FetchCharacters {
  Query$FetchCharacters({
    this.characters,
    this.$__typename = 'Query',
  });

  factory Query$FetchCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$FetchCharacters(
      characters: l$characters == null
          ? null
          : Query$FetchCharacters$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchCharacters$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$characters = characters;
    resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCharacters || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$FetchCharacters on Query$FetchCharacters {
  CopyWith$Query$FetchCharacters<Query$FetchCharacters> get copyWith =>
      CopyWith$Query$FetchCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCharacters<TRes> {
  factory CopyWith$Query$FetchCharacters(
    Query$FetchCharacters instance,
    TRes Function(Query$FetchCharacters) then,
  ) = _CopyWithImpl$Query$FetchCharacters;

  factory CopyWith$Query$FetchCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCharacters;

  TRes call({
    Query$FetchCharacters$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$FetchCharacters$characters<TRes> get characters;
}

class _CopyWithImpl$Query$FetchCharacters<TRes>
    implements CopyWith$Query$FetchCharacters<TRes> {
  _CopyWithImpl$Query$FetchCharacters(
    this._instance,
    this._then,
  );

  final Query$FetchCharacters _instance;

  final TRes Function(Query$FetchCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCharacters(
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$FetchCharacters$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$FetchCharacters$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$FetchCharacters$characters.stub(_then(_instance))
        : CopyWith$Query$FetchCharacters$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$FetchCharacters<TRes>
    implements CopyWith$Query$FetchCharacters<TRes> {
  _CopyWithStubImpl$Query$FetchCharacters(this._res);

  final TRes _res;

  @override
  call({
    Query$FetchCharacters$characters? characters,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$FetchCharacters$characters<TRes> get characters =>
      CopyWith$Query$FetchCharacters$characters.stub(_res);
}

const documentNodeQueryFetchCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCharacters'),
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
        name: NameNode(value: 'characters'),
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
                name: NameNode(value: 'status'),
                alias: NameNode(value: 'status'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'species'),
                alias: NameNode(value: 'species'),
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: NameNode(value: 'image'),
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

class Query$FetchCharacters$characters {
  Query$FetchCharacters$characters({
    required this.info,
    this.results,
    this.$__typename = 'ResultCharacter',
  });

  factory Query$FetchCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$FetchCharacters$characters(
      info: Query$FetchCharacters$characters$info.fromJson(
          (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchCharacters$characters$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchCharacters$characters$info info;

  final List<Query$FetchCharacters$characters$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$info = info;
    resultData['info'] = l$info.toJson();
    final l$results = results;
    resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$FetchCharacters$characters ||
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

extension UtilityExtension$Query$FetchCharacters$characters
    on Query$FetchCharacters$characters {
  CopyWith$Query$FetchCharacters$characters<Query$FetchCharacters$characters>
      get copyWith => CopyWith$Query$FetchCharacters$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCharacters$characters<TRes> {
  factory CopyWith$Query$FetchCharacters$characters(
    Query$FetchCharacters$characters instance,
    TRes Function(Query$FetchCharacters$characters) then,
  ) = _CopyWithImpl$Query$FetchCharacters$characters;

  factory CopyWith$Query$FetchCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCharacters$characters;

  TRes call({
    Query$FetchCharacters$characters$info? info,
    List<Query$FetchCharacters$characters$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$FetchCharacters$characters$info<TRes> get info;
  TRes results(
      Iterable<Query$FetchCharacters$characters$results?>? Function(
              Iterable<
                  CopyWith$Query$FetchCharacters$characters$results<
                      Query$FetchCharacters$characters$results>?>?)
          fn);
}

class _CopyWithImpl$Query$FetchCharacters$characters<TRes>
    implements CopyWith$Query$FetchCharacters$characters<TRes> {
  _CopyWithImpl$Query$FetchCharacters$characters(
    this._instance,
    this._then,
  );

  final Query$FetchCharacters$characters _instance;

  final TRes Function(Query$FetchCharacters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCharacters$characters(
        info: info == _undefined || info == null
            ? _instance.info
            : (info as Query$FetchCharacters$characters$info),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$FetchCharacters$characters$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$FetchCharacters$characters$info<TRes> get info {
    final local$info = _instance.info;
    return CopyWith$Query$FetchCharacters$characters$info(
        local$info, (e) => call(info: e));
  }

  @override
  TRes results(
          Iterable<Query$FetchCharacters$characters$results?>? Function(
                  Iterable<
                      CopyWith$Query$FetchCharacters$characters$results<
                          Query$FetchCharacters$characters$results>?>?)
              fn) =>
      call(
          results: fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchCharacters$characters$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchCharacters$characters<TRes>
    implements CopyWith$Query$FetchCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$FetchCharacters$characters(this._res);

  final TRes _res;

  @override
  call({
    Query$FetchCharacters$characters$info? info,
    List<Query$FetchCharacters$characters$results?>? results,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$FetchCharacters$characters$info<TRes> get info =>
      CopyWith$Query$FetchCharacters$characters$info.stub(_res);

  @override
  results(fn) => _res;
}

class Query$FetchCharacters$characters$info {
  Query$FetchCharacters$characters$info({
    required this.count,
    required this.next,
    this.$__typename = 'Info',
  });

  factory Query$FetchCharacters$characters$info.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$FetchCharacters$characters$info(
      count: (l$count as int),
      next: (l$next as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int next;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$count = count;
    resultData['count'] = l$count;
    final l$next = next;
    resultData['next'] = l$next;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Query$FetchCharacters$characters$info ||
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

extension UtilityExtension$Query$FetchCharacters$characters$info
    on Query$FetchCharacters$characters$info {
  CopyWith$Query$FetchCharacters$characters$info<
          Query$FetchCharacters$characters$info>
      get copyWith => CopyWith$Query$FetchCharacters$characters$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCharacters$characters$info<TRes> {
  factory CopyWith$Query$FetchCharacters$characters$info(
    Query$FetchCharacters$characters$info instance,
    TRes Function(Query$FetchCharacters$characters$info) then,
  ) = _CopyWithImpl$Query$FetchCharacters$characters$info;

  factory CopyWith$Query$FetchCharacters$characters$info.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCharacters$characters$info;

  TRes call({
    int? count,
    int? next,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCharacters$characters$info<TRes>
    implements CopyWith$Query$FetchCharacters$characters$info<TRes> {
  _CopyWithImpl$Query$FetchCharacters$characters$info(
    this._instance,
    this._then,
  );

  final Query$FetchCharacters$characters$info _instance;

  final TRes Function(Query$FetchCharacters$characters$info) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? count = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCharacters$characters$info(
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

class _CopyWithStubImpl$Query$FetchCharacters$characters$info<TRes>
    implements CopyWith$Query$FetchCharacters$characters$info<TRes> {
  _CopyWithStubImpl$Query$FetchCharacters$characters$info(this._res);

  final TRes _res;

  @override
  call({
    int? count,
    int? next,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchCharacters$characters$results {
  Query$FetchCharacters$characters$results({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
    this.$__typename = 'Character',
  });

  factory Query$FetchCharacters$characters$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$status = json['status'];
    final l$species = json['species'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$FetchCharacters$characters$results(
      id: (l$id as String),
      name: (l$name as String),
      status: (l$status as String),
      species: (l$species as String),
      image: (l$image as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String status;

  final String species;

  final String image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$status = status;
    resultData['status'] = l$status;
    final l$species = species;
    resultData['species'] = l$species;
    final l$image = image;
    resultData['image'] = l$image;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$status = status;
    final l$species = species;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$status,
      l$species,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchCharacters$characters$results ||
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$species = species;
    final lOther$species = other.species;
    if (l$species != lOther$species) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$FetchCharacters$characters$results
    on Query$FetchCharacters$characters$results {
  CopyWith$Query$FetchCharacters$characters$results<
          Query$FetchCharacters$characters$results>
      get copyWith => CopyWith$Query$FetchCharacters$characters$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchCharacters$characters$results<TRes> {
  factory CopyWith$Query$FetchCharacters$characters$results(
    Query$FetchCharacters$characters$results instance,
    TRes Function(Query$FetchCharacters$characters$results) then,
  ) = _CopyWithImpl$Query$FetchCharacters$characters$results;

  factory CopyWith$Query$FetchCharacters$characters$results.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCharacters$characters$results;

  TRes call({
    String? id,
    String? name,
    String? status,
    String? species,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCharacters$characters$results<TRes>
    implements CopyWith$Query$FetchCharacters$characters$results<TRes> {
  _CopyWithImpl$Query$FetchCharacters$characters$results(
    this._instance,
    this._then,
  );

  final Query$FetchCharacters$characters$results _instance;

  final TRes Function(Query$FetchCharacters$characters$results) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? status = _undefined,
    Object? species = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCharacters$characters$results(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as String),
        species: species == _undefined || species == null
            ? _instance.species
            : (species as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCharacters$characters$results<TRes>
    implements CopyWith$Query$FetchCharacters$characters$results<TRes> {
  _CopyWithStubImpl$Query$FetchCharacters$characters$results(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? name,
    String? status,
    String? species,
    String? image,
    String? $__typename,
  }) =>
      _res;
}
