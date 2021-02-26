#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTBridgeMethod.h>

@interface RCT_EXTERN_MODULE(SmartyAlerts, NSObject)

RCT_EXTERN_METHOD(alert:(NSString)title
                  withMessage:(NSString)message
                  withBtnOneLabel:(NSString)btnOneLabel
                  withBtnTwoLabel:(NSString)btnTwoLabel
                  withResolve:(RCTResponseSenderBlock)resolve
                  withReject:(RCTResponseSenderBlock)reject)

@end
