#import "SecurerandomPlugin.h"
#import <securerandom/securerandom-Swift.h>

@implementation SecurerandomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSecurerandomPlugin registerWithRegistrar:registrar];
}
@end
