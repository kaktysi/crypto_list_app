import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_coin_details.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class CryptoCoinDetail extends Equatable{
  
  const CryptoCoinDetail({
    required this.priceInUSD,
    required this.imageUrl,
    required this.toSymbol,
    required this.lastUpdate,
    required this.hight24Hour,
    required this.low24Hours,
  });
  
  @HiveField(1)
  @JsonKey(name: "PRICE")
  final double priceInUSD;

  @HiveField(2)
  @JsonKey(name: "IMAGEURL")
  final String imageUrl;

  String get fullImageUrl => 'https://www.cryptocompare.com/$imageUrl';
  
  @HiveField(3)
  @JsonKey(name: "TOSYMBOL")
  final String toSymbol;

  @HiveField(4)  
  @JsonKey(
    name: "LASTUPDATE",  
    fromJson: _dateTimeFromJson, 
    toJson: _dateTimeToJson
  )
  final DateTime lastUpdate;
  
  @HiveField(5)  
  @JsonKey(name: "HIGH24HOUR")
  final double hight24Hour;

  @HiveField(6)  
  @JsonKey(name: "LOW24HOUR")
  final double low24Hours;
  
  factory CryptoCoinDetail.fromJson(Map<String, dynamic> json) => _$CryptoCoinDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCoinDetailToJson(this);

  static int _dateTimeToJson(DateTime time) => time.millisecondsSinceEpoch;
  static DateTime _dateTimeFromJson(int millisecomds) => DateTime.fromMicrosecondsSinceEpoch(millisecomds);

  @override
  List<Object> get props => [
    toSymbol,
    lastUpdate,
    hight24Hour,
    low24Hours,
    priceInUSD,
    imageUrl,
  ];
}