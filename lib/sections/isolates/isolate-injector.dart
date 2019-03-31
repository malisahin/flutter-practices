import 'package:combine_mobile/sections/isolates/isolates-mock-repo.dart';
import 'package:combine_mobile/sections/isolates/isolates-photo-repo.dart';
import 'package:combine_mobile/sections/isolates/isolates-prod-repo.dart';

enum DataType { MOCK, PROD }

class Injector {
  static final Injector _singleton = Injector._internal();

  static DataType _dataType;

  static void configure(DataType dateType) {
    _dataType = dateType;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  PhotoRepo get photoRepo {
    switch (_dataType) {
      case DataType.MOCK:
        return MockRepo();
      default:
        return ProdRepo();
    }
  }
}
