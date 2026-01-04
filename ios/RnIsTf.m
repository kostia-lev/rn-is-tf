#import "RnIsTf.h"

@implementation RnIsTf

RCT_EXPORT_MODULE(RnIsTf)

RCT_EXPORT_METHOD(isTestFlight:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
#if TARGET_OS_SIMULATOR
  resolve(@(NO));
#else
  // Simple heuristic — TestFlight apps have no embedded.mobileprovision
  NSString *path = [[NSBundle mainBundle] pathForResource:@"embedded" ofType:@"mobileprovision"];
  BOOL isTestFlight = (path == nil);
  resolve(@(isTestFlight));
#endif
}

@end
