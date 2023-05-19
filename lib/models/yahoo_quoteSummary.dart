// To parse this JSON data, do
//
//     final summary = summaryFromJson(jsonString);

import 'dart:convert';

Summary summaryFromJson(String str) => Summary.fromJson(json.decode(str));

String summaryToJson(Summary data) => json.encode(data.toJson());

class Summary {
  final QuoteSummary quoteSummary;

  Summary({
    required this.quoteSummary,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        quoteSummary: QuoteSummary.fromJson(json["quoteSummary"]),
      );

  Map<String, dynamic> toJson() => {
        "quoteSummary": quoteSummary.toJson(),
      };
}

class QuoteSummary {
  final List<Result> result;
  final dynamic error;

  QuoteSummary({
    required this.result,
    required this.error,
  });

  factory QuoteSummary.fromJson(Map<String, dynamic> json) => QuoteSummary(
        result:
            List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
        "error": error,
      };
}

class Result {
  final RecommendationTrend recommendationTrend;
  final SummaryDetail summaryDetail;
  final UpgradeDowngradeHistory upgradeDowngradeHistory;
  final Price price;

  Result({
    required this.recommendationTrend,
    required this.summaryDetail,
    required this.upgradeDowngradeHistory,
    required this.price,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        recommendationTrend:
            RecommendationTrend.fromJson(json["recommendationTrend"]),
        summaryDetail: SummaryDetail.fromJson(json["summaryDetail"]),
        upgradeDowngradeHistory:
            UpgradeDowngradeHistory.fromJson(json["upgradeDowngradeHistory"]),
        price: Price.fromJson(json["price"]),
      );

  Map<String, dynamic> toJson() => {
        "recommendationTrend": recommendationTrend.toJson(),
        "summaryDetail": summaryDetail.toJson(),
        "upgradeDowngradeHistory": upgradeDowngradeHistory.toJson(),
        "price": price.toJson(),
      };
}

class Price {
  final int maxAge;
  final CirculatingSupply preMarketChange;
  final CirculatingSupply preMarketPrice;
  final CirculatingSupply postMarketChange;
  final CirculatingSupply postMarketPrice;
  final RegularMarketChange regularMarketChangePercent;
  final RegularMarketChange regularMarketChange;
  final int regularMarketTime;
  final AverageDailyVolume10Day priceHint;
  final RegularMarketChange regularMarketPrice;
  final RegularMarketChange regularMarketDayHigh;
  final RegularMarketChange regularMarketDayLow;
  final AverageDailyVolume10Day regularMarketVolume;
  final AverageDailyVolume10Day averageDailyVolume10Day;
  final AverageDailyVolume10Day averageDailyVolume3Month;
  final RegularMarketChange regularMarketPreviousClose;
  final String regularMarketSource;
  final RegularMarketChange regularMarketOpen;
  final CirculatingSupply strikePrice;
  final CirculatingSupply openInterest;
  final String exchange;
  final String exchangeName;
  final int exchangeDataDelayedBy;
  final String marketState;
  final String quoteType;
  final String symbol;
  final dynamic underlyingSymbol;
  final String shortName;
  final String longName;
  final String currency;
  final String quoteSourceName;
  final String currencySymbol;
  final dynamic fromCurrency;
  final dynamic toCurrency;
  final dynamic lastMarket;
  final CirculatingSupply volume24Hr;
  final CirculatingSupply volumeAllCurrencies;
  final CirculatingSupply circulatingSupply;
  final AverageDailyVolume10Day marketCap;

  Price({
    required this.maxAge,
    required this.preMarketChange,
    required this.preMarketPrice,
    required this.postMarketChange,
    required this.postMarketPrice,
    required this.regularMarketChangePercent,
    required this.regularMarketChange,
    required this.regularMarketTime,
    required this.priceHint,
    required this.regularMarketPrice,
    required this.regularMarketDayHigh,
    required this.regularMarketDayLow,
    required this.regularMarketVolume,
    required this.averageDailyVolume10Day,
    required this.averageDailyVolume3Month,
    required this.regularMarketPreviousClose,
    required this.regularMarketSource,
    required this.regularMarketOpen,
    required this.strikePrice,
    required this.openInterest,
    required this.exchange,
    required this.exchangeName,
    required this.exchangeDataDelayedBy,
    required this.marketState,
    required this.quoteType,
    required this.symbol,
    required this.underlyingSymbol,
    required this.shortName,
    required this.longName,
    required this.currency,
    required this.quoteSourceName,
    required this.currencySymbol,
    required this.fromCurrency,
    required this.toCurrency,
    required this.lastMarket,
    required this.volume24Hr,
    required this.volumeAllCurrencies,
    required this.circulatingSupply,
    required this.marketCap,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        maxAge: json["maxAge"],
        preMarketChange: CirculatingSupply.fromJson(json["preMarketChange"]),
        preMarketPrice: CirculatingSupply.fromJson(json["preMarketPrice"]),
        postMarketChange: CirculatingSupply.fromJson(json["postMarketChange"]),
        postMarketPrice: CirculatingSupply.fromJson(json["postMarketPrice"]),
        regularMarketChangePercent:
            RegularMarketChange.fromJson(json["regularMarketChangePercent"]),
        regularMarketChange:
            RegularMarketChange.fromJson(json["regularMarketChange"]),
        regularMarketTime: json["regularMarketTime"],
        priceHint: AverageDailyVolume10Day.fromJson(json["priceHint"]),
        regularMarketPrice:
            RegularMarketChange.fromJson(json["regularMarketPrice"]),
        regularMarketDayHigh:
            RegularMarketChange.fromJson(json["regularMarketDayHigh"]),
        regularMarketDayLow:
            RegularMarketChange.fromJson(json["regularMarketDayLow"]),
        regularMarketVolume:
            AverageDailyVolume10Day.fromJson(json["regularMarketVolume"]),
        averageDailyVolume10Day:
            AverageDailyVolume10Day.fromJson(json["averageDailyVolume10Day"]),
        averageDailyVolume3Month:
            AverageDailyVolume10Day.fromJson(json["averageDailyVolume3Month"]),
        regularMarketPreviousClose:
            RegularMarketChange.fromJson(json["regularMarketPreviousClose"]),
        regularMarketSource: json["regularMarketSource"],
        regularMarketOpen:
            RegularMarketChange.fromJson(json["regularMarketOpen"]),
        strikePrice: CirculatingSupply.fromJson(json["strikePrice"]),
        openInterest: CirculatingSupply.fromJson(json["openInterest"]),
        exchange: json["exchange"],
        exchangeName: json["exchangeName"],
        exchangeDataDelayedBy: json["exchangeDataDelayedBy"],
        marketState: json["marketState"],
        quoteType: json["quoteType"],
        symbol: json["symbol"],
        underlyingSymbol: json["underlyingSymbol"],
        shortName: json["shortName"],
        longName: json["longName"],
        currency: json["currency"],
        quoteSourceName: json["quoteSourceName"],
        currencySymbol: json["currencySymbol"],
        fromCurrency: json["fromCurrency"],
        toCurrency: json["toCurrency"],
        lastMarket: json["lastMarket"],
        volume24Hr: CirculatingSupply.fromJson(json["volume24Hr"]),
        volumeAllCurrencies:
            CirculatingSupply.fromJson(json["volumeAllCurrencies"]),
        circulatingSupply:
            CirculatingSupply.fromJson(json["circulatingSupply"]),
        marketCap: AverageDailyVolume10Day.fromJson(json["marketCap"]),
      );

  Map<String, dynamic> toJson() => {
        "maxAge": maxAge,
        "preMarketChange": preMarketChange.toJson(),
        "preMarketPrice": preMarketPrice.toJson(),
        "postMarketChange": postMarketChange.toJson(),
        "postMarketPrice": postMarketPrice.toJson(),
        "regularMarketChangePercent": regularMarketChangePercent.toJson(),
        "regularMarketChange": regularMarketChange.toJson(),
        "regularMarketTime": regularMarketTime,
        "priceHint": priceHint.toJson(),
        "regularMarketPrice": regularMarketPrice.toJson(),
        "regularMarketDayHigh": regularMarketDayHigh.toJson(),
        "regularMarketDayLow": regularMarketDayLow.toJson(),
        "regularMarketVolume": regularMarketVolume.toJson(),
        "averageDailyVolume10Day": averageDailyVolume10Day.toJson(),
        "averageDailyVolume3Month": averageDailyVolume3Month.toJson(),
        "regularMarketPreviousClose": regularMarketPreviousClose.toJson(),
        "regularMarketSource": regularMarketSource,
        "regularMarketOpen": regularMarketOpen.toJson(),
        "strikePrice": strikePrice.toJson(),
        "openInterest": openInterest.toJson(),
        "exchange": exchange,
        "exchangeName": exchangeName,
        "exchangeDataDelayedBy": exchangeDataDelayedBy,
        "marketState": marketState,
        "quoteType": quoteType,
        "symbol": symbol,
        "underlyingSymbol": underlyingSymbol,
        "shortName": shortName,
        "longName": longName,
        "currency": currency,
        "quoteSourceName": quoteSourceName,
        "currencySymbol": currencySymbol,
        "fromCurrency": fromCurrency,
        "toCurrency": toCurrency,
        "lastMarket": lastMarket,
        "volume24Hr": volume24Hr.toJson(),
        "volumeAllCurrencies": volumeAllCurrencies.toJson(),
        "circulatingSupply": circulatingSupply.toJson(),
        "marketCap": marketCap.toJson(),
      };
}

class AverageDailyVolume10Day {
  final int raw;
  final String fmt;
  final String longFmt;

  AverageDailyVolume10Day({
    required this.raw,
    required this.fmt,
    required this.longFmt,
  });

  factory AverageDailyVolume10Day.fromJson(Map<String, dynamic> json) =>
      AverageDailyVolume10Day(
        raw: json["raw"],
        fmt: json["fmt"],
        longFmt: json["longFmt"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "fmt": fmt,
        "longFmt": longFmt,
      };
}

class CirculatingSupply {
  CirculatingSupply();

  factory CirculatingSupply.fromJson(Map<String, dynamic> json) =>
      CirculatingSupply();

  Map<String, dynamic> toJson() => {};
}

class RegularMarketChange {
  final double raw;
  final String fmt;

  RegularMarketChange({
    required this.raw,
    required this.fmt,
  });

  factory RegularMarketChange.fromJson(Map<String, dynamic> json) =>
      RegularMarketChange(
        raw: json["raw"]?.toDouble(),
        fmt: json["fmt"],
      );

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "fmt": fmt,
      };
}

class RecommendationTrend {
  final List<Trend> trend;
  final int maxAge;

  RecommendationTrend({
    required this.trend,
    required this.maxAge,
  });

  factory RecommendationTrend.fromJson(Map<String, dynamic> json) =>
      RecommendationTrend(
        trend: List<Trend>.from(json["trend"].map((x) => Trend.fromJson(x))),
        maxAge: json["maxAge"],
      );

  Map<String, dynamic> toJson() => {
        "trend": List<dynamic>.from(trend.map((x) => x.toJson())),
        "maxAge": maxAge,
      };
}

class Trend {
  final String period;
  final int strongBuy;
  final int buy;
  final int hold;
  final int sell;
  final int strongSell;

  Trend({
    required this.period,
    required this.strongBuy,
    required this.buy,
    required this.hold,
    required this.sell,
    required this.strongSell,
  });

  factory Trend.fromJson(Map<String, dynamic> json) => Trend(
        period: json["period"],
        strongBuy: json["strongBuy"],
        buy: json["buy"],
        hold: json["hold"],
        sell: json["sell"],
        strongSell: json["strongSell"],
      );

  Map<String, dynamic> toJson() => {
        "period": period,
        "strongBuy": strongBuy,
        "buy": buy,
        "hold": hold,
        "sell": sell,
        "strongSell": strongSell,
      };
}

class SummaryDetail {
  final int maxAge;
  final AverageDailyVolume10Day priceHint;
  final RegularMarketChange previousClose;
  final RegularMarketChange open;
  final RegularMarketChange dayLow;
  final RegularMarketChange dayHigh;
  final RegularMarketChange regularMarketPreviousClose;
  final RegularMarketChange regularMarketOpen;
  final RegularMarketChange regularMarketDayLow;
  final RegularMarketChange regularMarketDayHigh;
  final RegularMarketChange dividendRate;
  final RegularMarketChange dividendYield;
  final RegularMarketChange exDividendDate;
  final RegularMarketChange payoutRatio;
  final RegularMarketChange fiveYearAvgDividendYield;
  final RegularMarketChange beta;
  final RegularMarketChange trailingPe;
  final RegularMarketChange forwardPe;
  final AverageDailyVolume10Day volume;
  final AverageDailyVolume10Day regularMarketVolume;
  final AverageDailyVolume10Day averageVolume;
  final AverageDailyVolume10Day averageVolume10Days;
  final AverageDailyVolume10Day averageDailyVolume10Day;
  final RegularMarketChange bid;
  final RegularMarketChange ask;
  final AverageDailyVolume10Day bidSize;
  final AverageDailyVolume10Day askSize;
  final AverageDailyVolume10Day marketCap;
  final CirculatingSupply summaryDetailYield;
  final CirculatingSupply ytdReturn;
  final CirculatingSupply totalAssets;
  final CirculatingSupply expireDate;
  final CirculatingSupply strikePrice;
  final CirculatingSupply openInterest;
  final RegularMarketChange fiftyTwoWeekLow;
  final RegularMarketChange fiftyTwoWeekHigh;
  final RegularMarketChange priceToSalesTrailing12Months;
  final RegularMarketChange fiftyDayAverage;
  final RegularMarketChange twoHundredDayAverage;
  final RegularMarketChange trailingAnnualDividendRate;
  final RegularMarketChange trailingAnnualDividendYield;
  final CirculatingSupply navPrice;
  final String currency;
  final dynamic fromCurrency;
  final dynamic toCurrency;
  final dynamic lastMarket;
  final dynamic coinMarketCapLink;
  final CirculatingSupply volume24Hr;
  final CirculatingSupply volumeAllCurrencies;
  final CirculatingSupply circulatingSupply;
  final dynamic algorithm;
  final CirculatingSupply maxSupply;
  final CirculatingSupply startDate;
  final bool tradeable;

  SummaryDetail({
    required this.maxAge,
    required this.priceHint,
    required this.previousClose,
    required this.open,
    required this.dayLow,
    required this.dayHigh,
    required this.regularMarketPreviousClose,
    required this.regularMarketOpen,
    required this.regularMarketDayLow,
    required this.regularMarketDayHigh,
    required this.dividendRate,
    required this.dividendYield,
    required this.exDividendDate,
    required this.payoutRatio,
    required this.fiveYearAvgDividendYield,
    required this.beta,
    required this.trailingPe,
    required this.forwardPe,
    required this.volume,
    required this.regularMarketVolume,
    required this.averageVolume,
    required this.averageVolume10Days,
    required this.averageDailyVolume10Day,
    required this.bid,
    required this.ask,
    required this.bidSize,
    required this.askSize,
    required this.marketCap,
    required this.summaryDetailYield,
    required this.ytdReturn,
    required this.totalAssets,
    required this.expireDate,
    required this.strikePrice,
    required this.openInterest,
    required this.fiftyTwoWeekLow,
    required this.fiftyTwoWeekHigh,
    required this.priceToSalesTrailing12Months,
    required this.fiftyDayAverage,
    required this.twoHundredDayAverage,
    required this.trailingAnnualDividendRate,
    required this.trailingAnnualDividendYield,
    required this.navPrice,
    required this.currency,
    required this.fromCurrency,
    required this.toCurrency,
    required this.lastMarket,
    required this.coinMarketCapLink,
    required this.volume24Hr,
    required this.volumeAllCurrencies,
    required this.circulatingSupply,
    required this.algorithm,
    required this.maxSupply,
    required this.startDate,
    required this.tradeable,
  });

  factory SummaryDetail.fromJson(Map<String, dynamic> json) => SummaryDetail(
        maxAge: json["maxAge"],
        priceHint: AverageDailyVolume10Day.fromJson(json["priceHint"]),
        previousClose: RegularMarketChange.fromJson(json["previousClose"]),
        open: RegularMarketChange.fromJson(json["open"]),
        dayLow: RegularMarketChange.fromJson(json["dayLow"]),
        dayHigh: RegularMarketChange.fromJson(json["dayHigh"]),
        regularMarketPreviousClose:
            RegularMarketChange.fromJson(json["regularMarketPreviousClose"]),
        regularMarketOpen:
            RegularMarketChange.fromJson(json["regularMarketOpen"]),
        regularMarketDayLow:
            RegularMarketChange.fromJson(json["regularMarketDayLow"]),
        regularMarketDayHigh:
            RegularMarketChange.fromJson(json["regularMarketDayHigh"]),
        dividendRate: RegularMarketChange.fromJson(json["dividendRate"]),
        dividendYield: RegularMarketChange.fromJson(json["dividendYield"]),
        exDividendDate: RegularMarketChange.fromJson(json["exDividendDate"]),
        payoutRatio: RegularMarketChange.fromJson(json["payoutRatio"]),
        fiveYearAvgDividendYield:
            RegularMarketChange.fromJson(json["fiveYearAvgDividendYield"]),
        beta: RegularMarketChange.fromJson(json["beta"]),
        trailingPe: RegularMarketChange.fromJson(json["trailingPE"]),
        forwardPe: RegularMarketChange.fromJson(json["forwardPE"]),
        volume: AverageDailyVolume10Day.fromJson(json["volume"]),
        regularMarketVolume:
            AverageDailyVolume10Day.fromJson(json["regularMarketVolume"]),
        averageVolume: AverageDailyVolume10Day.fromJson(json["averageVolume"]),
        averageVolume10Days:
            AverageDailyVolume10Day.fromJson(json["averageVolume10days"]),
        averageDailyVolume10Day:
            AverageDailyVolume10Day.fromJson(json["averageDailyVolume10Day"]),
        bid: RegularMarketChange.fromJson(json["bid"]),
        ask: RegularMarketChange.fromJson(json["ask"]),
        bidSize: AverageDailyVolume10Day.fromJson(json["bidSize"]),
        askSize: AverageDailyVolume10Day.fromJson(json["askSize"]),
        marketCap: AverageDailyVolume10Day.fromJson(json["marketCap"]),
        summaryDetailYield: CirculatingSupply.fromJson(json["yield"]),
        ytdReturn: CirculatingSupply.fromJson(json["ytdReturn"]),
        totalAssets: CirculatingSupply.fromJson(json["totalAssets"]),
        expireDate: CirculatingSupply.fromJson(json["expireDate"]),
        strikePrice: CirculatingSupply.fromJson(json["strikePrice"]),
        openInterest: CirculatingSupply.fromJson(json["openInterest"]),
        fiftyTwoWeekLow: RegularMarketChange.fromJson(json["fiftyTwoWeekLow"]),
        fiftyTwoWeekHigh:
            RegularMarketChange.fromJson(json["fiftyTwoWeekHigh"]),
        priceToSalesTrailing12Months:
            RegularMarketChange.fromJson(json["priceToSalesTrailing12Months"]),
        fiftyDayAverage: RegularMarketChange.fromJson(json["fiftyDayAverage"]),
        twoHundredDayAverage:
            RegularMarketChange.fromJson(json["twoHundredDayAverage"]),
        trailingAnnualDividendRate:
            RegularMarketChange.fromJson(json["trailingAnnualDividendRate"]),
        trailingAnnualDividendYield:
            RegularMarketChange.fromJson(json["trailingAnnualDividendYield"]),
        navPrice: CirculatingSupply.fromJson(json["navPrice"]),
        currency: json["currency"],
        fromCurrency: json["fromCurrency"],
        toCurrency: json["toCurrency"],
        lastMarket: json["lastMarket"],
        coinMarketCapLink: json["coinMarketCapLink"],
        volume24Hr: CirculatingSupply.fromJson(json["volume24Hr"]),
        volumeAllCurrencies:
            CirculatingSupply.fromJson(json["volumeAllCurrencies"]),
        circulatingSupply:
            CirculatingSupply.fromJson(json["circulatingSupply"]),
        algorithm: json["algorithm"],
        maxSupply: CirculatingSupply.fromJson(json["maxSupply"]),
        startDate: CirculatingSupply.fromJson(json["startDate"]),
        tradeable: json["tradeable"],
      );

  Map<String, dynamic> toJson() => {
        "maxAge": maxAge,
        "priceHint": priceHint.toJson(),
        "previousClose": previousClose.toJson(),
        "open": open.toJson(),
        "dayLow": dayLow.toJson(),
        "dayHigh": dayHigh.toJson(),
        "regularMarketPreviousClose": regularMarketPreviousClose.toJson(),
        "regularMarketOpen": regularMarketOpen.toJson(),
        "regularMarketDayLow": regularMarketDayLow.toJson(),
        "regularMarketDayHigh": regularMarketDayHigh.toJson(),
        "dividendRate": dividendRate.toJson(),
        "dividendYield": dividendYield.toJson(),
        "exDividendDate": exDividendDate.toJson(),
        "payoutRatio": payoutRatio.toJson(),
        "fiveYearAvgDividendYield": fiveYearAvgDividendYield.toJson(),
        "beta": beta.toJson(),
        "trailingPE": trailingPe.toJson(),
        "forwardPE": forwardPe.toJson(),
        "volume": volume.toJson(),
        "regularMarketVolume": regularMarketVolume.toJson(),
        "averageVolume": averageVolume.toJson(),
        "averageVolume10days": averageVolume10Days.toJson(),
        "averageDailyVolume10Day": averageDailyVolume10Day.toJson(),
        "bid": bid.toJson(),
        "ask": ask.toJson(),
        "bidSize": bidSize.toJson(),
        "askSize": askSize.toJson(),
        "marketCap": marketCap.toJson(),
        "yield": summaryDetailYield.toJson(),
        "ytdReturn": ytdReturn.toJson(),
        "totalAssets": totalAssets.toJson(),
        "expireDate": expireDate.toJson(),
        "strikePrice": strikePrice.toJson(),
        "openInterest": openInterest.toJson(),
        "fiftyTwoWeekLow": fiftyTwoWeekLow.toJson(),
        "fiftyTwoWeekHigh": fiftyTwoWeekHigh.toJson(),
        "priceToSalesTrailing12Months": priceToSalesTrailing12Months.toJson(),
        "fiftyDayAverage": fiftyDayAverage.toJson(),
        "twoHundredDayAverage": twoHundredDayAverage.toJson(),
        "trailingAnnualDividendRate": trailingAnnualDividendRate.toJson(),
        "trailingAnnualDividendYield": trailingAnnualDividendYield.toJson(),
        "navPrice": navPrice.toJson(),
        "currency": currency,
        "fromCurrency": fromCurrency,
        "toCurrency": toCurrency,
        "lastMarket": lastMarket,
        "coinMarketCapLink": coinMarketCapLink,
        "volume24Hr": volume24Hr.toJson(),
        "volumeAllCurrencies": volumeAllCurrencies.toJson(),
        "circulatingSupply": circulatingSupply.toJson(),
        "algorithm": algorithm,
        "maxSupply": maxSupply.toJson(),
        "startDate": startDate.toJson(),
        "tradeable": tradeable,
      };
}

class UpgradeDowngradeHistory {
  final List<History> history;
  final int maxAge;

  UpgradeDowngradeHistory({
    required this.history,
    required this.maxAge,
  });

  factory UpgradeDowngradeHistory.fromJson(Map<String, dynamic> json) =>
      UpgradeDowngradeHistory(
        history:
            List<History>.from(json["history"].map((x) => History.fromJson(x))),
        maxAge: json["maxAge"],
      );

  Map<String, dynamic> toJson() => {
        "history": List<dynamic>.from(history.map((x) => x.toJson())),
        "maxAge": maxAge,
      };
}

class History {
  final int epochGradeDate;
  final String firm;
  final String toGrade;
  final String fromGrade;
  final Action action;

  History({
    required this.epochGradeDate,
    required this.firm,
    required this.toGrade,
    required this.fromGrade,
    required this.action,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
        epochGradeDate: json["epochGradeDate"],
        firm: json["firm"],
        toGrade: json["toGrade"],
        fromGrade: json["fromGrade"],
        action: actionValues.map[json["action"]]!,
      );

  Map<String, dynamic> toJson() => {
        "epochGradeDate": epochGradeDate,
        "firm": firm,
        "toGrade": toGrade,
        "fromGrade": fromGrade,
        "action": actionValues.reverse[action],
      };
}

enum Action { UP, DOWN, INIT, MAIN }

final actionValues = EnumValues({
  "down": Action.DOWN,
  "init": Action.INIT,
  "main": Action.MAIN,
  "up": Action.UP
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
