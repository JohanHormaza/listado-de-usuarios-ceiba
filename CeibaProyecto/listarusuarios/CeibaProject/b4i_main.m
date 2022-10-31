
#import "b4i_main.h"
#import "b4i_listuserpage.h"
#import "b4i_postsuserpage.h"
#import "b4i_httputils2service.h"
#import "b4i_httpjob.h"

@interface ResumableSub_main_Animations :B4IResumableSub 
- (instancetype) init: (b4i_main*) parent1;
@end
@implementation ResumableSub_main_Animations {
b4i_main* parent;
BOOL _success;
}
- (instancetype) init: (b4i_main*) parent1 {
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
[parent->__background SetLayoutAnimated:(int) (700) :(float) (1) :[parent->__background2 Left] :[parent->__background2 Top] :[parent->__background2 Width] :[parent->__background2 Height]];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetLayoutAnimated:(int) (700) :(float) ([parent->__background2 Left]+((int) (25))) :(float) ([parent->__background2 Top]+((int) (25))) :(float) ([parent->__background2 Width]-((int) (50))) :(float) ([parent->__background2 Height]-((int) (50)))];
[parent->___c Sleep:self.bi :self :(int) (350)];
self->_state = 5;
return;
case 5:
//C
self->_state = 1;
;
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetVisibleAnimated:(int) (600) :true];
[parent->___c Sleep:self.bi :self :(int) (400)];
self->_state = 6;
return;
case 6:
//C
self->_state = 1;
;
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__background).object)]) SetRotationAnimated:(int) (2500) :(float) (90)];
[parent->___c Sleep:self.bi :self :(int) (2500)];
self->_state = 7;
return;
case 7:
//C
self->_state = 1;
;
[parent->__img BringToFront];
[parent->__lbluiionverse BringToFront];
[parent->__background2 setVisible:true];
[parent->__background setVisible:false];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__background2).object)]) SetLayoutAnimated:(int) (900) :(float) ([parent->__background2 Left]-[parent _y:(int) (60)]) :(float) ([parent->__background2 Top]-[parent _y:(int) (60)]) :(float) ([parent->__background2 Width]+[parent _y:(int) (120)]) :(float) ([parent->__background2 Height]+[parent _y:(int) (120)])];
[parent->___c Sleep:self.bi :self :(int) (1200)];
self->_state = 8;
return;
case 8:
//C
self->_state = 1;
;
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetLayoutAnimated:(int) (600) :[parent->__img Left] :(float) ([parent->__lblion Top]-([parent->__img Height]+((int) (20)))) :[parent->__img Width] :[parent->__img Height]];
[parent->___c Sleep:self.bi :self :(int) (400)];
self->_state = 9;
return;
case 9:
//C
self->_state = 1;
;

[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblion).object)]) SetVisibleAnimated:(int) (400) :true];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblverse).object)]) SetVisibleAnimated:(int) (500) :true];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbldsc).object)]) SetVisibleAnimated:(int) (700) :true];
[parent->___c Sleep:self.bi :self :(int) (500)];
self->_state = 10;
return;
case 10:
//C
self->_state = 1;
;
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbluiionverse).object)]) SetVisibleAnimated:(int) (600) :true];
[parent->___c Sleep:self.bi :self :(int) (2400)];
self->_state = 11;
return;
case 11:
//C
self->_state = 1;
;
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__img).object)]) SetVisibleAnimated:(int) (500) :false];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblion).object)]) SetVisibleAnimated:(int) (500) :false];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lblverse).object)]) SetVisibleAnimated:(int) (500) :false];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbldsc).object)]) SetVisibleAnimated:(int) (500) :false];
[((B4XViewWrapper*) [B4IObjectWrapper createWrapper:[B4XViewWrapper new] object:(NSObject*)((parent->__lbluiionverse).object)]) SetVisibleAnimated:(int) (500) :false];
[parent->___c WaitFor:@"complete:" :self.bi :self :[parent _consultarlistado:@"https://jsonplaceholder.typicode.com/users"]];
self->_state = 12;
return;
case 12:
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
[parent->___c LogImpl:@"71376287" :@"Consulta de los usuarios exitosa!" :0];
 if (true) break;

case 4:
//C
self->_state = -1;
;
[parent->___c Sleep:self.bi :self :(int) (750)];
self->_state = 13;
return;
case 13:
//C
self->_state = -1;
;
[parent->__listuserpage _show /*NSString**/ ];
 //BA.debugLineNum = 124;BA.debugLine="End Sub";
if (true) break;

            }
        }
    }
@end
@interface ResumableSub_main_Application_Start :B4IResumableSub 
- (instancetype) init: (b4i_main*) parent1 :(B4INavigationControllerWrapper*) _nav1;
@end
@implementation ResumableSub_main_Application_Start {
b4i_main* parent;
B4INavigationControllerWrapper* _nav;
B4INativeObject* _no;
int _width;
int _height;
}
- (instancetype) init: (b4i_main*) parent1 :(B4INavigationControllerWrapper*) _nav1 {
self->_nav = _nav1;
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
self->_state = -1;
parent->__navcontrol = self->_nav;
[parent->__navcontrol setNavigationBarVisible:false];
self->_no = [B4INativeObject new];
self->_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((parent->__navcontrol).object)];
[[self->_no GetField:@"navigationBar"] RunMethod:@"setBarTintColor:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)([self->_no ColorToUIColor:((int)0xff910a34)])]]]];
self->_no = [B4INativeObject new];
self->_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)((parent->__navcontrol).object)];
[[self->_no GetField:@"navigationBar"] RunMethod:@"setTintColor:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)([self->_no ColorToUIColor:[[parent->___c Colors] White]])]]]];
[parent->__page Initialize:self.bi :@"Page"];
[parent->__navcontrol ShowPage:(UIViewController*)((parent->__page).object)];
[parent->___c WaitFor:@"page_resize::" :self.bi :self :nil];
self->_state = 1;
return;
case 1:
//C
self->_state = -1;
self->_width = ((NSNumber*) result[0]).intValue;
self->_height = ((NSNumber*) result[1]).intValue;
;
parent->__lblion = [parent _createlabel:@""];
parent->__lblverse = [parent _createlabel:@""];
parent->__lbldsc = [parent _createlabel:@""];

parent->__background2 = (B4IPanelWrapper*) [B4IObjectWrapper createWrapper:[B4IPanelWrapper new] object:(B4IPanelView*)(([parent->__xui CreatePanel:self.bi :@""]).object)];
parent->__mcallback = [parent->__page RootPanel];
[parent->__mcallback LoadLayout:@"Splash" :self.bi];
[parent _xviewes];
[parent _animations];
if (true) break;

            }
        }
    }
@end
@interface ResumableSub_main_ConsultarListado :B4IResumableSub 
- (instancetype) init: (b4i_main*) parent1 :(NSString*) _url1;
@end
@implementation ResumableSub_main_ConsultarListado {
b4i_main* parent;
NSString* _url;
b4i_httpjob* _j;
B4ISQL* _sql1;
B4IJSONParser* _parser;
B4IList* _rootmap;
B4IMap* _colrootmap;
id<B4IIterable> group13;
int index13;
int groupLen13;
}
- (instancetype) init: (b4i_main*) parent1 :(NSString*) _url1 {
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
self->_state = 11;
return;
case 11:
//C
self->_state = 1;
self->_j = ((b4i_httpjob*) result[0]);
;
if (true) break;

case 1:
//if
self->_state = 10;
if (self->_j->__success /*BOOL*/ ) { 
self->_state = 3;
}else {
self->_state = 9;
}if (true) break;

case 3:
//C
self->_state = 4;
self->_sql1 = [B4ISQL new];
[self->_sql1 Initialize:[[parent->___c File] DirDocuments] :@"database.db" :true];
[self->_sql1 ExecNonQuery:@"DROP TABLE IF EXISTS Usuarios"];
[self->_sql1 ExecNonQuery:([@[@"CREATE TABLE IF NOT EXISTS Usuarios (\n",@"                ID INTEGER PRIMARY KEY,\n",@"	            Nombres CHAR(150) NOT NULL,\n",@"		        Telefono CHAR(150) NOT NULL,\n",@"		        ID_User CHAR(150) NOT NULL,\n",@"                Email CHAR(150) NOT NULL)"] componentsJoinedByString:@""])];
self->_parser = [B4IJSONParser new];
[self->_parser Initialize:[self->_j _getstring /*NSString**/ ]];
self->_rootmap = [B4IList new];
self->_rootmap = [self->_parser NextArray];
if (true) break;

case 4:
//for
self->_state = 7;
group13 = self->_rootmap;
index13 = 0;
groupLen13 = group13.Size;
self->_state = 12;
if (true) break;

case 12:
//C
self->_state = 7;
if (index13 < groupLen13) {
self->_state = 6;
self->_colrootmap = (B4IMap*)([group13 Get:index13]);}
if (true) break;

case 13:
//C
self->_state = 12;
index13++;
if (true) break;

case 6:
//C
self->_state = 13;
[parent->___c LogImpl:@"76160403" :[@[@"NombreUser: ",[self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"name")]]] componentsJoinedByString:@""] :0];
[parent->___c LogImpl:@"76160404" :[@[@"Teléfono: ",[self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"phone")]]] componentsJoinedByString:@""] :0];
[parent->___c LogImpl:@"76160405" :[@[@"Email: ",[self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"email")]]] componentsJoinedByString:@""] :0];
[parent->___c LogImpl:@"76160406" :[@[@"Id: ",[self.bi ObjectToString:[self->_colrootmap Get:(NSObject*)(@"id")]]] componentsJoinedByString:@""] :0];
[self->_sql1 ExecNonQuery2:@"INSERT INTO Usuarios VALUES (null, ?, ?, ?, ?)" :[self.bi ArrayToList:[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:[self->_colrootmap Get:(NSObject*)(@"name")]],[B4I nilToNSNull:[self->_colrootmap Get:(NSObject*)(@"phone")]],[B4I nilToNSNull:[self->_colrootmap Get:(NSObject*)(@"id")]],[B4I nilToNSNull:[self->_colrootmap Get:(NSObject*)(@"email")]]]]]];
 if (true) break;
if (true) break;

case 7:
//C
self->_state = 10;
;
[self->_sql1 Close];
 if (true) break;

case 9:
//C
self->_state = 10;
[parent->___c LogImpl:@"76160411" :[@[@"ERROR: ",self->_j->__errormessage /*NSString**/ ] componentsJoinedByString:@""] :0];
 if (true) break;

case 10:
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

@implementation b4i_main 


+ (instancetype)new {
    static b4i_main* shared = nil;
    if (shared == nil) {
        shared = [self alloc];
        shared.bi = [[B4I alloc] init:shared];
        shared.__c = [B4ICommon new];
    }
    return shared;
}

- (void)  _animations{
ResumableSub_main_Animations* rsub = [[ResumableSub_main_Animations alloc] init:self ];
[rsub resume:self.bi :nil];
}
//1171506658
- (void)  _complete:(BOOL) _success{
}
- (void)  _application_start:(B4INavigationControllerWrapper*) _nav{
[self initializeStaticModules];
ResumableSub_main_Application_Start* rsub = [[ResumableSub_main_Application_Start alloc] init:self : _nav];
[rsub resume:self.bi :nil];
}
//-1607458685
- (void)  _page_resize:(int) _width :(int) _height{
}
- (B4IResumableSubWrapper*)  _consultarlistado:(NSString*) _url{
ResumableSub_main_ConsultarListado* rsub = [[ResumableSub_main_ConsultarListado alloc] init:self : _url];
[rsub resume:self.bi :nil];
return (B4IResumableSubWrapper*) [B4IObjectWrapper createWrapper:[B4IResumableSubWrapper new] object:rsub];
}
//547471254
- (void)  _jobdone:(b4i_httpjob*) _j{
}
- (B4ILabelWrapper*)  _createlabel:(NSString*) _eventname{
B4ILabelWrapper* _l = nil;
_l = [B4ILabelWrapper new];
[_l Initialize:self.bi :_eventname];
if (true) return _l;
return nil;
}

- (void)initializeStaticModules {
    [[b4i_main new]initializeModule];
[[b4i_listuserpage new]initializeModule];
[[b4i_postsuserpage new]initializeModule];
[[b4i_httputils2service new]initializeModule];

}
- (NSString*)  _process_globals{
self->__listuserpage=[b4i_listuserpage new];
self->__postsuserpage=[b4i_postsuserpage new];
self->__httputils2service=[b4i_httputils2service new];
self->__app = [B4IApplicationWrapper new];
self->__navcontrol = [B4INavigationControllerWrapper new];
self->__page = [B4IPage new];
self->__xui = [B4IXUI new];
self->__mcallback = [B4IPanelWrapper new];
self->__background = [B4IPanelWrapper new];
self->__img = [B4IImageViewWrapper new];
self->__lbluiionverse = [B4ILabelWrapper new];
self->__lblion = [B4ILabelWrapper new];
self->__lblverse = [B4ILabelWrapper new];
self->__lbldsc = [B4ILabelWrapper new];
self->__background2 = [B4IPanelWrapper new];
self->__valueobject = [NSObject new];
self->__stringposts = @"";
return @"";
}
- (int)  _x:(int) _number{
double _a = 0.0;
int _b = 0;
_a = _number/(double)100;
_b = (int) ([self->__mcallback Width]*_a);
if (true) return _b;
return 0;
}
- (NSString*)  _xviewes{
[self->__background2 setColor:[[self->___c Colors] White]];
[self->__background2 SetBorder:(float) (0) :(int) (0) :(float) (((int) (15)))];
[self->__mcallback AddView:(UIView*)((self->__background2).object) :(float) ([self _x:(int) (25)]) :(float) ([self _y:(int) (42)]) :(float) ([self _x:(int) (50)]) :(float) ([self _x:(int) (50)])];
[self->__background2 setVisible:false];
[self->__lblion setFont:[[self->___c Font] CreateNewBold:(float) (20)]];
[self->__lblion setTextAlignment:[self->__lblion ALIGNMENT_RIGHT]];
[self->__lblion setTextColor:((int)0xff124342)];
[self->__lblion setText:@"Listar"];
[self->__mcallback AddView:(UIView*)((self->__lblion).object) :(float) (((int) (5))) :(float) ([self _y:(int) (55)]) :(float) (([self->__mcallback Width]/(double)2)-((int) (20))) :(float) (((int) (40)))];
[self->__lblion setVisible:false];
[self->__lblverse setFont:[[self->___c Font] CreateNewBold:(float) (20)]];
[self->__lblverse setTextAlignment:[self->__lblverse ALIGNMENT_LEFT]];
[self->__lblverse setText:@"Usuarios"];
[self->__lblverse setTextColor:((int)0xff0bb86d)];
[self->__mcallback AddView:(UIView*)((self->__lblverse).object) :(float) ([self->__lblion Left]+[self->__lblion Width]+((int) (8))) :[self->__lblion Top] :[self->__lblion Width] :[self->__lblion Height]];
[self->__lblverse setVisible:false];
[self->__lbldsc setFont:[[self->___c Font] CreateNewBold:(float) (17)]];
[self->__lbldsc setTextAlignment:[self->__lbldsc ALIGNMENT_CENTER]];
[self->__lbldsc setText:@"Johan Hormaza"];
[self->__lbldsc setTextColor:((int)0xffd5d5d5)];
[self->__mcallback AddView:(UIView*)((self->__lbldsc).object) :(float) (((int) (20))) :(float) ([self->__lblion Top]+[self->__lblion Height]) :(float) ([self->__mcallback Width]-((int) (40))) :(float) (((int) (30)))];
[self->__lbldsc setVisible:false];
return @"";
}
- (int)  _y:(int) _number{
double _a = 0.0;
int _b = 0;
_a = _number/(double)100;
_b = (int) ([self->__mcallback Height]*_a);
if (true) return _b;
return 0;
}
@end
