import 'package:flutter/material.dart';
import 'package:flutter_aliyun_captcha/flutter_aliyun_captcha.dart';

class Captcha extends StatelessWidget {
  const Captcha({
    Key? key,
    this.onCaptchaVerification,
  }) : super(key: key);

  final onCaptchaVerification;
  static final AliyunCaptchaController _captchaController = AliyunCaptchaController();

  final AliyunCaptchaType _captchaType = AliyunCaptchaType.slide;
  final String _language = 'en';
  final String _test = '';

  void resetCaptcha() {
    _captchaController.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        // left: 16,
        // right: 16,
      ),
      child: AliyunCaptchaButton(
        controller: _captchaController,
        type: _captchaType,
        option: AliyunCaptchaOption(
          appKey: 'FFFF0000000001780E11',
          scene: 'other',
          language: _language,
          // hideErrorCode: true,
          test: _test != 'block'
              ? null
              : _captchaType == AliyunCaptchaType.slide
                  ? 'code300'
                  : 800,
        ),
        customStyle: '''
          .nc_scale {
            background: #eeeeee !important;
          }
          .nc_scale div.nc_bg {
            background: #4696ec !important;
          }
          .nc_scale .scale_text2 {
            color: #fff !important;
          }
          .errloading {
            border: #ff0000 1px solid !important;
            color: #ef9f06 !important;
          }
        ''',
        onSuccess: (dynamic data) {
          // {"sig": "...", "token": "..."}
          // setState(() {
          //   _enableLogin = true;
          // });
          onCaptchaVerification(data);
        },
        onFailure: (String failCode) {
          // setState(() {
          //   _enableLogin = false;
          // });
          onCaptchaVerification(failCode);
          print('failCode: $failCode');
        },
        onError: (String errorCode) {
          // setState(() {
          //   _enableLogin = false;
          // });
          onCaptchaVerification(errorCode);
          print('errorCode: $errorCode');
        },
      ),
    );
  }
}
