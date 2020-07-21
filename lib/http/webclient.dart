import 'package:how_is_the_dollar/http/interceptors/logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

const String url = 'https://economia.awesomeapi.com.br';

Client client = HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);