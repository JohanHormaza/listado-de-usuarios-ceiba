
#import "b4i_postsuserpage.h"
#import "b4i_main.h"
#import "b4i_listuserpage.h"
#import "b4i_httputils2service.h"
#import "b4i_httpjob.h"

@implementation _dataposts
-(void)Initialize{
self.IsInitialized = true;
self->_titlePosts = @"";
self->_bodyPost = @"";
self->_userIdPosts = 0;
}
- (NSString*)description {
return [B4I TypeToString:self :false];}
@end

@implementation b4i_postsuserpage 


+ (instancetype)new {
    static b4i_postsuserpage* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4I alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}

- (NSString*)  _btnatras_click{
[self->__listuserpage _show /*NSString**/ ];
return @"";
}
- (NSString*)  _jhrlistviewposts_visiblerangechanged:(int) _firstindex :(int) _lastindex{
int _extrasize = 0;
int _i = 0;
B4IPanelWrapper* _p = nil;
_dataposts* _dp = nil;
_extrasize = (int) (20);
{
const int step2 = 1;
const int limit2 = (int) ([self->__jhrlistviewposts _getsize]-1);
_i = (int) (0) ;
for (;_i <= limit2 ;_i = _i + step2 ) {
_p = [B4IPanelWrapper new];
_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([self->__jhrlistviewposts _getpanel:_i]).object)];
if (_i>_firstindex-_extrasize && _i<_lastindex+_extrasize) {
if ([_p NumberOfViews]==0) {
_dp = (_dataposts*)([self->__jhrlistviewposts _getvalue:_i]);
[_p LoadLayout:@"listPosts" :self.bi];
[self->__lbltittlepost setText:_dp->_titlePosts /*NSString**/ ];
[self->__lblbodyposts setText:_dp->_bodyPost /*NSString**/ ];
[self->__lblidposts setText:[@[@"#",[self.bi NumberToString:@(_dp->_userIdPosts /*int*/ )]] componentsJoinedByString:@""]];
 };
 }else {
if ([_p NumberOfViews]>0) {
[_p RemoveAllViews];
 };
 };
 }
};
return @"";
}
- (NSString*)  _page_resize:(int) _width :(int) _height{
return @"";
}
- (NSString*)  _process_globals{
self->__main=[b4i_main new];
self->__listuserpage=[b4i_listuserpage new];
self->__httputils2service=[b4i_httputils2service new];
self->__xui = [B4IXUI new];
self->__page = [B4IPage new];
self->__imgfondoimagentop = [B4IImageViewWrapper new];
self->__lblnameuserpost = [B4ILabelWrapper new];
self->__lblemailuserpost = [B4ILabelWrapper new];
self->__lblphoneuserpost = [B4ILabelWrapper new];
self->__jhrlistviewposts = [b4i_jhrlistview new];
;
self->__imguserposts = [B4IImageViewWrapper new];
self->__lbltittlepost = [B4ILabelWrapper new];
self->__lblbodyposts = [B4ILabelWrapper new];
self->__lblidposts = [B4ILabelWrapper new];
return @"";
}
- (NSString*)  _show{
B4IJSONParser* _parser = nil;
B4IList* _rootmap = nil;
B4IMap* _colrootmap = nil;
_dataposts* _data = nil;
B4IPanelWrapper* _p = nil;
if ([self->__page IsInitialized]==false) { 
[self->__page Initialize:self.bi :@"Page"];};
[self->__main->__navcontrol /*B4INavigationControllerWrapper**/  ShowPage:(UIViewController*)((self->__page).object)];
[[self->__page RootPanel] RemoveAllViews];
[[self->__page RootPanel] LoadLayout:@"postsUser" :self.bi];
[self->__lblnameuserpost setText:((_datauser*)(self->__main->__valueobject /*NSObject**/ ))->_nameUser /*NSString**/ ];
[self->__lblemailuserpost setText:((_datauser*)(self->__main->__valueobject /*NSObject**/ ))->_emailUser /*NSString**/ ];
[self->__lblphoneuserpost setText:((_datauser*)(self->__main->__valueobject /*NSObject**/ ))->_phoneUser /*NSString**/ ];
[self->__imguserposts setBitmap:[self->___c LoadBitmap:[[self->___c File] DirAssets] :((_datauser*)(self->__main->__valueobject /*NSObject**/ ))->_imageFile /*NSString**/ ]];
[self->__imgfondoimagentop setBitmap:[self->___c LoadBitmap:[[self->___c File] DirAssets] :([@[@"pexels-photo-",[self->___c SmartStringFormatter:@"" :(NSObject*)(@([self->___c Rnd:(int) (1) :(int) (4)]))],@".jpeg"] componentsJoinedByString:@""])]];
_parser = [B4IJSONParser new];
[_parser Initialize:self->__main->__stringposts /*NSString**/ ];
_rootmap = [B4IList new];
_rootmap = [_parser NextArray];
{
const id<B4IIterable> group13 = _rootmap;
const int groupLen13 = group13.Size
;int index13 = 0;
;
for (; index13 < groupLen13;index13++){
_colrootmap = (B4IMap*)([group13 Get:index13]);
_data = [_dataposts new];
[_data Initialize];
_data->_titlePosts /*NSString**/  = [self.bi ObjectToString:[_colrootmap Get:(NSObject*)(@"title")]];
_data->_bodyPost /*NSString**/  = [self.bi ObjectToString:[_colrootmap Get:(NSObject*)(@"body")]];
_data->_userIdPosts /*int*/  = [self.bi ObjectToNumber:[_colrootmap Get:(NSObject*)(@"id")]].intValue;
_p = [B4IPanelWrapper new];
_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([self->__xui CreatePanel:self.bi :@""]).object)];
[_p SetLayoutAnimated:(int) (0) :(float) (1) :(float) (0) :(float) (0) :[[self->__jhrlistviewposts _asview] Width] :(float) (((int) (280)))];
[self->__jhrlistviewposts _add:(B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((_p).object)] :(NSObject*)(_data)];
 }
};
return @"";
}
@end
