#import "iCore.h"
#import "iJSON.h"
#import "iSQL.h"
#import "iXUI.h"
#import "JHRListView.h"
#import "iHttp.h"
#import "iStringUtils.h"
@class b4i_listuserpage;
@class b4i_postsuserpage;
@class b4i_httputils2service;
@class _datauser;
@class _dataposts;
@class _multipartfiledata;
@class b4i_httpjob;
@interface b4i_main : B4IStaticModule
{
@public B4IApplicationWrapper* __app;
@public B4INavigationControllerWrapper* __navcontrol;
@public B4IPage* __page;
@public B4IXUI* __xui;
@public B4IPanelWrapper* __mcallback;
@public B4IPanelWrapper* __background;
@public B4IImageViewWrapper* __img;
@public B4ILabelWrapper* __lbluiionverse;
@public B4ILabelWrapper* __lblion;
@public B4ILabelWrapper* __lblverse;
@public B4ILabelWrapper* __lbldsc;
@public B4IPanelWrapper* __background2;
@public NSObject* __valueobject;
@public NSString* __stringposts;
@public b4i_listuserpage* __listuserpage;
@public b4i_postsuserpage* __postsuserpage;
@public b4i_httputils2service* __httputils2service;

}- (void)  _animations;
- (void)  _complete:(BOOL) _success;
- (void)  _application_start:(B4INavigationControllerWrapper*) _nav;
- (void)  _page_resize:(int) _width :(int) _height;
- (B4IResumableSubWrapper*)  _consultarlistado:(NSString*) _url;
- (void)  _jobdone:(b4i_httpjob*) _j;
- (B4ILabelWrapper*)  _createlabel:(NSString*) _eventname;
- (NSString*)  _process_globals;
@property (nonatomic)B4IApplicationWrapper* _app;
@property (nonatomic)B4INavigationControllerWrapper* _navcontrol;
@property (nonatomic)B4IPage* _page;
@property (nonatomic)B4IXUI* _xui;
@property (nonatomic)B4IPanelWrapper* _mcallback;
@property (nonatomic)B4IPanelWrapper* _background;
@property (nonatomic)B4IImageViewWrapper* _img;
@property (nonatomic)B4ILabelWrapper* _lbluiionverse;
@property (nonatomic)B4ILabelWrapper* _lblion;
@property (nonatomic)B4ILabelWrapper* _lblverse;
@property (nonatomic)B4ILabelWrapper* _lbldsc;
@property (nonatomic)B4IPanelWrapper* _background2;
@property (nonatomic)NSObject* _valueobject;
@property (nonatomic)NSString* _stringposts;
@property (nonatomic)b4i_listuserpage* _listuserpage;
@property (nonatomic)b4i_postsuserpage* _postsuserpage;
@property (nonatomic)b4i_httputils2service* _httputils2service;
- (int)  _x:(int) _number;
- (NSString*)  _xviewes;
- (int)  _y:(int) _number;
@end
