#import "OracleResponsysPlugin.h"
#if __has_include(<oracle_responsys/oracle_responsys-Swift.h>)
#import <oracle_responsys/oracle_responsys-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "oracle_responsys-Swift.h"
#endif

@implementation OracleResponsysPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOracleResponsysPlugin registerWithRegistrar:registrar];
}
@end
