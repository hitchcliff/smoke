import 'dart:ffi';

String kGetAverage(List<double> scores) {
  final total = scores.reduce((a, b) => a + b);
  final average = total / scores.length;

  return average.toStringAsFixed(1);
}

Map<int, double> kGetRatings(List<double> scores) {
  Map<int, int> ratings = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0}; // temp
  Map<int, double> ratingPercent = {
    1: 0.0,
    2: 0.0,
    3: 0.0,
    4: 0.0,
    5: 0.0,
  }; // will be returned

  final total = scores.map((score) => score.round());

  for (var t in total) {
    ratings[t] = ratings[t]! + 1;
  }

  for (var t in total) {
    if (ratings[t] == 0) {
      ratingPercent[t] = 0.0;
    }

    ratingPercent[t] = (ratings[t]! / total.length);
  }

  return ratingPercent;
}
