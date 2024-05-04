import 'package:flutter/material.dart';
import 'package:terappmobile/models/response/trains_station_response.dart';

class GareProvider extends ChangeNotifier {
  late TrainStationsResponse _selectedStation;
  late List<TrainStationsResponse>
      _trainStationsResponse; // Define trainStationsResponse here

  GareProvider() {
    // Initialize trainStationsResponse here, you can fetch it from wherever it's coming from
    _trainStationsResponse = []; // Initialize with an empty list
  }

  List<TrainStationsResponse> get trainStationsResponse =>
      _trainStationsResponse;

  TrainStationsResponse get selectedStation => _selectedStation;

  void setSelectedStation(TrainStationsResponse station) {
    _selectedStation = station;
    notifyListeners();
  }
}