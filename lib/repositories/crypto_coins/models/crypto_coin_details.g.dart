// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coin_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CryptoCoinDetailAdapter extends TypeAdapter<CryptoCoinDetail> {
  @override
  final int typeId = 1;

  @override
  CryptoCoinDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CryptoCoinDetail(
      priceInUSD: fields[1] as double,
      imageUrl: fields[2] as String,
      toSymbol: fields[3] as String,
      lastUpdate: fields[4] as DateTime,
      hight24Hour: fields[5] as double,
      low24Hours: fields[6] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CryptoCoinDetail obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.priceInUSD)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.toSymbol)
      ..writeByte(4)
      ..write(obj.lastUpdate)
      ..writeByte(5)
      ..write(obj.hight24Hour)
      ..writeByte(6)
      ..write(obj.low24Hours);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CryptoCoinDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoCoinDetail _$CryptoCoinDetailFromJson(Map<String, dynamic> json) =>
    CryptoCoinDetail(
      priceInUSD: (json['PRICE'] as num).toDouble(),
      imageUrl: json['IMAGEURL'] as String,
      toSymbol: json['TOSYMBOL'] as String,
      lastUpdate: CryptoCoinDetail._dateTimeFromJson(
          (json['LASTUPDATE'] as num).toInt()),
      hight24Hour: (json['HIGH24HOUR'] as num).toDouble(),
      low24Hours: (json['LOW24HOUR'] as num).toDouble(),
    );

Map<String, dynamic> _$CryptoCoinDetailToJson(CryptoCoinDetail instance) =>
    <String, dynamic>{
      'PRICE': instance.priceInUSD,
      'IMAGEURL': instance.imageUrl,
      'TOSYMBOL': instance.toSymbol,
      'LASTUPDATE': CryptoCoinDetail._dateTimeToJson(instance.lastUpdate),
      'HIGH24HOUR': instance.hight24Hour,
      'LOW24HOUR': instance.low24Hours,
    };
