// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Debt extends DataClass implements Insertable<Debt> {
  final int id;
  final String name;
  final double debt;
  final String description;
  final DateTime debtStartDate;
  final DateTime debtDueDate;
  final int priority;
  final bool iOwe;
  final bool completed;
  Debt(
      {@required this.id,
      @required this.name,
      @required this.debt,
      @required this.description,
      @required this.debtStartDate,
      this.debtDueDate,
      @required this.priority,
      @required this.iOwe,
      @required this.completed});
  factory Debt.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Debt(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      debt: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}debt']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      debtStartDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}debt_start_date']),
      debtDueDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}debt_due_date']),
      priority:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}priority']),
      iOwe: boolType.mapFromDatabaseResponse(data['${effectivePrefix}i_owe']),
      completed:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}completed']),
    );
  }
  factory Debt.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Debt(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      debt: serializer.fromJson<double>(json['debt']),
      description: serializer.fromJson<String>(json['description']),
      debtStartDate: serializer.fromJson<DateTime>(json['debtStartDate']),
      debtDueDate: serializer.fromJson<DateTime>(json['debtDueDate']),
      priority: serializer.fromJson<int>(json['priority']),
      iOwe: serializer.fromJson<bool>(json['iOwe']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'debt': serializer.toJson<double>(debt),
      'description': serializer.toJson<String>(description),
      'debtStartDate': serializer.toJson<DateTime>(debtStartDate),
      'debtDueDate': serializer.toJson<DateTime>(debtDueDate),
      'priority': serializer.toJson<int>(priority),
      'iOwe': serializer.toJson<bool>(iOwe),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Debt>>(bool nullToAbsent) {
    return DebtsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      debt: debt == null && nullToAbsent ? const Value.absent() : Value(debt),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      debtStartDate: debtStartDate == null && nullToAbsent
          ? const Value.absent()
          : Value(debtStartDate),
      debtDueDate: debtDueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(debtDueDate),
      priority: priority == null && nullToAbsent
          ? const Value.absent()
          : Value(priority),
      iOwe: iOwe == null && nullToAbsent ? const Value.absent() : Value(iOwe),
      completed: completed == null && nullToAbsent
          ? const Value.absent()
          : Value(completed),
    ) as T;
  }

  Debt copyWith(
          {int id,
          String name,
          double debt,
          String description,
          DateTime debtStartDate,
          DateTime debtDueDate,
          int priority,
          bool iOwe,
          bool completed}) =>
      Debt(
        id: id ?? this.id,
        name: name ?? this.name,
        debt: debt ?? this.debt,
        description: description ?? this.description,
        debtStartDate: debtStartDate ?? this.debtStartDate,
        debtDueDate: debtDueDate ?? this.debtDueDate,
        priority: priority ?? this.priority,
        iOwe: iOwe ?? this.iOwe,
        completed: completed ?? this.completed,
      );
  @override
  String toString() {
    return (StringBuffer('Debt(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('debt: $debt, ')
          ..write('description: $description, ')
          ..write('debtStartDate: $debtStartDate, ')
          ..write('debtDueDate: $debtDueDate, ')
          ..write('priority: $priority, ')
          ..write('iOwe: $iOwe, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              debt.hashCode,
              $mrjc(
                  description.hashCode,
                  $mrjc(
                      debtStartDate.hashCode,
                      $mrjc(
                          debtDueDate.hashCode,
                          $mrjc(priority.hashCode,
                              $mrjc(iOwe.hashCode, completed.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Debt &&
          other.id == id &&
          other.name == name &&
          other.debt == debt &&
          other.description == description &&
          other.debtStartDate == debtStartDate &&
          other.debtDueDate == debtDueDate &&
          other.priority == priority &&
          other.iOwe == iOwe &&
          other.completed == completed);
}

class DebtsCompanion extends UpdateCompanion<Debt> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> debt;
  final Value<String> description;
  final Value<DateTime> debtStartDate;
  final Value<DateTime> debtDueDate;
  final Value<int> priority;
  final Value<bool> iOwe;
  final Value<bool> completed;
  const DebtsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.debt = const Value.absent(),
    this.description = const Value.absent(),
    this.debtStartDate = const Value.absent(),
    this.debtDueDate = const Value.absent(),
    this.priority = const Value.absent(),
    this.iOwe = const Value.absent(),
    this.completed = const Value.absent(),
  });
  DebtsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<double> debt,
      Value<String> description,
      Value<DateTime> debtStartDate,
      Value<DateTime> debtDueDate,
      Value<int> priority,
      Value<bool> iOwe,
      Value<bool> completed}) {
    return DebtsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      debt: debt ?? this.debt,
      description: description ?? this.description,
      debtStartDate: debtStartDate ?? this.debtStartDate,
      debtDueDate: debtDueDate ?? this.debtDueDate,
      priority: priority ?? this.priority,
      iOwe: iOwe ?? this.iOwe,
      completed: completed ?? this.completed,
    );
  }
}

class $DebtsTable extends Debts with TableInfo<$DebtsTable, Debt> {
  final GeneratedDatabase _db;
  final String _alias;
  $DebtsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 15);
  }

  final VerificationMeta _debtMeta = const VerificationMeta('debt');
  GeneratedRealColumn _debt;
  @override
  GeneratedRealColumn get debt => _debt ??= _constructDebt();
  GeneratedRealColumn _constructDebt() {
    return GeneratedRealColumn(
      'debt',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
        minTextLength: 0, maxTextLength: 50);
  }

  final VerificationMeta _debtStartDateMeta =
      const VerificationMeta('debtStartDate');
  GeneratedDateTimeColumn _debtStartDate;
  @override
  GeneratedDateTimeColumn get debtStartDate =>
      _debtStartDate ??= _constructDebtStartDate();
  GeneratedDateTimeColumn _constructDebtStartDate() {
    return GeneratedDateTimeColumn(
      'debt_start_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _debtDueDateMeta =
      const VerificationMeta('debtDueDate');
  GeneratedDateTimeColumn _debtDueDate;
  @override
  GeneratedDateTimeColumn get debtDueDate =>
      _debtDueDate ??= _constructDebtDueDate();
  GeneratedDateTimeColumn _constructDebtDueDate() {
    return GeneratedDateTimeColumn(
      'debt_due_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _priorityMeta = const VerificationMeta('priority');
  GeneratedIntColumn _priority;
  @override
  GeneratedIntColumn get priority => _priority ??= _constructPriority();
  GeneratedIntColumn _constructPriority() {
    return GeneratedIntColumn(
      'priority',
      $tableName,
      false,
    );
  }

  final VerificationMeta _iOweMeta = const VerificationMeta('iOwe');
  GeneratedBoolColumn _iOwe;
  @override
  GeneratedBoolColumn get iOwe => _iOwe ??= _constructIOwe();
  GeneratedBoolColumn _constructIOwe() {
    return GeneratedBoolColumn(
      'i_owe',
      $tableName,
      false,
    );
  }

  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  GeneratedBoolColumn _completed;
  @override
  GeneratedBoolColumn get completed => _completed ??= _constructCompleted();
  GeneratedBoolColumn _constructCompleted() {
    return GeneratedBoolColumn('completed', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        debt,
        description,
        debtStartDate,
        debtDueDate,
        priority,
        iOwe,
        completed
      ];
  @override
  $DebtsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'debts';
  @override
  final String actualTableName = 'debts';
  @override
  VerificationContext validateIntegrity(DebtsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.debt.present) {
      context.handle(
          _debtMeta, debt.isAcceptableValue(d.debt.value, _debtMeta));
    } else if (debt.isRequired && isInserting) {
      context.missing(_debtMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (description.isRequired && isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.debtStartDate.present) {
      context.handle(
          _debtStartDateMeta,
          debtStartDate.isAcceptableValue(
              d.debtStartDate.value, _debtStartDateMeta));
    } else if (debtStartDate.isRequired && isInserting) {
      context.missing(_debtStartDateMeta);
    }
    if (d.debtDueDate.present) {
      context.handle(_debtDueDateMeta,
          debtDueDate.isAcceptableValue(d.debtDueDate.value, _debtDueDateMeta));
    } else if (debtDueDate.isRequired && isInserting) {
      context.missing(_debtDueDateMeta);
    }
    if (d.priority.present) {
      context.handle(_priorityMeta,
          priority.isAcceptableValue(d.priority.value, _priorityMeta));
    } else if (priority.isRequired && isInserting) {
      context.missing(_priorityMeta);
    }
    if (d.iOwe.present) {
      context.handle(
          _iOweMeta, iOwe.isAcceptableValue(d.iOwe.value, _iOweMeta));
    } else if (iOwe.isRequired && isInserting) {
      context.missing(_iOweMeta);
    }
    if (d.completed.present) {
      context.handle(_completedMeta,
          completed.isAcceptableValue(d.completed.value, _completedMeta));
    } else if (completed.isRequired && isInserting) {
      context.missing(_completedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Debt map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Debt.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DebtsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.debt.present) {
      map['debt'] = Variable<double, RealType>(d.debt.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.debtStartDate.present) {
      map['debt_start_date'] =
          Variable<DateTime, DateTimeType>(d.debtStartDate.value);
    }
    if (d.debtDueDate.present) {
      map['debt_due_date'] =
          Variable<DateTime, DateTimeType>(d.debtDueDate.value);
    }
    if (d.priority.present) {
      map['priority'] = Variable<int, IntType>(d.priority.value);
    }
    if (d.iOwe.present) {
      map['i_owe'] = Variable<bool, BoolType>(d.iOwe.value);
    }
    if (d.completed.present) {
      map['completed'] = Variable<bool, BoolType>(d.completed.value);
    }
    return map;
  }

  @override
  $DebtsTable createAlias(String alias) {
    return $DebtsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $DebtsTable _debts;
  $DebtsTable get debts => _debts ??= $DebtsTable(this);
  DebtDao _debtDao;
  DebtDao get debtDao => _debtDao ??= DebtDao(this as AppDatabase);
  @override
  List<TableInfo> get allTables => [debts];
}
