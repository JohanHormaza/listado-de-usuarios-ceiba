#import "iCore.h"
#import "iJSON.h"
#import "iSQL.h"
#import "iXUI.h"
#import "JHRListView.h"
#import "iHttp.h"
#import "iStringUtils.h"
@class b4i_main;
@class b4i_listuserpage;
@class b4i_postsuserpage;
@class b4i_httputils2service;
@class _datauser;
@class _dataposts;
@class _multipartfiledata;
@interface b4i_httpjob : B4IClass
{
@public NSString* __jobname;
@public BOOL __success;
@public NSString* __username;
@public NSString* __password;
@public NSString* __errormessage;
@public NSObject* __target;
@public B4IHttpRequest* __req;
@public B4IHttpResponse* __response;
@public NSObject* __tag;
@public NSString* __invalidurl;
@public NSString* __defaultscheme;
@public b4i_main* __main;
@public b4i_listuserpage* __listuserpage;
@public b4i_postsuserpage* __postsuserpage;
@public b4i_httputils2service* __httputils2service;

}- (NSString*)  _addscheme:(NSString*) _link;
- (NSString*)  _class_globals;
@property (nonatomic)NSString* _jobname;
@property (nonatomic)BOOL _success;
@property (nonatomic)NSString* _username;
@property (nonatomic)NSString* _password;
@property (nonatomic)NSString* _errormessage;
@property (nonatomic)NSObject* _target;
@property (nonatomic)B4IHttpRequest* _req;
@property (nonatomic)B4IHttpResponse* _response;
@property (nonatomic)NSObject* _tag;
@property (nonatomic)NSString* _invalidurl;
@property (nonatomic)NSString* _defaultscheme;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_listuserpage* _listuserpage;
@property (nonatomic)b4i_postsuserpage* _postsuserpage;
@property (nonatomic)b4i_httputils2service* _httputils2service;
- (NSString*)  _complete:(B4IHttpResponse*) _res1;
- (NSString*)  _delete:(NSString*) _link;
- (NSString*)  _delete2:(NSString*) _link :(B4IArray*) _parameters;
- (NSString*)  _download:(NSString*) _link;
- (NSString*)  _download2:(NSString*) _link :(B4IArray*) _parameters;
- (NSString*)  _escapelink:(NSString*) _link :(B4IArray*) _parameters;
- (B4IBitmap*)  _getbitmap;
- (B4IBitmap*)  _getbitmapresize:(int) _width :(int) _height :(BOOL) _keepaspectratio;
- (B4IInputStream*)  _getinputstream;
- (B4IHttpRequest*)  _getrequest;
- (NSString*)  _getstring;
- (NSString*)  _getstring2:(NSString*) _encoding;
- (NSString*)  _head:(NSString*) _link;
- (NSString*)  _initialize:(B4I*) _ba :(NSString*) _name :(NSObject*) _targetmodule;
- (BOOL)  _multipartstartsection:(B4IOutputStream*) _stream :(BOOL) _empty;
- (NSString*)  _patchbytes:(NSString*) _link :(B4IArray*) _data;
- (NSString*)  _patchstring:(NSString*) _link :(NSString*) _text;
- (NSString*)  _postbytes:(NSString*) _link :(B4IArray*) _data;
- (NSString*)  _postfile:(NSString*) _link :(NSString*) _dir :(NSString*) _filename;
- (NSString*)  _postmultipart:(NSString*) _link :(B4IMap*) _namevalues :(B4IList*) _files;
- (NSString*)  _poststring:(NSString*) _link :(NSString*) _text;
- (NSString*)  _putbytes:(NSString*) _link :(B4IArray*) _data;
- (NSString*)  _putstring:(NSString*) _link :(NSString*) _text;
- (NSString*)  _release;
@end
@interface _multipartfiledata:NSObject
{
@public BOOL _IsInitialized;
@public NSString* _Dir;
@public NSString* _FileName;
@public NSString* _KeyName;
@public NSString* _ContentType;

}
@property (nonatomic)BOOL IsInitialized;
@property (nonatomic)NSString* Dir;
@property (nonatomic)NSString* FileName;
@property (nonatomic)NSString* KeyName;
@property (nonatomic)NSString* ContentType;
-(void)Initialize;
@end
