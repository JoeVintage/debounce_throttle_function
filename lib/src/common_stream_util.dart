import 'package:rxdart/rxdart.dart';



/// 防止多次点击【都用 Stream来实现，基于Rxdart二次封装】
class CommonStreamUtils {


  static BehaviorSubject throttleBehaviorSubject = BehaviorSubject();

  static BehaviorSubject debounceBehaviorSubject = BehaviorSubject();


  /// 防重复提交, 默认一秒【节流】
  static void throttleFunction(Function fn, {int milliseconds = 1000}) {
    throttleBehaviorSubject.add(null);
    if (throttleBehaviorSubject.hasListener == false) {
      throttleBehaviorSubject
          .throttleTime(Duration(milliseconds: milliseconds))
          .listen((value) {
        fn.call();
      });
    }
  }

  ///  默认一秒【防抖】
  /// 参考 https://rxmarbles.com/#debounce
  static void debounceFunction(Function fn, {int milliseconds = 1000}) {
    debounceBehaviorSubject.add(null);
    if (debounceBehaviorSubject.hasListener == false) {
      debounceBehaviorSubject
          .debounceTime(Duration(milliseconds: milliseconds))
          .listen((value) {
        fn.call();
      });
    }
  }
}
