#import "iCore.h"
#import "iJSON.h"
#import "iSQL.h"
#import "iXUI.h"
#import "JHRListView.h"
#import "iHttp.h"
#import "iStringUtils.h"
@class b4i_main;
@class b4i_postsuserpage;
@class b4i_httputils2service;
@class _datauser;
@class _dataposts;
@class _multipartfiledata;
@class b4i_httpjob;
@interface b4i_listuserpage : B4IStaticModule
{
@public B4IPage* __page;
@public B4IPanelWrapper* __pnlbuscador;
@public B4ITextFieldWrapper* __edtbuscador;
@public b4i_jhrlistview* __jhrlistview1;
@public B4IXUI* __xui;
@public B4ILabelWrapper* __lblnameusercard;
@public B4ILabelWrapper* __lbliduser;
@public B4ILabelWrapper* __lblphoneuser;
@public B4ILabelWrapper* __lblemailuser;
@public B4IImageViewWrapper* __imguser;
@public B4IProgressWrapper* __progresswait;
@public B4ISQL* __sql1;
@public B4IImageViewWrapper* __imgemptylist;
@public b4i_main* __main;
@public b4i_postsuserpage* __postsuserpage;
@public b4i_httputils2service* __httputils2service;

}- (NSString*)  _addviewtokeyboard:(B4ITextFieldWrapper*) _textfield1 :(B4IViewWrapper*) _view1;
- (NSString*)  _btndone_click;
- (NSString*)  _consultarlistausuario:(NSString*) _querytype;
- (B4IResumableSubWrapper*)  _consultarpost:(NSString*) _url;
- (void)  _jobdone:(b4i_httpjob*) _j;
- (NSString*)  _edtbuscador_textchanged:(NSString*) _oldtext :(NSString*) _newtext;
- (void)  _jhrlistview1_itemclick:(int) _index :(NSObject*) _value;
- (void)  _complete:(BOOL) _success;
- (NSString*)  _jhrlistview1_visiblerangechanged:(int) _firstindex :(int) _lastindex;
- (NSString*)  _process_globals;
@property (nonatomic)B4IPage* _page;
@property (nonatomic)B4IPanelWrapper* _pnlbuscador;
@property (nonatomic)B4ITextFieldWrapper* _edtbuscador;
@property (nonatomic)b4i_jhrlistview* _jhrlistview1;
@property (nonatomic)B4IXUI* _xui;
@property (nonatomic)B4ILabelWrapper* _lblnameusercard;
@property (nonatomic)B4ILabelWrapper* _lbliduser;
@property (nonatomic)B4ILabelWrapper* _lblphoneuser;
@property (nonatomic)B4ILabelWrapper* _lblemailuser;
@property (nonatomic)B4IImageViewWrapper* _imguser;
@property (nonatomic)B4IProgressWrapper* _progresswait;
@property (nonatomic)B4ISQL* _sql1;
@property (nonatomic)B4IImageViewWrapper* _imgemptylist;
@property (nonatomic)b4i_main* _main;
@property (nonatomic)b4i_postsuserpage* _postsuserpage;
@property (nonatomic)b4i_httputils2service* _httputils2service;
- (NSString*)  _show;
@end
@interface _datauser:NSObject
{
@public BOOL _IsInitialized;
@public NSString* _nameUser;
@public NSString* _emailUser;
@public NSString* _phoneUser;
@public int _ID;
@public NSString* _imageFile;

}
@property (nonatomic)BOOL IsInitialized;
@property (nonatomic)NSString* nameUser;
@property (nonatomic)NSString* emailUser;
@property (nonatomic)NSString* phoneUser;
@property (nonatomic)int ID;
@property (nonatomic)NSString* imageFile;
-(void)Initialize;
@end
