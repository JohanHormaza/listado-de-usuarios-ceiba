
#import <Foundation/Foundation.h>
#import "iCore.h"

@class B4I;
@class B4IHttpRequest;

@interface B4IHttp : NSObject<NSURLSessionDownloadDelegate>


- (void)Initialize:(B4I *)bi :(NSString *)EventName;

- (void)InitializeAcceptAll:(B4I *)bi1 :(NSString *)EventName;

- (BOOL)IsInitialized;

- (void)Execute:(B4IHttpRequest *)Request :(int)TaskId;


- (void)ExecuteCredentials:(B4IHttpRequest *)Request :(int)TaskId :(NSString *)UserName :(NSString *)Password;
@end


@interface B4IHttpRequest : B4IObjectWrapper

@property (nonatomic)int Timeout;

- (void)InitializeGet:(NSString *)URL;

- (void)InitializeDelete:(NSString *)URL;

- (void)InitializeHead:(NSString *)URL;

- (void)InitializePut:(NSString *)URL :(NSString *)Dir :(NSString *)FileName;

- (void)InitializePut2:(NSString *)URL :(B4IArray */*byte,1*/)Data;
- (void)InitializePost2:(NSString *)URL :(B4IArray */*byte,1*/)Data;

- (void)InitializePost:(NSString *)URL :(NSString *)Dir :(NSString *)FileName;

- (void)SetHeader:(NSString *)Name :(NSString *)Value;

- (void)SetContentType:(NSString *)ContentType;

- (void)SetContentEncoding:(NSString *)Encoding;
@end


@interface B4IHttpResponse : NSObject

- (instancetype)init:(NSHTTPURLResponse *)res1 :(NSURL *)location1;

@property (nonatomic, readonly)int StatusCode;
@property (nonatomic, readonly) long long ContentLength;
@property (nonatomic, readonly)NSString *ContentEncoding;
@property (nonatomic, readonly)NSString *ContentType;


- (B4IInputStream *)GetInputStream;

- (NSString *)GetString;

- (NSString *)GetString2:(NSString *)CharSet;

- (B4IMap *)GetHeaders;
@end
