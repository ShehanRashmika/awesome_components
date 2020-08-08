#import "FlutterCurrencyConverterPlugin.h"
#if __has_include(<flutter_currency_converter/flutter_currency_converter-Swift.h>)
#import <flutter_currency_converter/flutter_currency_converter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_currency_converter-Swift.h"
#endif

@implementation FlutterCurrencyConverterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCurrencyConverterPlugin registerWithRegistrar:registrar];
}
@end
