#import "iCore.h"
#import "iHttp.h"
#import "iStringUtils.h"
#import "iHUD.h"
@class b4i_httputils2service;
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
@public b4i_httputils2service* __httputils2service;

}- (NSString*)  _class_globals;
@property (nonatomic)NSString* _jobname;
@property (nonatomic)BOOL _success;
@property (nonatomic)NSString* _username;
@property (nonatomic)NSString* _password;
@property (nonatomic)NSString* _errormessage;
@property (nonatomic)NSObject* _target;
@property (nonatomic)B4IHttpRequest* _req;
@property (nonatomic)B4IHttpResponse* _response;
@property (nonatomic)NSObject* _tag;
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

#import "iCore.h"
#import "iHttp.h"
#import "iStringUtils.h"
#import "iHUD.h"
@class _multipartfiledata;
@class b4i_httpjob;
@interface b4i_httputils2service : B4IStaticModule
{
@public B4IHttp* __hc;
@public B4IMap* __taskidtojob;
@public NSString* __tempfolder;
@public int __taskcounter;

}- (NSString*)  _completejob:(int) _taskid :(BOOL) _success :(NSString*) _errormessage :(B4IHttpResponse*) _res;
- (NSString*)  _hc_responseerror:(B4IHttpResponse*) _response :(NSString*) _reason :(int) _statuscode :(int) _taskid;
- (NSString*)  _hc_responsesuccess:(B4IHttpResponse*) _response :(int) _taskid;
- (NSString*)  _process_globals;
@property (nonatomic)B4IHttp* _hc;
@property (nonatomic)B4IMap* _taskidtojob;
@property (nonatomic)NSString* _tempfolder;
@property (nonatomic)int _taskcounter;
- (NSString*)  _service_create;
- (NSString*)  _submitjob:(b4i_httpjob*) _job;
@end

