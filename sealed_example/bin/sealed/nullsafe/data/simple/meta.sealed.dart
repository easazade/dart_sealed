// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [Weather] {
///
/// ([PrefixSunny] sunny){} with data equality
///
/// ([BadWeather] rainy){[int] rain} with data equality
///
/// ([VeryBadWeather] windy){[double] velocity, [double]? angle} with distinct equality
///
/// }
@SealedManifest(_Weather)
abstract class Weather {
  @factory
  static PrefixSunny sunny() => PrefixSunny();

  @factory
  static BadWeather rainy({
    required int rain,
  }) =>
      BadWeather(
        rain: rain,
      );

  @factory
  static VeryBadWeather windy({
    required double velocity,
    required double? angle,
  }) =>
      VeryBadWeather(
        velocity: velocity,
        angle: angle,
      );

  bool isSunny() => this is PrefixSunny;

  bool isRainy() => this is BadWeather;

  bool isWindy() => this is VeryBadWeather;

  PrefixSunny asSunny() => this as PrefixSunny;

  BadWeather asRainy() => this as BadWeather;

  VeryBadWeather asWindy() => this as VeryBadWeather;

  PrefixSunny? asSunnyOrNull() {
    final weather = this;
    return weather is PrefixSunny ? weather : null;
  }

  BadWeather? asRainyOrNull() {
    final weather = this;
    return weather is BadWeather ? weather : null;
  }

  VeryBadWeather? asWindyOrNull() {
    final weather = this;
    return weather is VeryBadWeather ? weather : null;
  }

  R when<R extends Object?>({
    required R Function(PrefixSunny sunny) sunny,
    required R Function(BadWeather rainy) rainy,
    required R Function(VeryBadWeather windy) windy,
  }) {
    final weather = this;
    if (weather is PrefixSunny) {
      return sunny(weather);
    } else if (weather is BadWeather) {
      return rainy(weather);
    } else if (weather is VeryBadWeather) {
      return windy(weather);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function(PrefixSunny sunny)? sunny,
    R Function(BadWeather rainy)? rainy,
    R Function(VeryBadWeather windy)? windy,
    required R Function(Weather weather) orElse,
  }) {
    final weather = this;
    if (weather is PrefixSunny) {
      return sunny != null ? sunny(weather) : orElse(weather);
    } else if (weather is BadWeather) {
      return rainy != null ? rainy(weather) : orElse(weather);
    } else if (weather is VeryBadWeather) {
      return windy != null ? windy(weather) : orElse(weather);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function(PrefixSunny sunny)? sunny,
    R Function(BadWeather rainy)? rainy,
    R Function(VeryBadWeather windy)? windy,
    required R orDefault,
  }) {
    final weather = this;
    if (weather is PrefixSunny) {
      return sunny != null ? sunny(weather) : orDefault;
    } else if (weather is BadWeather) {
      return rainy != null ? rainy(weather) : orDefault;
    } else if (weather is VeryBadWeather) {
      return windy != null ? windy(weather) : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(PrefixSunny sunny)? sunny,
    R Function(BadWeather rainy)? rainy,
    R Function(VeryBadWeather windy)? windy,
  }) {
    final weather = this;
    if (weather is PrefixSunny) {
      return sunny?.call(weather);
    } else if (weather is BadWeather) {
      return rainy?.call(weather);
    } else if (weather is VeryBadWeather) {
      return windy?.call(weather);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function(PrefixSunny sunny)? sunny,
    R Function(BadWeather rainy)? rainy,
    R Function(VeryBadWeather windy)? windy,
  }) {
    final weather = this;
    if (weather is PrefixSunny && sunny != null) {
      return sunny(weather);
    } else if (weather is BadWeather && rainy != null) {
      return rainy(weather);
    } else if (weather is VeryBadWeather && windy != null) {
      return windy(weather);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function(PrefixSunny sunny)? sunny,
    void Function(BadWeather rainy)? rainy,
    void Function(VeryBadWeather windy)? windy,
  }) {
    final weather = this;
    if (weather is PrefixSunny) {
      sunny?.call(weather);
    } else if (weather is BadWeather) {
      rainy?.call(weather);
    } else if (weather is VeryBadWeather) {
      windy?.call(weather);
    } else {
      throw AssertionError();
    }
  }
}

/// (([PrefixSunny] : [Weather]) sunny){}
///
/// with data equality
class PrefixSunny extends Weather with EquatableMixin {
  PrefixSunny();

  @factory
  PrefixSunny copy() => PrefixSunny();

  @override
  String toString() => 'Weather.sunny()';

  @override
  List<Object?> get props => [];
}

/// (([BadWeather] : [Weather]) rainy){[int] rain}
///
/// with data equality
class BadWeather extends Weather with EquatableMixin {
  BadWeather({
    required this.rain,
  });

  final int rain;

  @factory
  BadWeather copy({
    int? rain,
  }) =>
      BadWeather(
        rain: rain ?? this.rain,
      );

  @override
  String toString() => 'Weather.rainy(rain: $rain)';

  @override
  List<Object?> get props => [
        rain,
      ];
}

/// (([VeryBadWeather] : [Weather]) windy){[double] velocity, [double]? angle}
///
/// with distinct equality
class VeryBadWeather extends Weather {
  VeryBadWeather({
    required this.velocity,
    required this.angle,
  });

  final double velocity;
  final double? angle;

  @override
  String toString() => 'Weather.windy(velocity: $velocity, angle: $angle)';

  @override
  bool operator ==(Object other) => false;
}