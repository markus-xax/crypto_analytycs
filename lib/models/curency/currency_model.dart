import 'quotes.dart';

class CurencyModel {
  bool? success;
  String? terms;
  String? privacy;
  int? timestamp;
  String? source;
  Quotes? quotes;

  CurencyModel(
      {this.success,
      this.terms,
      this.privacy,
      this.timestamp,
      this.source,
      this.quotes});

  CurencyModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    terms = json['terms'];
    privacy = json['privacy'];
    timestamp = json['timestamp'];
    source = json['source'];
    quotes = json['quotes'] != null ? Quotes?.fromJson(json['quotes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['terms'] = terms;
    data['privacy'] = privacy;
    data['timestamp'] = timestamp;
    data['source'] = source;
    data['quotes'] = quotes!.toJson();
    return data;
  }
}
