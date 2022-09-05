/// 定数類

enum Weekday {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

extension WeekdayName on Weekday {
  String get name {
    switch(this){
      case Weekday.sunday:
        return "日曜日";
      case Weekday.monday:
        return "月曜日";
      case Weekday.tuesday:
        return "火曜日";
      case Weekday.wednesday:
        return "水曜日";
      case Weekday.thursday:
        return "木曜日";
      case Weekday.friday:
        return "金曜日";
      case Weekday.saturday:
        return "土曜日";
    }
  }
}

enum TrashType {
  burnable, /// 燃えるゴミ
  unburnable, /// 燃えないゴミ
  glassBottles, /// ビン
  cans,   /// 缶
  plasticBottles, /// ペットボトル
  plasticContainers,  /// プラスチック容器
  garbagePaper, /// 雑誌
  metal,  /// 金属

  custom, /// カスタム（ユーザー入力）
}

extension TrashTypeName on TrashType {
  String get name{
    switch(this){
      case TrashType.burnable:
        return "燃えるごみ";
      case TrashType.unburnable:
        return "燃えないごみ";
      case TrashType.glassBottles:
        return "ビン";
      case TrashType.cans:
        return "缶";
      case TrashType.plasticBottles:
        return "ペットボトル";
      case TrashType.plasticContainers:
        return "プラスチック容器";
      case TrashType.garbagePaper:
        return "紙類";
      case TrashType.metal:
        return "金属";
      case TrashType.custom:
        return "カスタム";
    }
  }
}

enum Order{
  first,
  second,
  third,
  forth,
  fifth,
  every,
}

extension OrderName on Order{
  String get name {
    switch(this){
      case Order.first:
       return "第１";
      case Order.second:
        return "第２";
      case Order.third:
        return "第３";
      case Order.forth:
        return "第４";
      case Order.fifth:
        return "第５";
      case Order.every:
        return "毎週";
    }
  }
}