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
@class _datauser;
@class _dataposts;
@class _multipartfiledata;
@class b4i_httpjob;
@interface b4i_httputils2service : B4IStaticModule
{
@public B4IHttp* __hc;
@public B4IMap* __taskidtojob;
@public NSString* __tempfolder;
@public int __taskcounter;
@public b4i_main* __main;
@public b4i_listuserpage* __listuserpage;
@public b4i_postsuserpage* __postsuserpage;

}- (NSString*)  _completejob:(int) _taskid :(BOOL) _success :(NSString*) _errormessage :(B4IHttpResponse*) _res;
- (NSString*)  _hc_responseerror:(B4IHttpResponse*) _response :(NSString*) _reason :(int) _statuscode :(int) _taskid;
- (NSString*)  _hc_responsesuccess:(B4IHttpResponse*) _response :(int) _taskid;
- (NSString*)  _process_globals;
@property (nonatomic)B4IHttp* _hc;
@property (nonatomic)B4IMap* _taskidtojob;
@property (nonatomic)NSString* _tempfolder;
@property (nonatomic)int _taskcounter;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_listuserpage* _listuserpage;
@property (nonatomic)b4i_postsuserpage* _postsuserpage;
- (NSString*)  _service_create;
- (NSString*)  _submitjob:(b4i_httpjob*) _job;
@end
