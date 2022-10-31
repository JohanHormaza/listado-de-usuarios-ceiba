
#import <Foundation/Foundation.h>
#import "iCore.h"

@class B4IMap;
@class B4IList;

@interface B4IJSONParser : NSObject
- (void)Initialize:(NSString *)Text;
- (B4IMap *)NextObject;
- (B4IList *)NextArray;
@end

@interface B4IJSONGenerator : NSObject
- (void)Initialize:(B4IMap *)Map;
- (void)Initialize2:(B4IList *)List;
- (NSString *)ToString;
- (NSString *)ToPrettyString:(int)Indent;
@end
@interface B4IJSONConverter : B4IObjectWrapper

-(NSString*)ToString;

-(NSString*)ToCompactString;

-(B4IMap *)ToMap;

-(B4IList *)ToList;
@end
