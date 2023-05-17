class StocksModel {
  StocksModel({
    required this.items,
    required this.hasMore,
    required this.limit,
    required this.offset,
    required this.count,
    required this.links,
  });
  late final List<Items> items;
  late final bool hasMore;
  late final int limit;
  late final int offset;
  late final int count;
  late final List<Links> links;

  StocksModel.fromJson(Map<String, dynamic> json) {
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    hasMore = json['hasMore'];
    limit = json['limit'];
    offset = json['offset'];
    count = json['count'];
    links = List.from(json['links']).map((e) => Links.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['items'] = items.map((e) => e.toJson()).toList();
    _data['hasMore'] = hasMore;
    _data['limit'] = limit;
    _data['offset'] = offset;
    _data['count'] = count;
    _data['links'] = links.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Items {
  Items({
    required this.id,
    required this.symbol,
    required this.longName,
    required this.amount,
    required this.kurs,
    required this.datum,
    required this.price,
    required this.gesamt,
    required this.percent,
    required this.diffToday,
    required this.diffPercentToday,
    required this.performance,
    required this.lastUpdate,
    this.stopKurs,
    this.stopLastUpdate,
  });
  late final int id;
  late final String symbol;
  late final String longName;
  late final int amount;
  late final double? kurs;
  late final String datum;
  late final double? price;
  late final double? gesamt;
  late final double? percent;
  late final double? diffToday;
  late final double? diffPercentToday;
  late final double? performance;
  late final String lastUpdate;
  late final double? stopKurs;
  late final String? stopLastUpdate;

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    longName = json['long_name'];
    amount = json['amount'];
    kurs = json['kurs'].toDouble();
    datum = json['datum'];
    price = json['price'].toDouble();
    gesamt = json['gesamt'].toDouble();
    percent = json['percent'].toDouble();
    diffToday = json['diff_today'].toDouble();
    diffPercentToday = json['diff_percent_today'].toDouble();
    performance = json['performance'].toDouble();
    lastUpdate = json['last_update'];
    stopKurs = null;
    stopLastUpdate = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['symbol'] = symbol;
    _data['long_name'] = longName;
    _data['amount'] = amount;
    _data['kurs'] = kurs;
    _data['datum'] = datum;
    _data['price'] = price;
    _data['gesamt'] = gesamt;
    _data['percent'] = percent;
    _data['diff_today'] = diffToday;
    _data['diff_percent_today'] = diffPercentToday;
    _data['performance'] = performance;
    _data['last_update'] = lastUpdate;
    _data['stop_kurs'] = stopKurs;
    _data['stop_last_update'] = stopLastUpdate;
    return _data;
  }
}

class Links {
  Links({
    required this.rel,
    required this.href,
  });
  late final String rel;
  late final String href;

  Links.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rel'] = rel;
    _data['href'] = href;
    return _data;
  }
}
