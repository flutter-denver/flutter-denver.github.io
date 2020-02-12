import 'package:flutter_denver/model/about_data.dart';
import 'package:flutter_denver/model/event_data.dart';
import 'package:flutter_denver/model/member_data.dart';

class DataManager {
  DataManager() {
    initialize();
  }

  final AboutData _aboutData = AboutData();
  AboutData get aboutData => _aboutData;

  final EventData _eventData = EventData();

  final MemberData _memberData = MemberData();

  void initialize() {}
}
