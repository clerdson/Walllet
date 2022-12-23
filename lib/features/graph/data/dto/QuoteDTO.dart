import 'package:wallet/features/graph/domain/entity/Quote.dart';

extension QuoteDTO on Quote {
  static Quote fromJson(Map<String, dynamic> json) {
    return Quote(
      open: json['open'].cast<double>(),
      low: json['low'].cast<double>(),
      high: json['high'].cast<double>(),
      close: json['close'].cast<double>(),
      volume: json['volume'].cast<int>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['open'] = this.open;
    data['low'] = this.low;
    data['high'] = this.high;
    data['close'] = this.close;
    data['volume'] = this.volume;
    return data;
  }
}
