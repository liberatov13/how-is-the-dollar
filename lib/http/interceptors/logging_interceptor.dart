import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:http_interceptor/models/request_data.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('Request');
    print('URL: ${data.baseUrl}');
    print('Headers: ${data.headers}');
    print('Body: ${data.body}');
    return data;
  }
  
  @override
  Future<ResponseData> interceptResponse({ResponseData  data}) async {
    print('Response');
    print('Status code: ${data.statusCode}');
    print('Body: ${data.body}');
    return data;
  }

}