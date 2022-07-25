import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'log_service.dart';

class InterceptorService implements InterceptorContract{
  @override
  Future<RequestData> interceptRequest({required RequestData data})async{
    LogService.i(data.url.toString());
    LogService.i(data.method.toString());
    LogService.i(data.headers.toString());
    LogService.i(data.params.toString());
    LogService.i(data.body.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data})async{
    LogService.v(data.statusCode.toString());
    LogService.v(data.body.toString());
    return data;
  }
}