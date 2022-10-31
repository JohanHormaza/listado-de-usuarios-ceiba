#import "iCore.h"
#import "iJSON.h"
#import "iSQL.h"
#import "iXUI.h"
#import "JHRListView.h"
#import "iHttp.h"
#import "iStringUtils.h"
@class b4i_main;
@class b4i_listuserpage;
@class b4i_httputils2service;
@class _datauser;
@class _dataposts;
@class _multipartfiledata;
@class b4i_httpjob;
@interface b4i_postsuserpage : B4IStaticModule
{
@public B4IXUI* __xui;
@public B4IPage* __page;
@public B4IImageViewWrapper* __imgfondoimagentop;
@public B4ILabelWrapper* __lblnameuserpost;
@public B4ILabelWrapper* __lblemailuserpost;
@public B4ILabelWrapper* __lblphoneuserpost;
@public b4i_jhrlistview* __jhrlistviewposts;
@public B4IImageViewWrapper* __imguserposts;
@public B4ILabelWrapper* __lbltittlepost;
@public B4ILabelWrapper* __lblbodyposts;
@public B4ILabelWrapper* __lblidposts;
@public b4i_main* __main;
@public b4i_listuserpage* __listuserpage;
@public b4i_httputils2service* __httputils2service;

}- (NSString*)  _btnatras_click;
- (NSString*)  _jhrlistviewposts_visiblerangechanged:(int) _firstindex :(int) _lastindex;
- (NSString*)  _page_resize:(int) _width :(int) _height;
- (NSString*)  _process_globals;
@property (nonatomic)B4IXUI* _xui;
@property (nonatomic)B4IPage* _page;
@property (nonatomic)B4IImageViewWrapper* _imgfondoimagentop;
@property (nonatomic)B4ILabelWrapper* _lblnameuserpost;
@property (nonatomic)B4ILabelWrapper* _lblemailuserpost;
@property (nonatomic)B4ILabelWrapper* _lblphoneuserpost;
@property (nonatomic)b4i_jhrlistview* _jhrlistviewposts;
@property (nonatomic)B4IImageViewWrapper* _imguserposts;
@property (nonatomic)B4ILabelWrapper* _lbltittlepost;
@property (nonatomic)B4ILabelWrapper* _lblbodyposts;
@property (nonatomic)B4ILabelWrapper* _lblidposts;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_listuserpage* _listuserpage;
@property (nonatomic)b4i_httputils2service* _httputils2service;
- (NSString*)  _show;
@end
@interface _dataposts:NSObject
{
@public BOOL _IsInitialized;
@public NSString* _titlePosts;
@public NSString* _bodyPost;
@public int _userIdPosts;

}
@property (nonatomic)BOOL IsInitialized;
@property (nonatomic)NSString* titlePosts;
@property (nonatomic)NSString* bodyPost;
@property (nonatomic)int userIdPosts;
-(void)Initialize;
@end
