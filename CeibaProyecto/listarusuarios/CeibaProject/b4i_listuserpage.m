
#import "b4i_listuserpage.h"
#import "b4i_main.h"
#import "b4i_postsuserpage.h"
#import "b4i_httputils2service.h"
#import "b4i_httpjob.h"

@interface ResumableSub_listuserpage_ConsultarPost :B4IResumableSub 
- (instancetype) init: (b4i_listuserpage*) parent1 :(NSString*) _url1;
@end
@implementation ResumableSub_listuserpage_ConsultarPost {
b4i_listuserpage* parent;
NSString* _url;
b4i_httpjob* _j;
}
- (instancetype) init: (b4i_listuserpage*) parent1 :(NSString*) _url1 {
self->_url = _url1;
self->parent = parent1;
return self;
}
- (void) resume:(B4I*)bi1 :(NSArray*)result {
self.bi = bi1;

    while (true) {
        switch (self->_state) {
            case -1:
{
[parent->___c ReturnFromResumableSub:self :nil];return;}
case 0:
//C
self->_state = 1;
self->_j = [b4i_httpjob new];
[self->_j _initialize /*NSString**/ :self.bi :@"" :parent];
[self->_j _download /*NSString**/ :self->_url];
[parent->___c WaitFor:@"jobdone:" :self.bi :self :(NSObject*)(self->_j)];
self->_state = 7;
return;
case 7:
//C
self->_state = 1;
self->_j = ((b4i_httpjob*) result[0]);
;
if (true) break;

case 1:
//if
self->_state = 6;
if (self->_j->__success /*BOOL*/ ) { 
self->_state = 3;
}else {
self->_state = 5;
}if (true) break;

case 3:
//C
self->_state = 6;
parent->__main->__stringposts /*NSString**/  = [self->_j _getstring /*NSString**/ ];
 if (true) break;

case 5:
//C
self->_state = 6;
[parent->___c LogImpl:@"79633800" :[@[@"ERROR: ",self->_j->__errormessage /*NSString**/ ] componentsJoinedByString:@""] :0];
 if (true) break;

case 6:
//C
self->_state = -1;
;

[self->_j _release /*NSString**/ ];
if (true) {
[parent->___c ReturnFromResumableSub:self :(NSObject*)(@(self->_j->__success /*BOOL*/ ))];return;};
if (true) break;

            }
        }
    }
@end
@interface ResumableSub_listuserpage_JHRListView1_ItemClick :B4IResumableSub 
- (instancetype) init: (b4i_listuserpage*) parent1 :(int) _index1 :(NSObject*) _value1;
@end
@implementation ResumableSub_listuserpage_JHRListView1_ItemClick {
b4i_listuserpage* parent;
int _index;
NSObject* _value;
BOOL _success;
}
- (instancetype) init: (b4i_listuserpage*) parent1 :(int) _index1 :(NSObject*) _value1 {
self->_index = _index1;
self->_value = _value1;
self->parent = parent1;
return self;
}
- (void) resume:(B4I*)bi1 :(NSArray*)result {
self.bi = bi1;

    while (true) {
        switch (self->_state) {
            case -1:
return;

case 0:
//C
self->_state = 1;
parent->__main->__valueobject /*NSObject**/  = self->_value;
[parent->___c WaitFor:@"complete:" :self.bi :self :[parent _consultarpost:([@[@"https://jsonplaceholder.typicode.com/posts?userId=",[parent->___c SmartStringFormatter:@"" :(NSObject*)(@(((_datauser*)(self->_value))->_ID /*int*/ ))],@""] componentsJoinedByString:@""])]];
self->_state = 5;
return;
case 5:
//C
self->_state = 1;
self->_success = ((NSNumber*) result[0]).boolValue;
;
if (true) break;

case 1:
//if
self->_state = 4;
if (self->_success) { 
self->_state = 3;
}if (true) break;

case 3:
//C
self->_state = 4;
[parent->___c LogImpl:@"78585220" :@"Consulta de posts exitosa!" :0];
[parent->__postsuserpage _show /*NSString**/ ];
 if (true) break;

case 4:
//C
self->_state = -1;
;
if (true) break;

            }
        }
    }
@end
@implementation _datauser
-(void)Initialize{
self.IsInitialized = true;
self->_nameUser = @"";
self->_emailUser = @"";
self->_phoneUser = @"";
self->_ID = 0;
self->_imageFile = @"";
}
- (NSString*)description {
return [B4I TypeToString:self :false];}
@end

@implementation b4i_listuserpage 


+ (instancetype)new {
    static b4i_listuserpage* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4I alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}

- (NSString*)  _addviewtokeyboard:(B4ITextFieldWrapper*) _textfield1 :(B4IViewWrapper*) _view1{
B4INativeObject* _no = nil;
_no = [B4INativeObject new];
_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((_textfield1).object)];
[_no SetField:@"inputAccessoryView" :(NSObject*)((_view1).object)];
return @"";
}
- (NSString*)  _btndone_click{
[self->__page ResignFocus];
return @"";
}
- (NSString*)  _consultarlistausuario:(NSString*) _querytype{
B4IList* _listbitmap = nil;
B4IResultSet* _rs = nil;
_datauser* _data = nil;
B4IPanelWrapper* _p = nil;
[self->__jhrlistview1 _clear];
_listbitmap = [B4IList new];
_listbitmap = [self.bi ArrayToList:[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)(@"img1.png")],[B4I nilToNSNull:(NSObject*)(@"img2.png")],[B4I nilToNSNull:(NSObject*)(@"img3.png")],[B4I nilToNSNull:(NSObject*)(@"img4.png")],[B4I nilToNSNull:(NSObject*)(@"img5.png")]]]];
_rs = [self->__sql1 ExecQuery:_querytype];
while ([_rs NextRow]) {
_data = [_datauser new];
[_data Initialize];
_data->_nameUser /*NSString**/  = [_rs GetString:@"Nombres"];
_data->_phoneUser /*NSString**/  = [_rs GetString:@"Telefono"];
_data->_emailUser /*NSString**/  = [_rs GetString:@"Email"];
_data->_ID /*int*/  = [_rs GetInt:@"ID_User"];
_data->_imageFile /*NSString**/  = [self.bi ObjectToString:[_listbitmap Get:(int) (([_rs GetInt:@"ID"]-1)%[_listbitmap Size])]];
_p = [B4IPanelWrapper new];
_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([self->__xui CreatePanel:self.bi :@""]).object)];
[_p SetLayoutAnimated:(int) (0) :(float) (1) :(float) (0) :(float) (0) :[[self->__jhrlistview1 _asview] Width] :(float) (((int) (150)))];
[self->__jhrlistview1 _add:(B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((_p).object)] :(NSObject*)(_data)];
 }
;
if ([self->__jhrlistview1 _getsize]==0) {
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((self->__imgemptylist).object)]) setVisible:true];
 }else {
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((self->__imgemptylist).object)]) setVisible:false];
 };
[self->__progresswait setVisible:false];
return @"";
}
- (B4IResumableSubWrapper*)  _consultarpost:(NSString*) _url{
ResumableSub_listuserpage_ConsultarPost* rsub = [[ResumableSub_listuserpage_ConsultarPost alloc] init:self : _url];
[rsub resume:self.bi :nil];
return (B4IResumableSubWrapper*) [B4IObjectWrapper createWrapper:[B4IResumableSubWrapper new] object:rsub];
}
//-744542705
- (void)  _jobdone:(b4i_httpjob*) _j{
}
- (NSString*)  _edtbuscador_textchanged:(NSString*) _oldtext :(NSString*) _newtext{
[self _consultarlistausuario:([@[@"SELECT * FROM Usuarios WHERE Nombres LIKE '%",[self->___c SmartStringFormatter:@"" :(NSObject*)(_newtext)],@"%'"] componentsJoinedByString:@""])];
return @"";
}
- (void)  _jhrlistview1_itemclick:(int) _index :(NSObject*) _value{
ResumableSub_listuserpage_JHRListView1_ItemClick* rsub = [[ResumableSub_listuserpage_JHRListView1_ItemClick alloc] init:self : _index: _value];
[rsub resume:self.bi :nil];
}
//-1106064916
- (void)  _complete:(BOOL) _success{
}
- (NSString*)  _jhrlistview1_visiblerangechanged:(int) _firstindex :(int) _lastindex{
int _extrasize = 0;
int _i = 0;
B4IPanelWrapper* _p = nil;
_datauser* _du = nil;
_extrasize = (int) (20);
{
const int step2 = 1;
const int limit2 = (int) ([self->__jhrlistview1 _getsize]-1);
_i = (int) (0) ;
for (;_i <= limit2 ;_i = _i + step2 ) {
_p = [B4IPanelWrapper new];
_p = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([self->__jhrlistview1 _getpanel:_i]).object)];
if (_i>_firstindex-_extrasize && _i<_lastindex+_extrasize) {
if ([_p NumberOfViews]==0) {
_du = (_datauser*)([self->__jhrlistview1 _getvalue:_i]);
[_p LoadLayout:@"CardUser" :self.bi];
[self->__lblnameusercard setText:_du->_nameUser /*NSString**/ ];
[self->__lblemailuser setText:_du->_emailUser /*NSString**/ ];
[self->__lblphoneuser setText:_du->_phoneUser /*NSString**/ ];
[self->__lbliduser setText:[@[@"#",[self.bi NumberToString:@(_du->_ID /*int*/ )]] componentsJoinedByString:@""]];
[self->__imguser setBitmap:[self->___c LoadBitmap:[[self->___c File] DirAssets] :_du->_imageFile /*NSString**/ ]];
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
- (NSString*)  _process_globals{
self->__main=[b4i_main new];
self->__postsuserpage=[b4i_postsuserpage new];
self->__httputils2service=[b4i_httputils2service new];
self->__page = [B4IPage new];
self->__pnlbuscador = [B4IPanelWrapper new];
self->__edtbuscador = [B4ITextFieldWrapper new];
self->__jhrlistview1 = [b4i_jhrlistview new];
self->__xui = [B4IXUI new];
;
self->__lblnameusercard = [B4ILabelWrapper new];
self->__lbliduser = [B4ILabelWrapper new];
self->__lblphoneuser = [B4ILabelWrapper new];
self->__lblemailuser = [B4ILabelWrapper new];
self->__imguser = [B4IImageViewWrapper new];
self->__progresswait = [B4IProgressWrapper new];
self->__sql1 = [B4ISQL new];
self->__imgemptylist = [B4IImageViewWrapper new];
return @"";
}
- (NSString*)  _show{
B4IPanelWrapper* _pdone = nil;
if ([self->__page IsInitialized]==false) { 
[self->__page Initialize:self.bi :@"Page"];};
[self->__main->__navcontrol /*JHRNavigationControllerWrapper**/  ShowPage:(UIViewController*)((self->__page).object)];

[[self->__page RootPanel] RemoveAllViews];
[[self->__page RootPanel] LoadLayout:@"Page2" :self.bi];
_pdone = [B4IPanelWrapper new];
[_pdone Initialize:self.bi :@""];
[_pdone LoadLayout:@"keyBoardDone" :self.bi];
[_pdone setHeight:(float) (46)];
[self _addviewtokeyboard:self->__edtbuscador :(B4IViewWrapper*) [B4IObjectWrapper createWrapper:[B4IViewWrapper new] object:(UIView*)((_pdone).object)]];
[self->__jhrlistview1 _clear];
[self->__progresswait setVisible:true];
[self->__sql1 Initialize:[[self->___c File] DirDocuments] :@"database.db" :false];
[self _consultarlistausuario:@"SELECT * FROM Usuarios"];
return @"";
}
@end
