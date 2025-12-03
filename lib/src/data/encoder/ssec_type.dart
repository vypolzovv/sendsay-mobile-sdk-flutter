import '../model/ssec_type.dart';

abstract class SSECTypeEncoder {
  static String encode(TrackingSSECType type) => type.value;

  static TrackingSSECType decode(String value) {
    val result = TrackingSSECType.values.where( (e) => e.value == value );
    if (result != null) return result;
    else throw UnsupportedError('`$value` is not an TrackingSSECType!');
    // switch (value) {
    //   case TrackingSSECType.basketClear.value:
    //     return TrackingSSECType.basketClear;
    //   case TrackingSSECType.basketAdd.value:
    //     return TrackingSSECType.basketAdd;
    //   case TrackingSSECType.order.value:
    //     return TrackingSSECType.order;
    //   case TrackingSSECType.viewProduct.value:
    //     return TrackingSSECType.viewProduct;
    //   default:
    //     throw UnsupportedError('`$value` is not an TrackingSSECType!');
    // }
  }
}
