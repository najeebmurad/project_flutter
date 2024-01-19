import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/Unit.dart';
import 'package:get/get.dart';
String _basicAuth = 'Basic ${base64Encode(utf8.encode(
    'api:1234'))}';
Map<String, String> myheaders = {
  'authorization': _basicAuth
};
 String basicAuth = 'Basic ${base64Encode(utf8.encode(
    'real_estate:774&kjfJJfdjh057KM5'))}';
Future<List<Unit>> fetchUnits() async {
  final response = await http.get(Uri.parse('https://wificharge.000webhostapp.com/real_estate/getData.php'),headers: {'authorization': basicAuth});
  if (response.statusCode == 200) {
    try {
      final List<dynamic> unitsJson = json.decode(response.body);
      return unitsJson.map((unitJson) =>
          Unit(
            id: int.parse(unitJson['id'].toString()),
            unitType: unitJson['unitType'].toString(),
            unitNumber: int.parse(unitJson['unitNumber'].toString()),
            annualPrice: double.parse(unitJson['annualPrice'].toString()),
            numberOfRooms: int.parse(unitJson['numberOfRooms'].toString()),
            numberOfHalls: int.parse(unitJson['numberOfHalls'].toString()),
            numberOfBathrooms: int.parse(
                unitJson['numberOfBathrooms'].toString()),
            numberOfParkingSpaces: int.parse(
                unitJson['numberOfParkingSpaces'].toString()),
            locationDescription: unitJson['locationDescription'].toString(),
            latitude: double.parse(unitJson['latitude'].toString()),
            longitude: double.parse(unitJson['longitude'].toString()),
            leaseTerms: unitJson['leaseTerms'].toString(),
            designingDescription: unitJson['designingDescription'].toString(),
            images: List<String>.from(
                unitJson['images'].map((image) => image['image'].toString())),
          )).toList();
    }catch(e){
      Get.snackbar("خطأ", "خطأ بجلب البيانات للمحاولة اضغط على زر التحديث");
      throw Exception('Failed to fetch units');
    }
  } else {

    Get.snackbar("خطأ", "خطأ بجلب البيانات للمحاولة اضغط على زر التحديث");
    throw Exception('Failed to fetch units');
  }
}