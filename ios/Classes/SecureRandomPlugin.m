#import "SecureRandomPlugin.h"
#import <securerandom/securerandom-Swift.h>

@implementation SecureRandomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSecureRandomPlugin registerWithRegistrar:registrar];
}
@end
