import 'api_manager.dart';

Future<dynamic> verifyPhoneCall({
  String phone = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'VerifyPhone',
      apiDomain: 'prime-heuristic-276612.df.r.appspot.com',
      apiEndpoint: 'api/q/user/phone/verify',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'phone': phone,
      },
      returnResponse: true,
    );

Future<dynamic> registerCall({
  String phone = '',
  String fullName = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiDomain: 'prime-heuristic-276612.df.r.appspot.com',
      apiEndpoint: 'api/q/user/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'phone': phone,
        'fullName': fullName,
      },
      returnResponse: true,
    );

Future<dynamic> loginCall({
  String phone = '',
  String activationCode = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiDomain: 'prime-heuristic-276612.df.r.appspot.com',
      apiEndpoint: 'api/q/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'phone': phone,
        'activationCode': activationCode,
      },
      returnResponse: true,
    );
