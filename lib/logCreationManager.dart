import 'package:flutter/material.dart';

//logCreationsBase 변수는 여기 저장해서 쓰시면 됩니다.

// logCreationsBase Provider 클래스
class LogCreationManager extends ChangeNotifier {

  //logCreation1
  String _selectedYear = '2023';
  String _selectedMonth = '1';
  String _selectedDay = '1';
  String _selectedRegion = 'none';
  String _selectedWeather = 'none';

  String get selectedYear => _selectedYear;
  String get selectedMonth => _selectedMonth;
  String get selectedDay => _selectedDay;
  String get selectedRegion => _selectedRegion;
  String get selectedWeather => _selectedWeather;

  void updateSelectedYear(String newYear) {
    _selectedYear = newYear;
    notifyListeners(); // 상태가 변경되었음을 알려주기 위해 notifyListeners() 호출
  }
  void updateSelectedMonth(String newMonth) {
    _selectedMonth = newMonth;
    notifyListeners();
  }
  void updateSelectedDay(String newDay) {
    _selectedDay = newDay;
    notifyListeners();
  }
  void updateSelectedRegion(String newRegion) {
    _selectedRegion = newRegion;
    notifyListeners();
  }
  void updateSelectedWeather(String newWeather) {
    _selectedWeather = newWeather;
    notifyListeners();
  }

  //logCreation2
  List<int> _selectedDivingForms = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

  List<int> get selectedDivingForms => _selectedDivingForms;

  void updateSelectedDivingForms(int i, int state) {
    _selectedDivingForms[i] = state;
    notifyListeners();
  }

  //logCreation3
  List<int> _selectedDivingUnit = [0,0,0,0,0,0,0];
  List<int> _selectedAir = [0,0,0,0];

  List<int> get selectedDivingUnit => _selectedDivingUnit;
  List<int> get selectedAir => _selectedAir;

  void updateSelectedDivingUnit(int i, int state) {
    _selectedDivingUnit[i] = state;
    notifyListeners();
  }
  void updateSelectedAir(int i, int state) {
    _selectedAir[i] = state;
    notifyListeners();
  }

  //logCreation4
  String _selectedBelt = '0';
  String _selectedPocket = '0';

  List<int> _selectedTank = [0,0]; //알루미늄, 스틸
  List<int> _selectedTankSize = [0,0]; //80큐빅, 63큐빅
  List<int> _selectedSuit = [0,0,0,0,0,0]; //웻, 드라이, 부츠, 베스트, 장갑, 후드
  List<int> _selectedWeight = [0,0]; //벹트, 포켓
  List<int> _selectedWaterType = [0,0]; //해수, 담수

  String get selectedBelt => _selectedBelt;
  String get selectedPocket => _selectedPocket;

  List<int> get selectedTank => _selectedTank;
  List<int> get selectedTankSize => _selectedTankSize;
  List<int> get selectedSuit => _selectedSuit;
  List<int> get selectedWeight => _selectedWeight;
  List<int> get selectedWaterType => _selectedWaterType;

  void updateSelectedBelt(String newBelt) {
    _selectedBelt = newBelt;
    notifyListeners();
  }
  void updateSelectedPocket(String newPocket) {
    _selectedPocket = newPocket;
    notifyListeners();
  }
  void updateSelectedTank(int i, int state) {
    _selectedTank[i] = state;
    notifyListeners();
  }
  void updateSelectedTankSize(int i, int state) {
    _selectedTankSize[i] = state;
    notifyListeners();
  }
  void updateSelectedSuit(int i, int state) {
    _selectedSuit[i] = state;
    notifyListeners();
  }
  void updateSelectedWeight(int i, int state) {
    _selectedWeight[i] = state;
    notifyListeners();
  }
  void updateSelectedWaterType(int i, int state) {
    _selectedWaterType[i] = state;
    notifyListeners();
  }

  //logCreation5
  var _selectedSurfaceTem = '0';
  var _selectedBottomTem = '0';
  var _selectedVisibility = '0';
  List<int> _selectedTide = [0,0,0];
  List<int> _selectedWave = [0,0,0];
  List<int> _selectedSerge = [0,0,0];

  String get selectedSurfaceTem => _selectedSurfaceTem;
  String get selectedBottomTem => _selectedBottomTem;
  String get selectedVisibility => _selectedVisibility;
  List<int> get selectedTide => _selectedTide;
  List<int> get selectedWave => _selectedWave;
  List<int> get selectedSerge => _selectedSerge;

  void updateSelectedSurfaceTem(String newSurfaceTem) {
    _selectedSurfaceTem = newSurfaceTem;
    notifyListeners();
  }
  void updateSelectedBottomTem(String newBottomTem) {
    _selectedBottomTem = newBottomTem;
    notifyListeners();
  }
  void updateSelectedVisibility(String newVisibility) {
    _selectedVisibility = newVisibility;
    notifyListeners();
  }
  void updateSelectedTide(int i, int state) {
    _selectedTide[i] = state;
    notifyListeners();
  }
  void updateSelectedWave(int i, int state) {
    _selectedWave[i] = state;
    notifyListeners();
  }
  void updateSelectedSerge(int i, int state) {
    _selectedSerge[i] = state;
    notifyListeners();
  }

  //logCreation6
  var _entryTimeHour = '0';
  var _entryTimeMin = '0';
  var _exitTimeHour = '0';
  var _exitTimeMin = '0';
  var _startPressure = '0';
  var _endPressure = '0';
  var _averageDepth = '0.0';
  var _maxDepth = '0.0';

  var _safetyStop = '0';
  var _deepStopDepth1 = '0.0';
  var _deepStopMin1 = '0';
  var _deepStopDepth2 = '0.0';
  var _deepStopMin2 = '0';

  String get entryTimeHour => _entryTimeHour;
  String get entryTimeMin => _entryTimeMin;
  String get exitTimeHour => _exitTimeHour;
  String get exitTimeMin => _exitTimeMin;
  String get startPressure => _startPressure;
  String get endPressure => _endPressure;
  String get averageDepth => _averageDepth;
  String get maxDepth => _maxDepth;

  String get safetyStop => _safetyStop;
  String get deepStopDepth1 => _deepStopDepth1;
  String get deepStopMin1 => _deepStopMin1;
  String get deepStopDepth2 => _deepStopDepth2;
  String get deepStopMin2 => _deepStopMin2;

  void updateEntryTimeHour(String newEntryTimeHour) {
    _entryTimeHour = newEntryTimeHour;
    notifyListeners();
  }
  void updateEntryTimeMin(String newEntryTimeMin) {
    _entryTimeMin = newEntryTimeMin;
    notifyListeners();
  }
  void updateExitTimeHour(String newExitTimeHour) {
    _exitTimeHour = newExitTimeHour;
    notifyListeners();
  }
  void updateExitTimeMin(String newExitTimeMin) {
    _exitTimeMin = newExitTimeMin;
    notifyListeners();
  }
  void updateStartPressure(String newStartPressure) {
    _startPressure = newStartPressure;
    notifyListeners();
  }
  void updateEndPressure(String newEndPressure) {
    _endPressure = newEndPressure;
    notifyListeners();
  }
  void updateAverageDepth(String newAverageDepth) {
    _averageDepth = newAverageDepth;
    notifyListeners();
  }
  void updateMaxDepth(String newMaxDepth) {
    _maxDepth = newMaxDepth;
    notifyListeners();
  }
  void updateSafetyStop(String newSafetyStop) {
    _safetyStop = newSafetyStop;
    notifyListeners();
  }
  void updateDeepStopDepth1(String newDeepStopDepth1) {
    _deepStopDepth1 = newDeepStopDepth1;
    notifyListeners();
  }
  void updateDeepStopMin1(String newDeepStopMin1) {
    _deepStopMin1 = newDeepStopMin1;
    notifyListeners();
  }
  void updateDeepStopDepth2(String newDeepStopDepth2) {
    _deepStopDepth2 = newDeepStopDepth2;
    notifyListeners();
  }
  void updateDeepStopMin2(String newDeepStopMin2) {
    _deepStopMin2 = newDeepStopMin2;
    notifyListeners();
  }

  String _selectedGuide = 'none';

  String get selectedGuide => _selectedGuide;

  void updateSelectedGuide(String newSelectedGuide) {
    _selectedGuide = newSelectedGuide;
    notifyListeners();
  }

  //logCreation8


}