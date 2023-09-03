// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTranslationCollectionCollection on Isar {
  IsarCollection<TranslationCollection> get translationCollections =>
      this.collection();
}

const TranslationCollectionSchema = CollectionSchema(
  name: r'TranslationCollection',
  id: -4502405123919397724,
  properties: {
    r'arabicTranslation': PropertySchema(
      id: 0,
      name: r'arabicTranslation',
      type: IsarType.string,
    ),
    r'englishText': PropertySchema(
      id: 1,
      name: r'englishText',
      type: IsarType.string,
    )
  },
  estimateSize: _translationCollectionEstimateSize,
  serialize: _translationCollectionSerialize,
  deserialize: _translationCollectionDeserialize,
  deserializeProp: _translationCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _translationCollectionGetId,
  getLinks: _translationCollectionGetLinks,
  attach: _translationCollectionAttach,
  version: '3.1.0+1',
);

int _translationCollectionEstimateSize(
  TranslationCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.arabicTranslation.length * 3;
  bytesCount += 3 + object.englishText.length * 3;
  return bytesCount;
}

void _translationCollectionSerialize(
  TranslationCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.arabicTranslation);
  writer.writeString(offsets[1], object.englishText);
}

TranslationCollection _translationCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TranslationCollection();
  object.arabicTranslation = reader.readString(offsets[0]);
  object.englishText = reader.readString(offsets[1]);
  object.id = id;
  return object;
}

P _translationCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _translationCollectionGetId(TranslationCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _translationCollectionGetLinks(
    TranslationCollection object) {
  return [];
}

void _translationCollectionAttach(
    IsarCollection<dynamic> col, Id id, TranslationCollection object) {
  object.id = id;
}

extension TranslationCollectionQueryWhereSort
    on QueryBuilder<TranslationCollection, TranslationCollection, QWhere> {
  QueryBuilder<TranslationCollection, TranslationCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TranslationCollectionQueryWhere on QueryBuilder<TranslationCollection,
    TranslationCollection, QWhereClause> {
  QueryBuilder<TranslationCollection, TranslationCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TranslationCollectionQueryFilter on QueryBuilder<
    TranslationCollection, TranslationCollection, QFilterCondition> {
  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arabicTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'arabicTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'arabicTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'arabicTranslation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'arabicTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'arabicTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
          QAfterFilterCondition>
      arabicTranslationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'arabicTranslation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
          QAfterFilterCondition>
      arabicTranslationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'arabicTranslation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'arabicTranslation',
        value: '',
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> arabicTranslationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'arabicTranslation',
        value: '',
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'englishText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'englishText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'englishText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'englishText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'englishText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
          QAfterFilterCondition>
      englishTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
          QAfterFilterCondition>
      englishTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishText',
        value: '',
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> englishTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishText',
        value: '',
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TranslationCollectionQueryObject on QueryBuilder<
    TranslationCollection, TranslationCollection, QFilterCondition> {}

extension TranslationCollectionQueryLinks on QueryBuilder<TranslationCollection,
    TranslationCollection, QFilterCondition> {}

extension TranslationCollectionQuerySortBy
    on QueryBuilder<TranslationCollection, TranslationCollection, QSortBy> {
  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      sortByArabicTranslation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicTranslation', Sort.asc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      sortByArabicTranslationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicTranslation', Sort.desc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      sortByEnglishText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishText', Sort.asc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      sortByEnglishTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishText', Sort.desc);
    });
  }
}

extension TranslationCollectionQuerySortThenBy
    on QueryBuilder<TranslationCollection, TranslationCollection, QSortThenBy> {
  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      thenByArabicTranslation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicTranslation', Sort.asc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      thenByArabicTranslationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'arabicTranslation', Sort.desc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      thenByEnglishText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishText', Sort.asc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      thenByEnglishTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishText', Sort.desc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension TranslationCollectionQueryWhereDistinct
    on QueryBuilder<TranslationCollection, TranslationCollection, QDistinct> {
  QueryBuilder<TranslationCollection, TranslationCollection, QDistinct>
      distinctByArabicTranslation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'arabicTranslation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TranslationCollection, TranslationCollection, QDistinct>
      distinctByEnglishText({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'englishText', caseSensitive: caseSensitive);
    });
  }
}

extension TranslationCollectionQueryProperty on QueryBuilder<
    TranslationCollection, TranslationCollection, QQueryProperty> {
  QueryBuilder<TranslationCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TranslationCollection, String, QQueryOperations>
      arabicTranslationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'arabicTranslation');
    });
  }

  QueryBuilder<TranslationCollection, String, QQueryOperations>
      englishTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'englishText');
    });
  }
}
