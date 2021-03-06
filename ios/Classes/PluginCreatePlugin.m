#import "PluginCreatePlugin.h"
#if __has_include(<plugin_create/plugin_create-Swift.h>)
#import <plugin_create/plugin_create-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugin_create-Swift.h"
#endif

@implementation PluginCreatePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginCreatePlugin registerWithRegistrar:registrar];
}
@end
