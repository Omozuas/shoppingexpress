import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopexpres/apis/connectionUrl/apiUrl.dart';
import 'package:shopexpres/apis/models/listOfProductItem.dart';
import 'package:shopexpres/apis/models/mainListProduct.dart';

class TimbuApiProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get loading => _isLoading;

  setLoading(bool value) {
    _isLoading = value;
  }

  Future<MainProduct> getProduct() async {
    setLoading(true);
    var getTimbu =
        '${TibumUrl().tibumUrl}?&organization_id=${TibumUrl().organizaionId}&Appid=${TibumUrl().appId}&Apikey=${TibumUrl().apiKey}';
    print(getTimbu);
    var res = await http.get(
      Uri.parse(getTimbu),
      headers: {
        'Content-Type': "application/json",
      },
    );

    if (res.statusCode == 200) {
      setLoading(false);
      notifyListeners();
      return mainProductFromJson(res.body);
    } else {
      setLoading(false);
      notifyListeners();
      return mainProductFromJson(res.body);
    }
  }

  Future<Item2> getAProduct(id) async {
    setLoading(true);
    var getTimbu =
        '${TibumUrl().tibumUrl}/${id}?&organization_id=${TibumUrl().organizaionId}&Appid=${TibumUrl().appId}&Apikey=${TibumUrl().apiKey}';
    print(getTimbu);
    var res = await http.get(
      Uri.parse(getTimbu),
      headers: {
        'Content-Type': "application/json",
      },
    );

    if (res.statusCode == 200) {
      setLoading(false);
      notifyListeners();
      return singleItemFromJson(res.body);
    } else {
      setLoading(false);
      notifyListeners();
      return singleItemFromJson(res.body);
    }
  }
}
// api key=4b4ea49b9d0649a5a1089b476a8e658120240704211421778273
// appid=6OK3HZFZILCW0ER