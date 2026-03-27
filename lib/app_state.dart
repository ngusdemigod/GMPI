import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _partnershipname =
          prefs.getString('ff_partnershipname') ?? _partnershipname;
    });
    _safeInit(() {
      _partnershipUUID =
          prefs.getString('ff_partnershipUUID') ?? _partnershipUUID;
    });
    _safeInit(() {
      _ColorPrimary =
          _colorFromIntValue(prefs.getInt('ff_ColorPrimary')) ?? _ColorPrimary;
    });
    _safeInit(() {
      _ColorAccent =
          _colorFromIntValue(prefs.getInt('ff_ColorAccent')) ?? _ColorAccent;
    });
    _safeInit(() {
      _color3 = _colorFromIntValue(prefs.getInt('ff_color3')) ?? _color3;
    });
    _safeInit(() {
      _logo = prefs.getString('ff_logo') ?? _logo;
    });
    _safeInit(() {
      _firstname = prefs.getString('ff_firstname') ?? _firstname;
    });
    _safeInit(() {
      _lastname = prefs.getString('ff_lastname') ?? _lastname;
    });
    _safeInit(() {
      _phone = prefs.getString('ff_phone') ?? _phone;
    });
    _safeInit(() {
      _plan = prefs.getString('ff_plan') ?? _plan;
    });
    _safeInit(() {
      _NOofprojects = prefs.getInt('ff_NOofprojects') ?? _NOofprojects;
    });
    _safeInit(() {
      _paystackCode = prefs.getString('ff_paystackCode') ?? _paystackCode;
    });
    _safeInit(() {
      _customerID = prefs.getString('ff_customerID') ?? _customerID;
    });
    _safeInit(() {
      _currency = prefs.getString('ff_currency') ?? _currency;
    });
    _safeInit(() {
      _numpad =
          prefs.getStringList('ff_numpad')?.map(int.parse).toList() ?? _numpad;
    });
    _safeInit(() {
      _totaldonated = prefs.getDouble('ff_totaldonated') ?? _totaldonated;
    });
    _safeInit(() {
      _usermembershipname =
          prefs.getString('ff_usermembershipname') ?? _usermembershipname;
    });
    _safeInit(() {
      _totalremainingbalance =
          prefs.getDouble('ff_totalremainingbalance') ?? _totalremainingbalance;
    });
    _safeInit(() {
      _initialProjectsbudget =
          prefs.getDouble('ff_initialProjectsbudget') ?? _initialProjectsbudget;
    });
    _safeInit(() {
      _dummycolorhexes = prefs
              .getStringList('ff_dummycolorhexes')
              ?.map((x) => Color(int.tryParse(x) ?? 0))
              .toList() ??
          _dummycolorhexes;
    });
    _safeInit(() {
      _color = prefs.getStringList('ff_color') ?? _color;
    });
    _safeInit(() {
      _storagePuburl = prefs.getString('ff_storagePuburl') ?? _storagePuburl;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  void clearPersistedState() {
    prefs.remove('ff_firstname');
    prefs.remove('ff_lastname');
    prefs.remove('ff_phone');
    prefs.remove('ff_plan');
    prefs.remove('ff_NOofprojects');
    prefs.remove('ff_paystackCode');
    prefs.remove('ff_customerID');
    prefs.remove('ff_totaldonated');
    prefs.remove('ff_usermembershipname');
    _firstname = '';
    _lastname = '';
    _phone = '0';
    _plan = '0';
    _NOofprojects = 0;
    _paystackCode = '0';
    _customerID = '0';
    _totaldonated = 0.0;
    _usermembershipname = 'You don\'t have an active partnership';
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _partnershipname = 'Your Admin Dashboard';
  String get partnershipname => _partnershipname;
  set partnershipname(String value) {
    _partnershipname = value;
    prefs.setString('ff_partnershipname', value);
  }

  /// partnership system UUID
  String _partnershipUUID = '13f80356-63ce-46e5-a401-317a7495d549';
  String get partnershipUUID => _partnershipUUID;
  set partnershipUUID(String value) {
    _partnershipUUID = value;
    prefs.setString('ff_partnershipUUID', value);
  }

  Color _ColorPrimary = Colors.transparent;
  Color get ColorPrimary => _ColorPrimary;
  set ColorPrimary(Color value) {
    _ColorPrimary = value;
    prefs.setInt('ff_ColorPrimary', value.value);
  }

  Color _ColorAccent = Colors.transparent;
  Color get ColorAccent => _ColorAccent;
  set ColorAccent(Color value) {
    _ColorAccent = value;
    prefs.setInt('ff_ColorAccent', value.value);
  }

  Color _Color2 = Colors.transparent;
  Color get Color2 => _Color2;
  set Color2(Color value) {
    _Color2 = value;
  }

  Color _color3 = Colors.transparent;
  Color get color3 => _color3;
  set color3(Color value) {
    _color3 = value;
    prefs.setInt('ff_color3', value.value);
  }

  String _logo = '';
  String get logo => _logo;
  set logo(String value) {
    _logo = value;
    prefs.setString('ff_logo', value);
  }

  String _firstname = '';
  String get firstname => _firstname;
  set firstname(String value) {
    _firstname = value;
    prefs.setString('ff_firstname', value);
  }

  String _lastname = '';
  String get lastname => _lastname;
  set lastname(String value) {
    _lastname = value;
    prefs.setString('ff_lastname', value);
  }

  String _phone = '0';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    prefs.setString('ff_phone', value);
  }

  /// USER'S partnership plan
  String _plan = '0';
  String get plan => _plan;
  set plan(String value) {
    _plan = value;
    prefs.setString('ff_plan', value);
  }

  int _NOofprojects = 0;
  int get NOofprojects => _NOofprojects;
  set NOofprojects(int value) {
    _NOofprojects = value;
    prefs.setInt('ff_NOofprojects', value);
  }

  /// Paystack Customer Code
  String _paystackCode = '0';
  String get paystackCode => _paystackCode;
  set paystackCode(String value) {
    _paystackCode = value;
    prefs.setString('ff_paystackCode', value);
  }

  String _customerID = '0';
  String get customerID => _customerID;
  set customerID(String value) {
    _customerID = value;
    prefs.setString('ff_customerID', value);
  }

  /// Users prefered currency
  String _currency = 'NGN';
  String get currency => _currency;
  set currency(String value) {
    _currency = value;
    prefs.setString('ff_currency', value);
  }

  List<int> _numpad = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  List<int> get numpad => _numpad;
  set numpad(List<int> value) {
    _numpad = value;
    prefs.setStringList('ff_numpad', value.map((x) => x.toString()).toList());
  }

  void addToNumpad(int value) {
    numpad.add(value);
    prefs.setStringList('ff_numpad', _numpad.map((x) => x.toString()).toList());
  }

  void removeFromNumpad(int value) {
    numpad.remove(value);
    prefs.setStringList('ff_numpad', _numpad.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromNumpad(int index) {
    numpad.removeAt(index);
    prefs.setStringList('ff_numpad', _numpad.map((x) => x.toString()).toList());
  }

  void updateNumpadAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    numpad[index] = updateFn(_numpad[index]);
    prefs.setStringList('ff_numpad', _numpad.map((x) => x.toString()).toList());
  }

  void insertAtIndexInNumpad(int index, int value) {
    numpad.insert(index, value);
    prefs.setStringList('ff_numpad', _numpad.map((x) => x.toString()).toList());
  }

  double _totaldonated = 0.0;
  double get totaldonated => _totaldonated;
  set totaldonated(double value) {
    _totaldonated = value;
    prefs.setDouble('ff_totaldonated', value);
  }

  /// the title of the active user membership
  String _usermembershipname = 'You don\'t have an active partnership';
  String get usermembershipname => _usermembershipname;
  set usermembershipname(String value) {
    _usermembershipname = value;
    prefs.setString('ff_usermembershipname', value);
  }

  /// Total remaining balance for all projects in the church
  double _totalremainingbalance = 0.0;
  double get totalremainingbalance => _totalremainingbalance;
  set totalremainingbalance(double value) {
    _totalremainingbalance = value;
    prefs.setDouble('ff_totalremainingbalance', value);
  }

  /// initial Projects budget
  double _initialProjectsbudget = 0.0;
  double get initialProjectsbudget => _initialProjectsbudget;
  set initialProjectsbudget(double value) {
    _initialProjectsbudget = value;
    prefs.setDouble('ff_initialProjectsbudget', value);
  }

  List<Color> _dummycolorhexes = [
    Color(4280997631),
    Color(4280182527),
    Color(4290637823),
    Color(4285180159),
    Color(4287491071)
  ];
  List<Color> get dummycolorhexes => _dummycolorhexes;
  set dummycolorhexes(List<Color> value) {
    _dummycolorhexes = value;
    prefs.setStringList(
        'ff_dummycolorhexes', value.map((x) => x.value.toString()).toList());
  }

  void addToDummycolorhexes(Color value) {
    dummycolorhexes.add(value);
    prefs.setStringList('ff_dummycolorhexes',
        _dummycolorhexes.map((x) => x.value.toString()).toList());
  }

  void removeFromDummycolorhexes(Color value) {
    dummycolorhexes.remove(value);
    prefs.setStringList('ff_dummycolorhexes',
        _dummycolorhexes.map((x) => x.value.toString()).toList());
  }

  void removeAtIndexFromDummycolorhexes(int index) {
    dummycolorhexes.removeAt(index);
    prefs.setStringList('ff_dummycolorhexes',
        _dummycolorhexes.map((x) => x.value.toString()).toList());
  }

  void updateDummycolorhexesAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    dummycolorhexes[index] = updateFn(_dummycolorhexes[index]);
    prefs.setStringList('ff_dummycolorhexes',
        _dummycolorhexes.map((x) => x.value.toString()).toList());
  }

  void insertAtIndexInDummycolorhexes(int index, Color value) {
    dummycolorhexes.insert(index, value);
    prefs.setStringList('ff_dummycolorhexes',
        _dummycolorhexes.map((x) => x.value.toString()).toList());
  }

  List<String> _color = ['#8DEBFF', '#1E66F', '#2AD6FF', '#BDEFFF', '#6AA8FF'];
  List<String> get color => _color;
  set color(List<String> value) {
    _color = value;
    prefs.setStringList('ff_color', value);
  }

  void addToColor(String value) {
    color.add(value);
    prefs.setStringList('ff_color', _color);
  }

  void removeFromColor(String value) {
    color.remove(value);
    prefs.setStringList('ff_color', _color);
  }

  void removeAtIndexFromColor(int index) {
    color.removeAt(index);
    prefs.setStringList('ff_color', _color);
  }

  void updateColorAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    color[index] = updateFn(_color[index]);
    prefs.setStringList('ff_color', _color);
  }

  void insertAtIndexInColor(int index, String value) {
    color.insert(index, value);
    prefs.setStringList('ff_color', _color);
  }

  String _rewardtype = '';
  String get rewardtype => _rewardtype;
  set rewardtype(String value) {
    _rewardtype = value;
  }

  String _rewardlink = '';
  String get rewardlink => _rewardlink;
  set rewardlink(String value) {
    _rewardlink = value;
  }

  /// list of uploaded data
  List<dynamic> _uploaded = [];
  List<dynamic> get uploaded => _uploaded;
  set uploaded(List<dynamic> value) {
    _uploaded = value;
  }

  void addToUploaded(dynamic value) {
    uploaded.add(value);
  }

  void removeFromUploaded(dynamic value) {
    uploaded.remove(value);
  }

  void removeAtIndexFromUploaded(int index) {
    uploaded.removeAt(index);
  }

  void updateUploadedAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    uploaded[index] = updateFn(_uploaded[index]);
  }

  void insertAtIndexInUploaded(int index, dynamic value) {
    uploaded.insert(index, value);
  }

  /// r2 public url
  String _storagePuburl =
      'https://pub-10e4a4861cd7427b8959567c86b291e7.r2.dev/';
  String get storagePuburl => _storagePuburl;
  set storagePuburl(String value) {
    _storagePuburl = value;
    prefs.setString('ff_storagePuburl', value);
  }

  MediapayloadStruct _tempPayload = MediapayloadStruct();
  MediapayloadStruct get tempPayload => _tempPayload;
  set tempPayload(MediapayloadStruct value) {
    _tempPayload = value;
  }

  void updateTempPayloadStruct(Function(MediapayloadStruct) updateFn) {
    updateFn(_tempPayload);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
