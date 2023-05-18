import 'package:flutter/foundation.dart';
import 'package:practice_learning_app/service/payment_model.dart';

import 'http_helper.dart';

class PaymentProvider extends ChangeNotifier {

  final HttpHelper _httpHelper = HttpHelper();

  List<PaymentModel> _modelList = [];

  List<PaymentModel> get modelList => [..._modelList];

  Future getTodos() async {
    try{

      final params = {
        'page' : '1',
        'limit' : '100'
      };
      final response = await _httpHelper.get(url: 'generator', queryParams: params);

      List<PaymentModel> loadedData = [];

      final items = response.data['items'];


      for(int i = 0; i < items.length; i++){
        loadedData.add(PaymentModel.fromMap(items[i]));
      }
      print(items);
      _modelList = loadedData;
      notifyListeners();
    }catch(e){
      if (kDebugMode) {
        print(e);
      }
    }
  }


}