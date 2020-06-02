// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || debt != null) {
      map['debt'] = Variable<double>(debt);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || debtStartDate != null) {
      map['debt_start_date'] = Variable<DateTime>(debtStartDate);
    }
    if (!nullToAbsent || debtDueDate != null) {
      map['debt_due_date'] = Variable<DateTime>(debtDueDate);
    }
    if (!nullToAbsent || priority != null) {
      map['priority'] = Variable<int>(priority);
    }
    if (!nullToAbsent || iOwe != null) {
      map['i_owe'] = Variable<bool>(iOwe);
    }
    if (!nullToAbsent || completed != null) {
      map['completed'] = Variable<bool>(completed);
    }
    return map;
  }

  DebtsCompanion toCompanion(bool nullToAbsent) {
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
    );
  }

  factory Debt.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
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
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Debt &&
          other.id == this.id &&
          other.name == this.name &&
          other.debt == this.debt &&
          other.description == this.description &&
          other.debtStartDate == this.debtStartDate &&
          other.debtDueDate == this.debtDueDate &&
          other.priority == this.priority &&
          other.iOwe == this.iOwe &&
          other.completed == this.completed);
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
  DebtsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required double debt,
    @required String description,
    @required DateTime debtStartDate,
    this.debtDueDate = const Value.absent(),
    @required int priority,
    @required bool iOwe,
    this.completed = const Value.absent(),
  })  : name = Value(name),
        debt = Value(debt),
        description = Value(description),
        debtStartDate = Value(debtStartDate),
        priority = Value(priority),
        iOwe = Value(iOwe);
  static Insertable<Debt> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<double> debt,
    Expression<String> description,
    Expression<DateTime> debtStartDate,
    Expression<DateTime> debtDueDate,
    Expression<int> priority,
    Expression<bool> iOwe,
    Expression<bool> completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (debt != null) 'debt': debt,
      if (description != null) 'description': description,
      if (debtStartDate != null) 'debt_start_date': debtStartDate,
      if (debtDueDate != null) 'debt_due_date': debtDueDate,
      if (priority != null) 'priority': priority,
      if (iOwe != null) 'i_owe': iOwe,
      if (completed != null) 'completed': completed,
    });
  }

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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (debt.present) {
      map['debt'] = Variable<double>(debt.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (debtStartDate.present) {
      map['debt_start_date'] = Variable<DateTime>(debtStartDate.value);
    }
    if (debtDueDate.present) {
      map['debt_due_date'] = Variable<DateTime>(debtDueDate.value);
    }
    if (priority.present) {
      map['priority'] = Variable<int>(priority.value);
    }
    if (iOwe.present) {
      map['i_owe'] = Variable<bool>(iOwe.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
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
  VerificationContext validateIntegrity(Insertable<Debt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('debt')) {
      context.handle(
          _debtMeta, debt.isAcceptableOrUnknown(data['debt'], _debtMeta));
    } else if (isInserting) {
      context.missing(_debtMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('debt_start_date')) {
      context.handle(
          _debtStartDateMeta,
          debtStartDate.isAcceptableOrUnknown(
              data['debt_start_date'], _debtStartDateMeta));
    } else if (isInserting) {
      context.missing(_debtStartDateMeta);
    }
    if (data.containsKey('debt_due_date')) {
      context.handle(
          _debtDueDateMeta,
          debtDueDate.isAcceptableOrUnknown(
              data['debt_due_date'], _debtDueDateMeta));
    }
    if (data.containsKey('priority')) {
      context.handle(_priorityMeta,
          priority.isAcceptableOrUnknown(data['priority'], _priorityMeta));
    } else if (isInserting) {
      context.missing(_priorityMeta);
    }
    if (data.containsKey('i_owe')) {
      context.handle(
          _iOweMeta, iOwe.isAcceptableOrUnknown(data['i_owe'], _iOweMeta));
    } else if (isInserting) {
      context.missing(_iOweMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed'], _completedMeta));
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
  $DebtsTable createAlias(String alias) {
    return $DebtsTable(_db, alias);
  }
}

class DatabaseColorProfile extends DataClass
    implements Insertable<DatabaseColorProfile> {
  final int id;
  final String profileName;
  final int primaryColor;
  final int accentColor;
  final int backGroundColor;
  final int brightness;
  final int accentColorBrightness;
  final int canvasColor;
  final int highlightColor;
  final int hintColor;
  final int splashColor;
  final int buttonColor;
  final int cardColor;
  final int dialogBackgroundColor;
  final int cursorColor1;
  final int cursorColor2;
  final int cursorColor3;
  final int disabledColor;
  final double fontSizeHeadline;
  final double fontSizeTitle;
  final double fontSizeBody1;
  final double fontSizeBody2;
  final double fontSizeBody3;
  final int fontColorHeadline;
  final int fontColorTitle;
  final int fontColor1;
  final int fontColor2;
  final int fontColor3;
  final String fontFamily1;
  final String fontFamily2;
  final String fontFamily3;
  DatabaseColorProfile(
      {@required this.id,
      @required this.profileName,
      @required this.primaryColor,
      @required this.accentColor,
      @required this.backGroundColor,
      @required this.brightness,
      @required this.accentColorBrightness,
      @required this.canvasColor,
      @required this.highlightColor,
      @required this.hintColor,
      @required this.splashColor,
      @required this.buttonColor,
      @required this.cardColor,
      @required this.dialogBackgroundColor,
      @required this.cursorColor1,
      @required this.cursorColor2,
      @required this.cursorColor3,
      @required this.disabledColor,
      @required this.fontSizeHeadline,
      @required this.fontSizeTitle,
      @required this.fontSizeBody1,
      @required this.fontSizeBody2,
      @required this.fontSizeBody3,
      @required this.fontColorHeadline,
      @required this.fontColorTitle,
      @required this.fontColor1,
      @required this.fontColor2,
      @required this.fontColor3,
      @required this.fontFamily1,
      @required this.fontFamily2,
      @required this.fontFamily3});
  factory DatabaseColorProfile.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return DatabaseColorProfile(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      profileName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_name']),
      primaryColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}primary_color']),
      accentColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}accent_color']),
      backGroundColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}back_ground_color']),
      brightness:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}brightness']),
      accentColorBrightness: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}accent_color_brightness']),
      canvasColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}canvas_color']),
      highlightColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}highlight_color']),
      hintColor:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}hint_color']),
      splashColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}splash_color']),
      buttonColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}button_color']),
      cardColor:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}card_color']),
      dialogBackgroundColor: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}dialog_background_color']),
      cursorColor1: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}cursor_color1']),
      cursorColor2: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}cursor_color2']),
      cursorColor3: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}cursor_color3']),
      disabledColor: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}disabled_color']),
      fontSizeHeadline: doubleType.mapFromDatabaseResponse(
          data['${effectivePrefix}font_size_headline']),
      fontSizeTitle: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_size_title']),
      fontSizeBody1: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_size_body1']),
      fontSizeBody2: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_size_body2']),
      fontSizeBody3: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_size_body3']),
      fontColorHeadline: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}font_color_headline']),
      fontColorTitle: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_color_title']),
      fontColor1: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_color1']),
      fontColor2: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_color2']),
      fontColor3: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_color3']),
      fontFamily1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_family1']),
      fontFamily2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_family2']),
      fontFamily3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}font_family3']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || profileName != null) {
      map['profile_name'] = Variable<String>(profileName);
    }
    if (!nullToAbsent || primaryColor != null) {
      map['primary_color'] = Variable<int>(primaryColor);
    }
    if (!nullToAbsent || accentColor != null) {
      map['accent_color'] = Variable<int>(accentColor);
    }
    if (!nullToAbsent || backGroundColor != null) {
      map['back_ground_color'] = Variable<int>(backGroundColor);
    }
    if (!nullToAbsent || brightness != null) {
      map['brightness'] = Variable<int>(brightness);
    }
    if (!nullToAbsent || accentColorBrightness != null) {
      map['accent_color_brightness'] = Variable<int>(accentColorBrightness);
    }
    if (!nullToAbsent || canvasColor != null) {
      map['canvas_color'] = Variable<int>(canvasColor);
    }
    if (!nullToAbsent || highlightColor != null) {
      map['highlight_color'] = Variable<int>(highlightColor);
    }
    if (!nullToAbsent || hintColor != null) {
      map['hint_color'] = Variable<int>(hintColor);
    }
    if (!nullToAbsent || splashColor != null) {
      map['splash_color'] = Variable<int>(splashColor);
    }
    if (!nullToAbsent || buttonColor != null) {
      map['button_color'] = Variable<int>(buttonColor);
    }
    if (!nullToAbsent || cardColor != null) {
      map['card_color'] = Variable<int>(cardColor);
    }
    if (!nullToAbsent || dialogBackgroundColor != null) {
      map['dialog_background_color'] = Variable<int>(dialogBackgroundColor);
    }
    if (!nullToAbsent || cursorColor1 != null) {
      map['cursor_color1'] = Variable<int>(cursorColor1);
    }
    if (!nullToAbsent || cursorColor2 != null) {
      map['cursor_color2'] = Variable<int>(cursorColor2);
    }
    if (!nullToAbsent || cursorColor3 != null) {
      map['cursor_color3'] = Variable<int>(cursorColor3);
    }
    if (!nullToAbsent || disabledColor != null) {
      map['disabled_color'] = Variable<int>(disabledColor);
    }
    if (!nullToAbsent || fontSizeHeadline != null) {
      map['font_size_headline'] = Variable<double>(fontSizeHeadline);
    }
    if (!nullToAbsent || fontSizeTitle != null) {
      map['font_size_title'] = Variable<double>(fontSizeTitle);
    }
    if (!nullToAbsent || fontSizeBody1 != null) {
      map['font_size_body1'] = Variable<double>(fontSizeBody1);
    }
    if (!nullToAbsent || fontSizeBody2 != null) {
      map['font_size_body2'] = Variable<double>(fontSizeBody2);
    }
    if (!nullToAbsent || fontSizeBody3 != null) {
      map['font_size_body3'] = Variable<double>(fontSizeBody3);
    }
    if (!nullToAbsent || fontColorHeadline != null) {
      map['font_color_headline'] = Variable<int>(fontColorHeadline);
    }
    if (!nullToAbsent || fontColorTitle != null) {
      map['font_color_title'] = Variable<int>(fontColorTitle);
    }
    if (!nullToAbsent || fontColor1 != null) {
      map['font_color1'] = Variable<int>(fontColor1);
    }
    if (!nullToAbsent || fontColor2 != null) {
      map['font_color2'] = Variable<int>(fontColor2);
    }
    if (!nullToAbsent || fontColor3 != null) {
      map['font_color3'] = Variable<int>(fontColor3);
    }
    if (!nullToAbsent || fontFamily1 != null) {
      map['font_family1'] = Variable<String>(fontFamily1);
    }
    if (!nullToAbsent || fontFamily2 != null) {
      map['font_family2'] = Variable<String>(fontFamily2);
    }
    if (!nullToAbsent || fontFamily3 != null) {
      map['font_family3'] = Variable<String>(fontFamily3);
    }
    return map;
  }

  DatabaseColorProfilesCompanion toCompanion(bool nullToAbsent) {
    return DatabaseColorProfilesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      profileName: profileName == null && nullToAbsent
          ? const Value.absent()
          : Value(profileName),
      primaryColor: primaryColor == null && nullToAbsent
          ? const Value.absent()
          : Value(primaryColor),
      accentColor: accentColor == null && nullToAbsent
          ? const Value.absent()
          : Value(accentColor),
      backGroundColor: backGroundColor == null && nullToAbsent
          ? const Value.absent()
          : Value(backGroundColor),
      brightness: brightness == null && nullToAbsent
          ? const Value.absent()
          : Value(brightness),
      accentColorBrightness: accentColorBrightness == null && nullToAbsent
          ? const Value.absent()
          : Value(accentColorBrightness),
      canvasColor: canvasColor == null && nullToAbsent
          ? const Value.absent()
          : Value(canvasColor),
      highlightColor: highlightColor == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightColor),
      hintColor: hintColor == null && nullToAbsent
          ? const Value.absent()
          : Value(hintColor),
      splashColor: splashColor == null && nullToAbsent
          ? const Value.absent()
          : Value(splashColor),
      buttonColor: buttonColor == null && nullToAbsent
          ? const Value.absent()
          : Value(buttonColor),
      cardColor: cardColor == null && nullToAbsent
          ? const Value.absent()
          : Value(cardColor),
      dialogBackgroundColor: dialogBackgroundColor == null && nullToAbsent
          ? const Value.absent()
          : Value(dialogBackgroundColor),
      cursorColor1: cursorColor1 == null && nullToAbsent
          ? const Value.absent()
          : Value(cursorColor1),
      cursorColor2: cursorColor2 == null && nullToAbsent
          ? const Value.absent()
          : Value(cursorColor2),
      cursorColor3: cursorColor3 == null && nullToAbsent
          ? const Value.absent()
          : Value(cursorColor3),
      disabledColor: disabledColor == null && nullToAbsent
          ? const Value.absent()
          : Value(disabledColor),
      fontSizeHeadline: fontSizeHeadline == null && nullToAbsent
          ? const Value.absent()
          : Value(fontSizeHeadline),
      fontSizeTitle: fontSizeTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(fontSizeTitle),
      fontSizeBody1: fontSizeBody1 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontSizeBody1),
      fontSizeBody2: fontSizeBody2 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontSizeBody2),
      fontSizeBody3: fontSizeBody3 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontSizeBody3),
      fontColorHeadline: fontColorHeadline == null && nullToAbsent
          ? const Value.absent()
          : Value(fontColorHeadline),
      fontColorTitle: fontColorTitle == null && nullToAbsent
          ? const Value.absent()
          : Value(fontColorTitle),
      fontColor1: fontColor1 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontColor1),
      fontColor2: fontColor2 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontColor2),
      fontColor3: fontColor3 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontColor3),
      fontFamily1: fontFamily1 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontFamily1),
      fontFamily2: fontFamily2 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontFamily2),
      fontFamily3: fontFamily3 == null && nullToAbsent
          ? const Value.absent()
          : Value(fontFamily3),
    );
  }

  factory DatabaseColorProfile.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DatabaseColorProfile(
      id: serializer.fromJson<int>(json['id']),
      profileName: serializer.fromJson<String>(json['profileName']),
      primaryColor: serializer.fromJson<int>(json['primaryColor']),
      accentColor: serializer.fromJson<int>(json['accentColor']),
      backGroundColor: serializer.fromJson<int>(json['backGroundColor']),
      brightness: serializer.fromJson<int>(json['brightness']),
      accentColorBrightness:
          serializer.fromJson<int>(json['accentColorBrightness']),
      canvasColor: serializer.fromJson<int>(json['canvasColor']),
      highlightColor: serializer.fromJson<int>(json['highlightColor']),
      hintColor: serializer.fromJson<int>(json['hintColor']),
      splashColor: serializer.fromJson<int>(json['splashColor']),
      buttonColor: serializer.fromJson<int>(json['buttonColor']),
      cardColor: serializer.fromJson<int>(json['cardColor']),
      dialogBackgroundColor:
          serializer.fromJson<int>(json['dialogBackgroundColor']),
      cursorColor1: serializer.fromJson<int>(json['cursorColor1']),
      cursorColor2: serializer.fromJson<int>(json['cursorColor2']),
      cursorColor3: serializer.fromJson<int>(json['cursorColor3']),
      disabledColor: serializer.fromJson<int>(json['disabledColor']),
      fontSizeHeadline: serializer.fromJson<double>(json['fontSizeHeadline']),
      fontSizeTitle: serializer.fromJson<double>(json['fontSizeTitle']),
      fontSizeBody1: serializer.fromJson<double>(json['fontSizeBody1']),
      fontSizeBody2: serializer.fromJson<double>(json['fontSizeBody2']),
      fontSizeBody3: serializer.fromJson<double>(json['fontSizeBody3']),
      fontColorHeadline: serializer.fromJson<int>(json['fontColorHeadline']),
      fontColorTitle: serializer.fromJson<int>(json['fontColorTitle']),
      fontColor1: serializer.fromJson<int>(json['fontColor1']),
      fontColor2: serializer.fromJson<int>(json['fontColor2']),
      fontColor3: serializer.fromJson<int>(json['fontColor3']),
      fontFamily1: serializer.fromJson<String>(json['fontFamily1']),
      fontFamily2: serializer.fromJson<String>(json['fontFamily2']),
      fontFamily3: serializer.fromJson<String>(json['fontFamily3']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'profileName': serializer.toJson<String>(profileName),
      'primaryColor': serializer.toJson<int>(primaryColor),
      'accentColor': serializer.toJson<int>(accentColor),
      'backGroundColor': serializer.toJson<int>(backGroundColor),
      'brightness': serializer.toJson<int>(brightness),
      'accentColorBrightness': serializer.toJson<int>(accentColorBrightness),
      'canvasColor': serializer.toJson<int>(canvasColor),
      'highlightColor': serializer.toJson<int>(highlightColor),
      'hintColor': serializer.toJson<int>(hintColor),
      'splashColor': serializer.toJson<int>(splashColor),
      'buttonColor': serializer.toJson<int>(buttonColor),
      'cardColor': serializer.toJson<int>(cardColor),
      'dialogBackgroundColor': serializer.toJson<int>(dialogBackgroundColor),
      'cursorColor1': serializer.toJson<int>(cursorColor1),
      'cursorColor2': serializer.toJson<int>(cursorColor2),
      'cursorColor3': serializer.toJson<int>(cursorColor3),
      'disabledColor': serializer.toJson<int>(disabledColor),
      'fontSizeHeadline': serializer.toJson<double>(fontSizeHeadline),
      'fontSizeTitle': serializer.toJson<double>(fontSizeTitle),
      'fontSizeBody1': serializer.toJson<double>(fontSizeBody1),
      'fontSizeBody2': serializer.toJson<double>(fontSizeBody2),
      'fontSizeBody3': serializer.toJson<double>(fontSizeBody3),
      'fontColorHeadline': serializer.toJson<int>(fontColorHeadline),
      'fontColorTitle': serializer.toJson<int>(fontColorTitle),
      'fontColor1': serializer.toJson<int>(fontColor1),
      'fontColor2': serializer.toJson<int>(fontColor2),
      'fontColor3': serializer.toJson<int>(fontColor3),
      'fontFamily1': serializer.toJson<String>(fontFamily1),
      'fontFamily2': serializer.toJson<String>(fontFamily2),
      'fontFamily3': serializer.toJson<String>(fontFamily3),
    };
  }

  DatabaseColorProfile copyWith(
          {int id,
          String profileName,
          int primaryColor,
          int accentColor,
          int backGroundColor,
          int brightness,
          int accentColorBrightness,
          int canvasColor,
          int highlightColor,
          int hintColor,
          int splashColor,
          int buttonColor,
          int cardColor,
          int dialogBackgroundColor,
          int cursorColor1,
          int cursorColor2,
          int cursorColor3,
          int disabledColor,
          double fontSizeHeadline,
          double fontSizeTitle,
          double fontSizeBody1,
          double fontSizeBody2,
          double fontSizeBody3,
          int fontColorHeadline,
          int fontColorTitle,
          int fontColor1,
          int fontColor2,
          int fontColor3,
          String fontFamily1,
          String fontFamily2,
          String fontFamily3}) =>
      DatabaseColorProfile(
        id: id ?? this.id,
        profileName: profileName ?? this.profileName,
        primaryColor: primaryColor ?? this.primaryColor,
        accentColor: accentColor ?? this.accentColor,
        backGroundColor: backGroundColor ?? this.backGroundColor,
        brightness: brightness ?? this.brightness,
        accentColorBrightness:
            accentColorBrightness ?? this.accentColorBrightness,
        canvasColor: canvasColor ?? this.canvasColor,
        highlightColor: highlightColor ?? this.highlightColor,
        hintColor: hintColor ?? this.hintColor,
        splashColor: splashColor ?? this.splashColor,
        buttonColor: buttonColor ?? this.buttonColor,
        cardColor: cardColor ?? this.cardColor,
        dialogBackgroundColor:
            dialogBackgroundColor ?? this.dialogBackgroundColor,
        cursorColor1: cursorColor1 ?? this.cursorColor1,
        cursorColor2: cursorColor2 ?? this.cursorColor2,
        cursorColor3: cursorColor3 ?? this.cursorColor3,
        disabledColor: disabledColor ?? this.disabledColor,
        fontSizeHeadline: fontSizeHeadline ?? this.fontSizeHeadline,
        fontSizeTitle: fontSizeTitle ?? this.fontSizeTitle,
        fontSizeBody1: fontSizeBody1 ?? this.fontSizeBody1,
        fontSizeBody2: fontSizeBody2 ?? this.fontSizeBody2,
        fontSizeBody3: fontSizeBody3 ?? this.fontSizeBody3,
        fontColorHeadline: fontColorHeadline ?? this.fontColorHeadline,
        fontColorTitle: fontColorTitle ?? this.fontColorTitle,
        fontColor1: fontColor1 ?? this.fontColor1,
        fontColor2: fontColor2 ?? this.fontColor2,
        fontColor3: fontColor3 ?? this.fontColor3,
        fontFamily1: fontFamily1 ?? this.fontFamily1,
        fontFamily2: fontFamily2 ?? this.fontFamily2,
        fontFamily3: fontFamily3 ?? this.fontFamily3,
      );
  @override
  String toString() {
    return (StringBuffer('DatabaseColorProfile(')
          ..write('id: $id, ')
          ..write('profileName: $profileName, ')
          ..write('primaryColor: $primaryColor, ')
          ..write('accentColor: $accentColor, ')
          ..write('backGroundColor: $backGroundColor, ')
          ..write('brightness: $brightness, ')
          ..write('accentColorBrightness: $accentColorBrightness, ')
          ..write('canvasColor: $canvasColor, ')
          ..write('highlightColor: $highlightColor, ')
          ..write('hintColor: $hintColor, ')
          ..write('splashColor: $splashColor, ')
          ..write('buttonColor: $buttonColor, ')
          ..write('cardColor: $cardColor, ')
          ..write('dialogBackgroundColor: $dialogBackgroundColor, ')
          ..write('cursorColor1: $cursorColor1, ')
          ..write('cursorColor2: $cursorColor2, ')
          ..write('cursorColor3: $cursorColor3, ')
          ..write('disabledColor: $disabledColor, ')
          ..write('fontSizeHeadline: $fontSizeHeadline, ')
          ..write('fontSizeTitle: $fontSizeTitle, ')
          ..write('fontSizeBody1: $fontSizeBody1, ')
          ..write('fontSizeBody2: $fontSizeBody2, ')
          ..write('fontSizeBody3: $fontSizeBody3, ')
          ..write('fontColorHeadline: $fontColorHeadline, ')
          ..write('fontColorTitle: $fontColorTitle, ')
          ..write('fontColor1: $fontColor1, ')
          ..write('fontColor2: $fontColor2, ')
          ..write('fontColor3: $fontColor3, ')
          ..write('fontFamily1: $fontFamily1, ')
          ..write('fontFamily2: $fontFamily2, ')
          ..write('fontFamily3: $fontFamily3')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          profileName.hashCode,
          $mrjc(
              primaryColor.hashCode,
              $mrjc(
                  accentColor.hashCode,
                  $mrjc(
                      backGroundColor.hashCode,
                      $mrjc(
                          brightness.hashCode,
                          $mrjc(
                              accentColorBrightness.hashCode,
                              $mrjc(
                                  canvasColor.hashCode,
                                  $mrjc(
                                      highlightColor.hashCode,
                                      $mrjc(
                                          hintColor.hashCode,
                                          $mrjc(
                                              splashColor.hashCode,
                                              $mrjc(
                                                  buttonColor.hashCode,
                                                  $mrjc(
                                                      cardColor.hashCode,
                                                      $mrjc(
                                                          dialogBackgroundColor
                                                              .hashCode,
                                                          $mrjc(
                                                              cursorColor1
                                                                  .hashCode,
                                                              $mrjc(
                                                                  cursorColor2
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      cursorColor3
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          disabledColor
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              fontSizeHeadline.hashCode,
                                                                              $mrjc(fontSizeTitle.hashCode, $mrjc(fontSizeBody1.hashCode, $mrjc(fontSizeBody2.hashCode, $mrjc(fontSizeBody3.hashCode, $mrjc(fontColorHeadline.hashCode, $mrjc(fontColorTitle.hashCode, $mrjc(fontColor1.hashCode, $mrjc(fontColor2.hashCode, $mrjc(fontColor3.hashCode, $mrjc(fontFamily1.hashCode, $mrjc(fontFamily2.hashCode, fontFamily3.hashCode)))))))))))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DatabaseColorProfile &&
          other.id == this.id &&
          other.profileName == this.profileName &&
          other.primaryColor == this.primaryColor &&
          other.accentColor == this.accentColor &&
          other.backGroundColor == this.backGroundColor &&
          other.brightness == this.brightness &&
          other.accentColorBrightness == this.accentColorBrightness &&
          other.canvasColor == this.canvasColor &&
          other.highlightColor == this.highlightColor &&
          other.hintColor == this.hintColor &&
          other.splashColor == this.splashColor &&
          other.buttonColor == this.buttonColor &&
          other.cardColor == this.cardColor &&
          other.dialogBackgroundColor == this.dialogBackgroundColor &&
          other.cursorColor1 == this.cursorColor1 &&
          other.cursorColor2 == this.cursorColor2 &&
          other.cursorColor3 == this.cursorColor3 &&
          other.disabledColor == this.disabledColor &&
          other.fontSizeHeadline == this.fontSizeHeadline &&
          other.fontSizeTitle == this.fontSizeTitle &&
          other.fontSizeBody1 == this.fontSizeBody1 &&
          other.fontSizeBody2 == this.fontSizeBody2 &&
          other.fontSizeBody3 == this.fontSizeBody3 &&
          other.fontColorHeadline == this.fontColorHeadline &&
          other.fontColorTitle == this.fontColorTitle &&
          other.fontColor1 == this.fontColor1 &&
          other.fontColor2 == this.fontColor2 &&
          other.fontColor3 == this.fontColor3 &&
          other.fontFamily1 == this.fontFamily1 &&
          other.fontFamily2 == this.fontFamily2 &&
          other.fontFamily3 == this.fontFamily3);
}

class DatabaseColorProfilesCompanion
    extends UpdateCompanion<DatabaseColorProfile> {
  final Value<int> id;
  final Value<String> profileName;
  final Value<int> primaryColor;
  final Value<int> accentColor;
  final Value<int> backGroundColor;
  final Value<int> brightness;
  final Value<int> accentColorBrightness;
  final Value<int> canvasColor;
  final Value<int> highlightColor;
  final Value<int> hintColor;
  final Value<int> splashColor;
  final Value<int> buttonColor;
  final Value<int> cardColor;
  final Value<int> dialogBackgroundColor;
  final Value<int> cursorColor1;
  final Value<int> cursorColor2;
  final Value<int> cursorColor3;
  final Value<int> disabledColor;
  final Value<double> fontSizeHeadline;
  final Value<double> fontSizeTitle;
  final Value<double> fontSizeBody1;
  final Value<double> fontSizeBody2;
  final Value<double> fontSizeBody3;
  final Value<int> fontColorHeadline;
  final Value<int> fontColorTitle;
  final Value<int> fontColor1;
  final Value<int> fontColor2;
  final Value<int> fontColor3;
  final Value<String> fontFamily1;
  final Value<String> fontFamily2;
  final Value<String> fontFamily3;
  const DatabaseColorProfilesCompanion({
    this.id = const Value.absent(),
    this.profileName = const Value.absent(),
    this.primaryColor = const Value.absent(),
    this.accentColor = const Value.absent(),
    this.backGroundColor = const Value.absent(),
    this.brightness = const Value.absent(),
    this.accentColorBrightness = const Value.absent(),
    this.canvasColor = const Value.absent(),
    this.highlightColor = const Value.absent(),
    this.hintColor = const Value.absent(),
    this.splashColor = const Value.absent(),
    this.buttonColor = const Value.absent(),
    this.cardColor = const Value.absent(),
    this.dialogBackgroundColor = const Value.absent(),
    this.cursorColor1 = const Value.absent(),
    this.cursorColor2 = const Value.absent(),
    this.cursorColor3 = const Value.absent(),
    this.disabledColor = const Value.absent(),
    this.fontSizeHeadline = const Value.absent(),
    this.fontSizeTitle = const Value.absent(),
    this.fontSizeBody1 = const Value.absent(),
    this.fontSizeBody2 = const Value.absent(),
    this.fontSizeBody3 = const Value.absent(),
    this.fontColorHeadline = const Value.absent(),
    this.fontColorTitle = const Value.absent(),
    this.fontColor1 = const Value.absent(),
    this.fontColor2 = const Value.absent(),
    this.fontColor3 = const Value.absent(),
    this.fontFamily1 = const Value.absent(),
    this.fontFamily2 = const Value.absent(),
    this.fontFamily3 = const Value.absent(),
  });
  DatabaseColorProfilesCompanion.insert({
    this.id = const Value.absent(),
    @required String profileName,
    @required int primaryColor,
    @required int accentColor,
    @required int backGroundColor,
    @required int brightness,
    @required int accentColorBrightness,
    @required int canvasColor,
    @required int highlightColor,
    @required int hintColor,
    @required int splashColor,
    @required int buttonColor,
    @required int cardColor,
    @required int dialogBackgroundColor,
    @required int cursorColor1,
    @required int cursorColor2,
    @required int cursorColor3,
    @required int disabledColor,
    @required double fontSizeHeadline,
    @required double fontSizeTitle,
    @required double fontSizeBody1,
    @required double fontSizeBody2,
    @required double fontSizeBody3,
    @required int fontColorHeadline,
    @required int fontColorTitle,
    @required int fontColor1,
    @required int fontColor2,
    @required int fontColor3,
    @required String fontFamily1,
    @required String fontFamily2,
    @required String fontFamily3,
  })  : profileName = Value(profileName),
        primaryColor = Value(primaryColor),
        accentColor = Value(accentColor),
        backGroundColor = Value(backGroundColor),
        brightness = Value(brightness),
        accentColorBrightness = Value(accentColorBrightness),
        canvasColor = Value(canvasColor),
        highlightColor = Value(highlightColor),
        hintColor = Value(hintColor),
        splashColor = Value(splashColor),
        buttonColor = Value(buttonColor),
        cardColor = Value(cardColor),
        dialogBackgroundColor = Value(dialogBackgroundColor),
        cursorColor1 = Value(cursorColor1),
        cursorColor2 = Value(cursorColor2),
        cursorColor3 = Value(cursorColor3),
        disabledColor = Value(disabledColor),
        fontSizeHeadline = Value(fontSizeHeadline),
        fontSizeTitle = Value(fontSizeTitle),
        fontSizeBody1 = Value(fontSizeBody1),
        fontSizeBody2 = Value(fontSizeBody2),
        fontSizeBody3 = Value(fontSizeBody3),
        fontColorHeadline = Value(fontColorHeadline),
        fontColorTitle = Value(fontColorTitle),
        fontColor1 = Value(fontColor1),
        fontColor2 = Value(fontColor2),
        fontColor3 = Value(fontColor3),
        fontFamily1 = Value(fontFamily1),
        fontFamily2 = Value(fontFamily2),
        fontFamily3 = Value(fontFamily3);
  static Insertable<DatabaseColorProfile> custom({
    Expression<int> id,
    Expression<String> profileName,
    Expression<int> primaryColor,
    Expression<int> accentColor,
    Expression<int> backGroundColor,
    Expression<int> brightness,
    Expression<int> accentColorBrightness,
    Expression<int> canvasColor,
    Expression<int> highlightColor,
    Expression<int> hintColor,
    Expression<int> splashColor,
    Expression<int> buttonColor,
    Expression<int> cardColor,
    Expression<int> dialogBackgroundColor,
    Expression<int> cursorColor1,
    Expression<int> cursorColor2,
    Expression<int> cursorColor3,
    Expression<int> disabledColor,
    Expression<double> fontSizeHeadline,
    Expression<double> fontSizeTitle,
    Expression<double> fontSizeBody1,
    Expression<double> fontSizeBody2,
    Expression<double> fontSizeBody3,
    Expression<int> fontColorHeadline,
    Expression<int> fontColorTitle,
    Expression<int> fontColor1,
    Expression<int> fontColor2,
    Expression<int> fontColor3,
    Expression<String> fontFamily1,
    Expression<String> fontFamily2,
    Expression<String> fontFamily3,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (profileName != null) 'profile_name': profileName,
      if (primaryColor != null) 'primary_color': primaryColor,
      if (accentColor != null) 'accent_color': accentColor,
      if (backGroundColor != null) 'back_ground_color': backGroundColor,
      if (brightness != null) 'brightness': brightness,
      if (accentColorBrightness != null)
        'accent_color_brightness': accentColorBrightness,
      if (canvasColor != null) 'canvas_color': canvasColor,
      if (highlightColor != null) 'highlight_color': highlightColor,
      if (hintColor != null) 'hint_color': hintColor,
      if (splashColor != null) 'splash_color': splashColor,
      if (buttonColor != null) 'button_color': buttonColor,
      if (cardColor != null) 'card_color': cardColor,
      if (dialogBackgroundColor != null)
        'dialog_background_color': dialogBackgroundColor,
      if (cursorColor1 != null) 'cursor_color1': cursorColor1,
      if (cursorColor2 != null) 'cursor_color2': cursorColor2,
      if (cursorColor3 != null) 'cursor_color3': cursorColor3,
      if (disabledColor != null) 'disabled_color': disabledColor,
      if (fontSizeHeadline != null) 'font_size_headline': fontSizeHeadline,
      if (fontSizeTitle != null) 'font_size_title': fontSizeTitle,
      if (fontSizeBody1 != null) 'font_size_body1': fontSizeBody1,
      if (fontSizeBody2 != null) 'font_size_body2': fontSizeBody2,
      if (fontSizeBody3 != null) 'font_size_body3': fontSizeBody3,
      if (fontColorHeadline != null) 'font_color_headline': fontColorHeadline,
      if (fontColorTitle != null) 'font_color_title': fontColorTitle,
      if (fontColor1 != null) 'font_color1': fontColor1,
      if (fontColor2 != null) 'font_color2': fontColor2,
      if (fontColor3 != null) 'font_color3': fontColor3,
      if (fontFamily1 != null) 'font_family1': fontFamily1,
      if (fontFamily2 != null) 'font_family2': fontFamily2,
      if (fontFamily3 != null) 'font_family3': fontFamily3,
    });
  }

  DatabaseColorProfilesCompanion copyWith(
      {Value<int> id,
      Value<String> profileName,
      Value<int> primaryColor,
      Value<int> accentColor,
      Value<int> backGroundColor,
      Value<int> brightness,
      Value<int> accentColorBrightness,
      Value<int> canvasColor,
      Value<int> highlightColor,
      Value<int> hintColor,
      Value<int> splashColor,
      Value<int> buttonColor,
      Value<int> cardColor,
      Value<int> dialogBackgroundColor,
      Value<int> cursorColor1,
      Value<int> cursorColor2,
      Value<int> cursorColor3,
      Value<int> disabledColor,
      Value<double> fontSizeHeadline,
      Value<double> fontSizeTitle,
      Value<double> fontSizeBody1,
      Value<double> fontSizeBody2,
      Value<double> fontSizeBody3,
      Value<int> fontColorHeadline,
      Value<int> fontColorTitle,
      Value<int> fontColor1,
      Value<int> fontColor2,
      Value<int> fontColor3,
      Value<String> fontFamily1,
      Value<String> fontFamily2,
      Value<String> fontFamily3}) {
    return DatabaseColorProfilesCompanion(
      id: id ?? this.id,
      profileName: profileName ?? this.profileName,
      primaryColor: primaryColor ?? this.primaryColor,
      accentColor: accentColor ?? this.accentColor,
      backGroundColor: backGroundColor ?? this.backGroundColor,
      brightness: brightness ?? this.brightness,
      accentColorBrightness:
          accentColorBrightness ?? this.accentColorBrightness,
      canvasColor: canvasColor ?? this.canvasColor,
      highlightColor: highlightColor ?? this.highlightColor,
      hintColor: hintColor ?? this.hintColor,
      splashColor: splashColor ?? this.splashColor,
      buttonColor: buttonColor ?? this.buttonColor,
      cardColor: cardColor ?? this.cardColor,
      dialogBackgroundColor:
          dialogBackgroundColor ?? this.dialogBackgroundColor,
      cursorColor1: cursorColor1 ?? this.cursorColor1,
      cursorColor2: cursorColor2 ?? this.cursorColor2,
      cursorColor3: cursorColor3 ?? this.cursorColor3,
      disabledColor: disabledColor ?? this.disabledColor,
      fontSizeHeadline: fontSizeHeadline ?? this.fontSizeHeadline,
      fontSizeTitle: fontSizeTitle ?? this.fontSizeTitle,
      fontSizeBody1: fontSizeBody1 ?? this.fontSizeBody1,
      fontSizeBody2: fontSizeBody2 ?? this.fontSizeBody2,
      fontSizeBody3: fontSizeBody3 ?? this.fontSizeBody3,
      fontColorHeadline: fontColorHeadline ?? this.fontColorHeadline,
      fontColorTitle: fontColorTitle ?? this.fontColorTitle,
      fontColor1: fontColor1 ?? this.fontColor1,
      fontColor2: fontColor2 ?? this.fontColor2,
      fontColor3: fontColor3 ?? this.fontColor3,
      fontFamily1: fontFamily1 ?? this.fontFamily1,
      fontFamily2: fontFamily2 ?? this.fontFamily2,
      fontFamily3: fontFamily3 ?? this.fontFamily3,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (profileName.present) {
      map['profile_name'] = Variable<String>(profileName.value);
    }
    if (primaryColor.present) {
      map['primary_color'] = Variable<int>(primaryColor.value);
    }
    if (accentColor.present) {
      map['accent_color'] = Variable<int>(accentColor.value);
    }
    if (backGroundColor.present) {
      map['back_ground_color'] = Variable<int>(backGroundColor.value);
    }
    if (brightness.present) {
      map['brightness'] = Variable<int>(brightness.value);
    }
    if (accentColorBrightness.present) {
      map['accent_color_brightness'] =
          Variable<int>(accentColorBrightness.value);
    }
    if (canvasColor.present) {
      map['canvas_color'] = Variable<int>(canvasColor.value);
    }
    if (highlightColor.present) {
      map['highlight_color'] = Variable<int>(highlightColor.value);
    }
    if (hintColor.present) {
      map['hint_color'] = Variable<int>(hintColor.value);
    }
    if (splashColor.present) {
      map['splash_color'] = Variable<int>(splashColor.value);
    }
    if (buttonColor.present) {
      map['button_color'] = Variable<int>(buttonColor.value);
    }
    if (cardColor.present) {
      map['card_color'] = Variable<int>(cardColor.value);
    }
    if (dialogBackgroundColor.present) {
      map['dialog_background_color'] =
          Variable<int>(dialogBackgroundColor.value);
    }
    if (cursorColor1.present) {
      map['cursor_color1'] = Variable<int>(cursorColor1.value);
    }
    if (cursorColor2.present) {
      map['cursor_color2'] = Variable<int>(cursorColor2.value);
    }
    if (cursorColor3.present) {
      map['cursor_color3'] = Variable<int>(cursorColor3.value);
    }
    if (disabledColor.present) {
      map['disabled_color'] = Variable<int>(disabledColor.value);
    }
    if (fontSizeHeadline.present) {
      map['font_size_headline'] = Variable<double>(fontSizeHeadline.value);
    }
    if (fontSizeTitle.present) {
      map['font_size_title'] = Variable<double>(fontSizeTitle.value);
    }
    if (fontSizeBody1.present) {
      map['font_size_body1'] = Variable<double>(fontSizeBody1.value);
    }
    if (fontSizeBody2.present) {
      map['font_size_body2'] = Variable<double>(fontSizeBody2.value);
    }
    if (fontSizeBody3.present) {
      map['font_size_body3'] = Variable<double>(fontSizeBody3.value);
    }
    if (fontColorHeadline.present) {
      map['font_color_headline'] = Variable<int>(fontColorHeadline.value);
    }
    if (fontColorTitle.present) {
      map['font_color_title'] = Variable<int>(fontColorTitle.value);
    }
    if (fontColor1.present) {
      map['font_color1'] = Variable<int>(fontColor1.value);
    }
    if (fontColor2.present) {
      map['font_color2'] = Variable<int>(fontColor2.value);
    }
    if (fontColor3.present) {
      map['font_color3'] = Variable<int>(fontColor3.value);
    }
    if (fontFamily1.present) {
      map['font_family1'] = Variable<String>(fontFamily1.value);
    }
    if (fontFamily2.present) {
      map['font_family2'] = Variable<String>(fontFamily2.value);
    }
    if (fontFamily3.present) {
      map['font_family3'] = Variable<String>(fontFamily3.value);
    }
    return map;
  }
}

class $DatabaseColorProfilesTable extends DatabaseColorProfiles
    with TableInfo<$DatabaseColorProfilesTable, DatabaseColorProfile> {
  final GeneratedDatabase _db;
  final String _alias;
  $DatabaseColorProfilesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _profileNameMeta =
      const VerificationMeta('profileName');
  GeneratedTextColumn _profileName;
  @override
  GeneratedTextColumn get profileName =>
      _profileName ??= _constructProfileName();
  GeneratedTextColumn _constructProfileName() {
    return GeneratedTextColumn('profile_name', $tableName, false,
        minTextLength: 0, maxTextLength: 15);
  }

  final VerificationMeta _primaryColorMeta =
      const VerificationMeta('primaryColor');
  GeneratedIntColumn _primaryColor;
  @override
  GeneratedIntColumn get primaryColor =>
      _primaryColor ??= _constructPrimaryColor();
  GeneratedIntColumn _constructPrimaryColor() {
    return GeneratedIntColumn(
      'primary_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _accentColorMeta =
      const VerificationMeta('accentColor');
  GeneratedIntColumn _accentColor;
  @override
  GeneratedIntColumn get accentColor =>
      _accentColor ??= _constructAccentColor();
  GeneratedIntColumn _constructAccentColor() {
    return GeneratedIntColumn(
      'accent_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _backGroundColorMeta =
      const VerificationMeta('backGroundColor');
  GeneratedIntColumn _backGroundColor;
  @override
  GeneratedIntColumn get backGroundColor =>
      _backGroundColor ??= _constructBackGroundColor();
  GeneratedIntColumn _constructBackGroundColor() {
    return GeneratedIntColumn(
      'back_ground_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _brightnessMeta = const VerificationMeta('brightness');
  GeneratedIntColumn _brightness;
  @override
  GeneratedIntColumn get brightness => _brightness ??= _constructBrightness();
  GeneratedIntColumn _constructBrightness() {
    return GeneratedIntColumn(
      'brightness',
      $tableName,
      false,
    );
  }

  final VerificationMeta _accentColorBrightnessMeta =
      const VerificationMeta('accentColorBrightness');
  GeneratedIntColumn _accentColorBrightness;
  @override
  GeneratedIntColumn get accentColorBrightness =>
      _accentColorBrightness ??= _constructAccentColorBrightness();
  GeneratedIntColumn _constructAccentColorBrightness() {
    return GeneratedIntColumn(
      'accent_color_brightness',
      $tableName,
      false,
    );
  }

  final VerificationMeta _canvasColorMeta =
      const VerificationMeta('canvasColor');
  GeneratedIntColumn _canvasColor;
  @override
  GeneratedIntColumn get canvasColor =>
      _canvasColor ??= _constructCanvasColor();
  GeneratedIntColumn _constructCanvasColor() {
    return GeneratedIntColumn(
      'canvas_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _highlightColorMeta =
      const VerificationMeta('highlightColor');
  GeneratedIntColumn _highlightColor;
  @override
  GeneratedIntColumn get highlightColor =>
      _highlightColor ??= _constructHighlightColor();
  GeneratedIntColumn _constructHighlightColor() {
    return GeneratedIntColumn(
      'highlight_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _hintColorMeta = const VerificationMeta('hintColor');
  GeneratedIntColumn _hintColor;
  @override
  GeneratedIntColumn get hintColor => _hintColor ??= _constructHintColor();
  GeneratedIntColumn _constructHintColor() {
    return GeneratedIntColumn(
      'hint_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _splashColorMeta =
      const VerificationMeta('splashColor');
  GeneratedIntColumn _splashColor;
  @override
  GeneratedIntColumn get splashColor =>
      _splashColor ??= _constructSplashColor();
  GeneratedIntColumn _constructSplashColor() {
    return GeneratedIntColumn(
      'splash_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _buttonColorMeta =
      const VerificationMeta('buttonColor');
  GeneratedIntColumn _buttonColor;
  @override
  GeneratedIntColumn get buttonColor =>
      _buttonColor ??= _constructButtonColor();
  GeneratedIntColumn _constructButtonColor() {
    return GeneratedIntColumn(
      'button_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cardColorMeta = const VerificationMeta('cardColor');
  GeneratedIntColumn _cardColor;
  @override
  GeneratedIntColumn get cardColor => _cardColor ??= _constructCardColor();
  GeneratedIntColumn _constructCardColor() {
    return GeneratedIntColumn(
      'card_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dialogBackgroundColorMeta =
      const VerificationMeta('dialogBackgroundColor');
  GeneratedIntColumn _dialogBackgroundColor;
  @override
  GeneratedIntColumn get dialogBackgroundColor =>
      _dialogBackgroundColor ??= _constructDialogBackgroundColor();
  GeneratedIntColumn _constructDialogBackgroundColor() {
    return GeneratedIntColumn(
      'dialog_background_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cursorColor1Meta =
      const VerificationMeta('cursorColor1');
  GeneratedIntColumn _cursorColor1;
  @override
  GeneratedIntColumn get cursorColor1 =>
      _cursorColor1 ??= _constructCursorColor1();
  GeneratedIntColumn _constructCursorColor1() {
    return GeneratedIntColumn(
      'cursor_color1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cursorColor2Meta =
      const VerificationMeta('cursorColor2');
  GeneratedIntColumn _cursorColor2;
  @override
  GeneratedIntColumn get cursorColor2 =>
      _cursorColor2 ??= _constructCursorColor2();
  GeneratedIntColumn _constructCursorColor2() {
    return GeneratedIntColumn(
      'cursor_color2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cursorColor3Meta =
      const VerificationMeta('cursorColor3');
  GeneratedIntColumn _cursorColor3;
  @override
  GeneratedIntColumn get cursorColor3 =>
      _cursorColor3 ??= _constructCursorColor3();
  GeneratedIntColumn _constructCursorColor3() {
    return GeneratedIntColumn(
      'cursor_color3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _disabledColorMeta =
      const VerificationMeta('disabledColor');
  GeneratedIntColumn _disabledColor;
  @override
  GeneratedIntColumn get disabledColor =>
      _disabledColor ??= _constructDisabledColor();
  GeneratedIntColumn _constructDisabledColor() {
    return GeneratedIntColumn(
      'disabled_color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontSizeHeadlineMeta =
      const VerificationMeta('fontSizeHeadline');
  GeneratedRealColumn _fontSizeHeadline;
  @override
  GeneratedRealColumn get fontSizeHeadline =>
      _fontSizeHeadline ??= _constructFontSizeHeadline();
  GeneratedRealColumn _constructFontSizeHeadline() {
    return GeneratedRealColumn(
      'font_size_headline',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontSizeTitleMeta =
      const VerificationMeta('fontSizeTitle');
  GeneratedRealColumn _fontSizeTitle;
  @override
  GeneratedRealColumn get fontSizeTitle =>
      _fontSizeTitle ??= _constructFontSizeTitle();
  GeneratedRealColumn _constructFontSizeTitle() {
    return GeneratedRealColumn(
      'font_size_title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontSizeBody1Meta =
      const VerificationMeta('fontSizeBody1');
  GeneratedRealColumn _fontSizeBody1;
  @override
  GeneratedRealColumn get fontSizeBody1 =>
      _fontSizeBody1 ??= _constructFontSizeBody1();
  GeneratedRealColumn _constructFontSizeBody1() {
    return GeneratedRealColumn(
      'font_size_body1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontSizeBody2Meta =
      const VerificationMeta('fontSizeBody2');
  GeneratedRealColumn _fontSizeBody2;
  @override
  GeneratedRealColumn get fontSizeBody2 =>
      _fontSizeBody2 ??= _constructFontSizeBody2();
  GeneratedRealColumn _constructFontSizeBody2() {
    return GeneratedRealColumn(
      'font_size_body2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontSizeBody3Meta =
      const VerificationMeta('fontSizeBody3');
  GeneratedRealColumn _fontSizeBody3;
  @override
  GeneratedRealColumn get fontSizeBody3 =>
      _fontSizeBody3 ??= _constructFontSizeBody3();
  GeneratedRealColumn _constructFontSizeBody3() {
    return GeneratedRealColumn(
      'font_size_body3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontColorHeadlineMeta =
      const VerificationMeta('fontColorHeadline');
  GeneratedIntColumn _fontColorHeadline;
  @override
  GeneratedIntColumn get fontColorHeadline =>
      _fontColorHeadline ??= _constructFontColorHeadline();
  GeneratedIntColumn _constructFontColorHeadline() {
    return GeneratedIntColumn(
      'font_color_headline',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontColorTitleMeta =
      const VerificationMeta('fontColorTitle');
  GeneratedIntColumn _fontColorTitle;
  @override
  GeneratedIntColumn get fontColorTitle =>
      _fontColorTitle ??= _constructFontColorTitle();
  GeneratedIntColumn _constructFontColorTitle() {
    return GeneratedIntColumn(
      'font_color_title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontColor1Meta = const VerificationMeta('fontColor1');
  GeneratedIntColumn _fontColor1;
  @override
  GeneratedIntColumn get fontColor1 => _fontColor1 ??= _constructFontColor1();
  GeneratedIntColumn _constructFontColor1() {
    return GeneratedIntColumn(
      'font_color1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontColor2Meta = const VerificationMeta('fontColor2');
  GeneratedIntColumn _fontColor2;
  @override
  GeneratedIntColumn get fontColor2 => _fontColor2 ??= _constructFontColor2();
  GeneratedIntColumn _constructFontColor2() {
    return GeneratedIntColumn(
      'font_color2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontColor3Meta = const VerificationMeta('fontColor3');
  GeneratedIntColumn _fontColor3;
  @override
  GeneratedIntColumn get fontColor3 => _fontColor3 ??= _constructFontColor3();
  GeneratedIntColumn _constructFontColor3() {
    return GeneratedIntColumn(
      'font_color3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontFamily1Meta =
      const VerificationMeta('fontFamily1');
  GeneratedTextColumn _fontFamily1;
  @override
  GeneratedTextColumn get fontFamily1 =>
      _fontFamily1 ??= _constructFontFamily1();
  GeneratedTextColumn _constructFontFamily1() {
    return GeneratedTextColumn(
      'font_family1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontFamily2Meta =
      const VerificationMeta('fontFamily2');
  GeneratedTextColumn _fontFamily2;
  @override
  GeneratedTextColumn get fontFamily2 =>
      _fontFamily2 ??= _constructFontFamily2();
  GeneratedTextColumn _constructFontFamily2() {
    return GeneratedTextColumn(
      'font_family2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fontFamily3Meta =
      const VerificationMeta('fontFamily3');
  GeneratedTextColumn _fontFamily3;
  @override
  GeneratedTextColumn get fontFamily3 =>
      _fontFamily3 ??= _constructFontFamily3();
  GeneratedTextColumn _constructFontFamily3() {
    return GeneratedTextColumn(
      'font_family3',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        profileName,
        primaryColor,
        accentColor,
        backGroundColor,
        brightness,
        accentColorBrightness,
        canvasColor,
        highlightColor,
        hintColor,
        splashColor,
        buttonColor,
        cardColor,
        dialogBackgroundColor,
        cursorColor1,
        cursorColor2,
        cursorColor3,
        disabledColor,
        fontSizeHeadline,
        fontSizeTitle,
        fontSizeBody1,
        fontSizeBody2,
        fontSizeBody3,
        fontColorHeadline,
        fontColorTitle,
        fontColor1,
        fontColor2,
        fontColor3,
        fontFamily1,
        fontFamily2,
        fontFamily3
      ];
  @override
  $DatabaseColorProfilesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'database_color_profiles';
  @override
  final String actualTableName = 'database_color_profiles';
  @override
  VerificationContext validateIntegrity(
      Insertable<DatabaseColorProfile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('profile_name')) {
      context.handle(
          _profileNameMeta,
          profileName.isAcceptableOrUnknown(
              data['profile_name'], _profileNameMeta));
    } else if (isInserting) {
      context.missing(_profileNameMeta);
    }
    if (data.containsKey('primary_color')) {
      context.handle(
          _primaryColorMeta,
          primaryColor.isAcceptableOrUnknown(
              data['primary_color'], _primaryColorMeta));
    } else if (isInserting) {
      context.missing(_primaryColorMeta);
    }
    if (data.containsKey('accent_color')) {
      context.handle(
          _accentColorMeta,
          accentColor.isAcceptableOrUnknown(
              data['accent_color'], _accentColorMeta));
    } else if (isInserting) {
      context.missing(_accentColorMeta);
    }
    if (data.containsKey('back_ground_color')) {
      context.handle(
          _backGroundColorMeta,
          backGroundColor.isAcceptableOrUnknown(
              data['back_ground_color'], _backGroundColorMeta));
    } else if (isInserting) {
      context.missing(_backGroundColorMeta);
    }
    if (data.containsKey('brightness')) {
      context.handle(
          _brightnessMeta,
          brightness.isAcceptableOrUnknown(
              data['brightness'], _brightnessMeta));
    } else if (isInserting) {
      context.missing(_brightnessMeta);
    }
    if (data.containsKey('accent_color_brightness')) {
      context.handle(
          _accentColorBrightnessMeta,
          accentColorBrightness.isAcceptableOrUnknown(
              data['accent_color_brightness'], _accentColorBrightnessMeta));
    } else if (isInserting) {
      context.missing(_accentColorBrightnessMeta);
    }
    if (data.containsKey('canvas_color')) {
      context.handle(
          _canvasColorMeta,
          canvasColor.isAcceptableOrUnknown(
              data['canvas_color'], _canvasColorMeta));
    } else if (isInserting) {
      context.missing(_canvasColorMeta);
    }
    if (data.containsKey('highlight_color')) {
      context.handle(
          _highlightColorMeta,
          highlightColor.isAcceptableOrUnknown(
              data['highlight_color'], _highlightColorMeta));
    } else if (isInserting) {
      context.missing(_highlightColorMeta);
    }
    if (data.containsKey('hint_color')) {
      context.handle(_hintColorMeta,
          hintColor.isAcceptableOrUnknown(data['hint_color'], _hintColorMeta));
    } else if (isInserting) {
      context.missing(_hintColorMeta);
    }
    if (data.containsKey('splash_color')) {
      context.handle(
          _splashColorMeta,
          splashColor.isAcceptableOrUnknown(
              data['splash_color'], _splashColorMeta));
    } else if (isInserting) {
      context.missing(_splashColorMeta);
    }
    if (data.containsKey('button_color')) {
      context.handle(
          _buttonColorMeta,
          buttonColor.isAcceptableOrUnknown(
              data['button_color'], _buttonColorMeta));
    } else if (isInserting) {
      context.missing(_buttonColorMeta);
    }
    if (data.containsKey('card_color')) {
      context.handle(_cardColorMeta,
          cardColor.isAcceptableOrUnknown(data['card_color'], _cardColorMeta));
    } else if (isInserting) {
      context.missing(_cardColorMeta);
    }
    if (data.containsKey('dialog_background_color')) {
      context.handle(
          _dialogBackgroundColorMeta,
          dialogBackgroundColor.isAcceptableOrUnknown(
              data['dialog_background_color'], _dialogBackgroundColorMeta));
    } else if (isInserting) {
      context.missing(_dialogBackgroundColorMeta);
    }
    if (data.containsKey('cursor_color1')) {
      context.handle(
          _cursorColor1Meta,
          cursorColor1.isAcceptableOrUnknown(
              data['cursor_color1'], _cursorColor1Meta));
    } else if (isInserting) {
      context.missing(_cursorColor1Meta);
    }
    if (data.containsKey('cursor_color2')) {
      context.handle(
          _cursorColor2Meta,
          cursorColor2.isAcceptableOrUnknown(
              data['cursor_color2'], _cursorColor2Meta));
    } else if (isInserting) {
      context.missing(_cursorColor2Meta);
    }
    if (data.containsKey('cursor_color3')) {
      context.handle(
          _cursorColor3Meta,
          cursorColor3.isAcceptableOrUnknown(
              data['cursor_color3'], _cursorColor3Meta));
    } else if (isInserting) {
      context.missing(_cursorColor3Meta);
    }
    if (data.containsKey('disabled_color')) {
      context.handle(
          _disabledColorMeta,
          disabledColor.isAcceptableOrUnknown(
              data['disabled_color'], _disabledColorMeta));
    } else if (isInserting) {
      context.missing(_disabledColorMeta);
    }
    if (data.containsKey('font_size_headline')) {
      context.handle(
          _fontSizeHeadlineMeta,
          fontSizeHeadline.isAcceptableOrUnknown(
              data['font_size_headline'], _fontSizeHeadlineMeta));
    } else if (isInserting) {
      context.missing(_fontSizeHeadlineMeta);
    }
    if (data.containsKey('font_size_title')) {
      context.handle(
          _fontSizeTitleMeta,
          fontSizeTitle.isAcceptableOrUnknown(
              data['font_size_title'], _fontSizeTitleMeta));
    } else if (isInserting) {
      context.missing(_fontSizeTitleMeta);
    }
    if (data.containsKey('font_size_body1')) {
      context.handle(
          _fontSizeBody1Meta,
          fontSizeBody1.isAcceptableOrUnknown(
              data['font_size_body1'], _fontSizeBody1Meta));
    } else if (isInserting) {
      context.missing(_fontSizeBody1Meta);
    }
    if (data.containsKey('font_size_body2')) {
      context.handle(
          _fontSizeBody2Meta,
          fontSizeBody2.isAcceptableOrUnknown(
              data['font_size_body2'], _fontSizeBody2Meta));
    } else if (isInserting) {
      context.missing(_fontSizeBody2Meta);
    }
    if (data.containsKey('font_size_body3')) {
      context.handle(
          _fontSizeBody3Meta,
          fontSizeBody3.isAcceptableOrUnknown(
              data['font_size_body3'], _fontSizeBody3Meta));
    } else if (isInserting) {
      context.missing(_fontSizeBody3Meta);
    }
    if (data.containsKey('font_color_headline')) {
      context.handle(
          _fontColorHeadlineMeta,
          fontColorHeadline.isAcceptableOrUnknown(
              data['font_color_headline'], _fontColorHeadlineMeta));
    } else if (isInserting) {
      context.missing(_fontColorHeadlineMeta);
    }
    if (data.containsKey('font_color_title')) {
      context.handle(
          _fontColorTitleMeta,
          fontColorTitle.isAcceptableOrUnknown(
              data['font_color_title'], _fontColorTitleMeta));
    } else if (isInserting) {
      context.missing(_fontColorTitleMeta);
    }
    if (data.containsKey('font_color1')) {
      context.handle(
          _fontColor1Meta,
          fontColor1.isAcceptableOrUnknown(
              data['font_color1'], _fontColor1Meta));
    } else if (isInserting) {
      context.missing(_fontColor1Meta);
    }
    if (data.containsKey('font_color2')) {
      context.handle(
          _fontColor2Meta,
          fontColor2.isAcceptableOrUnknown(
              data['font_color2'], _fontColor2Meta));
    } else if (isInserting) {
      context.missing(_fontColor2Meta);
    }
    if (data.containsKey('font_color3')) {
      context.handle(
          _fontColor3Meta,
          fontColor3.isAcceptableOrUnknown(
              data['font_color3'], _fontColor3Meta));
    } else if (isInserting) {
      context.missing(_fontColor3Meta);
    }
    if (data.containsKey('font_family1')) {
      context.handle(
          _fontFamily1Meta,
          fontFamily1.isAcceptableOrUnknown(
              data['font_family1'], _fontFamily1Meta));
    } else if (isInserting) {
      context.missing(_fontFamily1Meta);
    }
    if (data.containsKey('font_family2')) {
      context.handle(
          _fontFamily2Meta,
          fontFamily2.isAcceptableOrUnknown(
              data['font_family2'], _fontFamily2Meta));
    } else if (isInserting) {
      context.missing(_fontFamily2Meta);
    }
    if (data.containsKey('font_family3')) {
      context.handle(
          _fontFamily3Meta,
          fontFamily3.isAcceptableOrUnknown(
              data['font_family3'], _fontFamily3Meta));
    } else if (isInserting) {
      context.missing(_fontFamily3Meta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DatabaseColorProfile map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DatabaseColorProfile.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $DatabaseColorProfilesTable createAlias(String alias) {
    return $DatabaseColorProfilesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $DebtsTable _debts;
  $DebtsTable get debts => _debts ??= $DebtsTable(this);
  $DatabaseColorProfilesTable _databaseColorProfiles;
  $DatabaseColorProfilesTable get databaseColorProfiles =>
      _databaseColorProfiles ??= $DatabaseColorProfilesTable(this);
  DebtDao _debtDao;
  DebtDao get debtDao => _debtDao ??= DebtDao(this as AppDatabase);
  ColorProfileDao _colorProfileDao;
  ColorProfileDao get colorProfileDao =>
      _colorProfileDao ??= ColorProfileDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [debts, databaseColorProfiles];
}
