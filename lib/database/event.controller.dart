import 'package:animation/database/event_service.dart';
import 'package:animation/database/model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

class EventController extends ChangeNotifier {
  List<EventDataModel> eventsDataModelList = [];
  bool isLoading = false;
  bool isError = false;
  String errorMessage = "";
  bool isSuccess = false;
  bool isUploadSuccess = false;
  Key key = UniqueKey();
  EventController() {
    getAllEvents();
  }
  void setNewValue() {
    key = UniqueKey();
    notifyListeners();
  }

  Future<void> getAllEvents() async {
    try {
      isLoading = true;
      notifyListeners();
      PostgrestResponse response = await EventServices.getAllEvents();
      print("ff" + response.toString());
      if (response.status == 200) {
        Map<String, dynamic> data = response.toJson();
        List allCourses = data['data'];
        for (int i = 0; i < allCourses.length; i++) {
          Map<String, dynamic> element = allCourses[i];
          eventsDataModelList.add(EventDataModel.fromJson(element));
        }
        isLoading = false;
        notifyListeners();
      }
    } catch (error) {
      rethrow;
    }
  }

  // Future<void> getAllEvents() async {
  //   try {
  //     isLoading = true;
  //     notifyListeners();
  //     PostgrestResponse response = await CourseServices.getAllEvents();
  //     if (response.status == 200) {
  //       Map<String, dynamic> data = response.toJson();
  //       List allCourses = data['data'];
  //       for (int i = 0; i < allCourses.length; i++) {
  //         Map<String, dynamic> element = allCourses[i];
  //         allEvents.add(EventDataModel.fromJson(element));
  //       }
  //       isLoading = false;
  //       notifyListeners();
  //     }
  //   } catch (error) {
  //     rethrow;
  //   }
  // }
  // Future<void> getAllEvents() async {
  //   try {
  //     isLoading = true;
  //     notifyListeners();
  //     PostgrestResponse response = await EventServices.getAllEvents();
  //     if (response.status == 200) {
  //       Map<String, dynamic> data = response.toJson();
  //       List allEvents = data['data'];
  //       for (int i = 0; i < allEvents.length; i++) {
  //         Map<String, dynamic> element = allEvents[i];
  //         eventsDataModelList.add(EventDataModel.fromJson(element));
  //       }
  //       isLoading = false;
  //       notifyListeners();
  //     }
  //   } catch (error) {
  //     if (kDebugMode) {
  //       print(error);
  //     } allEvents
  //   }
  // }
}
