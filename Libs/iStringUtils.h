
#import <Foundation/Foundation.h>

@class B4IArray;
@class B4IList;

@interface iStringUtils : NSObject

- (NSString *)EncodeUrl:(NSString *)TextToEncode :(NSString *)CharSet;

- (NSString *)DecodeUrl:(NSString *)TextToDecode :(NSString *)CharSet;


- (NSString *)EncodeBase64:(B4IArray */*byte,1*/)Data;

- (B4IArray*/*byte,1*/)DecodeBase64:(NSString *)Data;

- (void)SaveCSV:(NSString *)Dir :(NSString *)FileName :(unichar)SeparatorChar :(B4IList *)Table;


- (void)SaveCSV2:(NSString *)Dir :(NSString *)FileName :(unichar)SeparatorChar :(B4IList *)Table :(B4IList *)Headers;

- (B4IList *)LoadCSV:(NSString *)Dir :(NSString *)FileName :(unichar)SeparatorChar;

- (B4IList *)LoadCSV2:(NSString *)Dir :(NSString *)FileName :(unichar)SeparatorChar :(B4IList *)Headers;
@end
