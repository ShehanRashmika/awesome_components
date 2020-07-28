#import "AwesomecomponentsPlugin.h"
#if __has_include(<awesomecomponents/awesomecomponents-Swift.h>)
#import <awesomecomponents/awesomecomponents-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "awesomecomponents-Swift.h"
#endif

@implementation AwesomecomponentsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAwesomecomponentsPlugin registerWithRegistrar:registrar];
}
@end
