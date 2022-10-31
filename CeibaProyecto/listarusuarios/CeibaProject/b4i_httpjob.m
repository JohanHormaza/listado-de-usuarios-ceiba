
#import "b4i_httpjob.h"
#import "b4i_main.h"
#import "b4i_listuserpage.h"
#import "b4i_postsuserpage.h"
#import "b4i_httputils2service.h"

@implementation _multipartfiledata
-(void)Initialize{
self.IsInitialized = true;
self->_Dir = @"";
self->_FileName = @"";
self->_KeyName = @"";
self->_ContentType = @"";
}
- (NSString*)description {
return [B4I TypeToString:self :false];}
@end

@implementation b4i_httpjob 


+ (B4I*)createBI {
    return [B4I alloc];
}

- (void)dealloc {
    if (self.bi != nil)
        NSLog(@"Class (httpjob) instancia liberada.");
}
- (NSString*)  _addscheme:(NSString*) _link{

if ([self->__defaultscheme isEqual:@""] || [_link Contains:@":"]) { 
if (true) return _link;};
if (true) return [@[self->__defaultscheme,@"://",_link] componentsJoinedByString:@""];
return @"";
}
- (NSString*)  _class_globals{
self->__main=[b4i_main new];
self->__listuserpage=[b4i_listuserpage new];
self->__postsuserpage=[b4i_postsuserpage new];
self->__httputils2service=[b4i_httputils2service new];
self->__jobname = @"";
self->__success = false;
self->__username = @"";
self->__password = @"";
self->__errormessage = @"";
self->__target = [NSObject new];
self->__req = [B4IHttpRequest new];
self->__response = [B4IHttpResponse new];

self->__tag = [NSObject new];
;
self->__invalidurl = @"https://invalid-url/";
self->__defaultscheme = @"https";
return @"";
}
- (NSString*)  _complete:(B4IHttpResponse*) _res1{
self->__response = _res1;
[self->___c CallSub2:self.bi :self->__target :[@[@"Job",@"Done"] componentsJoinedByString:@""] :self];
return @"";
}
- (NSString*)  _delete:(NSString*) _link{
@try {
_link = [self _addscheme:_link];
[self->__req InitializeDelete:_link];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"94456453" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
[self->__req InitializeDelete:self->__invalidurl];
 };
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _delete2:(NSString*) _link :(B4IArray*) _parameters{
@try {
_link = [self _addscheme:_link];
[self->__req InitializeDelete:[self _escapelink:_link :_parameters]];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"94521989" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
[self->__req InitializeDelete:[self _escapelink:self->__invalidurl :_parameters]];
 };
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _download:(NSString*) _link{
@try {
_link = [self _addscheme:_link];
[self->__req InitializeGet:_link];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"94259845" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
[self->__req InitializeGet:self->__invalidurl];
 };
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _download2:(NSString*) _link :(B4IArray*) _parameters{
@try {
_link = [self _addscheme:_link];
[self->__req InitializeGet:[self _escapelink:_link :_parameters]];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"94325381" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];

[self->__req InitializeGet:[self _escapelink:self->__invalidurl :_parameters]];
 };
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _escapelink:(NSString*) _link :(B4IArray*) _parameters{
B4IStringBuilder* _sb = nil;
iStringUtils* _su = nil;
int _i = 0;
_sb = [B4IStringBuilder new];
[_sb Initialize];
[_sb Append:_link];
if (_parameters.Length>0) { 
[_sb Append:@"?"];};
_su = [iStringUtils new];
{
const int step6 = 2;
const int limit6 = (int) (_parameters.Length-1);
_i = (int) (0) ;
for (;_i <= limit6 ;_i = _i + step6 ) {
if (_i>0) { 
[_sb Append:@"&"];};
[[_sb Append:[_su EncodeUrl:((NSString*)[_parameters getObjectFast:_i]) :@"UTF8"]] Append:@"="];
[_sb Append:[_su EncodeUrl:((NSString*)[_parameters getObjectFast:(int) (_i+1)]) :@"UTF8"]];
 }
};
if (true) return [_sb ToString];
return @"";
}
- (B4IBitmap*)  _getbitmap{
B4IBitmap* _b = nil;
_b = [B4IBitmap new];
[_b Initialize2:[self->__response GetInputStream]];
if (true) return _b;
return nil;
}
- (B4IBitmap*)  _getbitmapresize:(int) _width :(int) _height :(BOOL) _keepaspectratio{
if (true) return [[self _getbitmap] Resize:(float) (_width) :(float) (_height) :_keepaspectratio];
return nil;
}
- (B4IInputStream*)  _getinputstream{
if (true) return [self->__response GetInputStream];
return nil;
}
- (B4IHttpRequest*)  _getrequest{
if (true) return self->__req;
return nil;
}
- (NSString*)  _getstring{
if (true) return [self _getstring2:@"UTF8"];
return @"";
}
- (NSString*)  _getstring2:(NSString*) _encoding{
if (true) return [self->__response GetString2:_encoding];
return @"";
}
- (NSString*)  _head:(NSString*) _link{

@try {
_link = [self _addscheme:_link];
[self->__req InitializeHead:_link];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"93997701" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
[self->__req InitializeHead:self->__invalidurl];
 };
 
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _initialize:(B4I*) _ba :(NSString*) _name :(NSObject*) _targetmodule{
[self initializeClassModule];

self->__jobname = _name;
self->__target = _targetmodule;
return @"";
}
- (BOOL)  _multipartstartsection:(B4IOutputStream*) _stream :(BOOL) _empty{
if (_empty==false) {
[_stream WriteBytes:[[B4IArray alloc]initBytesWithData:@[@((unsigned char) (13)),@((unsigned char) (10))]] :(int) (0) :(int) (2)];
 }else {

_empty = false;
 };
if (true) return _empty;
return false;
}
- (NSString*)  _patchbytes:(NSString*) _link :(B4IArray*) _data{
B4INativeObject* _no = nil;
_link = [self _addscheme:_link];
[self->__req InitializeGet:_link];
_no = [B4INativeObject new];
_no = (B4INativeObject*) [B4IObjectWrapper createWrapper:[B4INativeObject new] object:(NSObject*)(self->__req)];
_no = [_no GetField:@"object"];
[_no RunMethod:@"setHTTPMethod:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:(NSObject*)(@"PATCH")]]]];
[_no RunMethod:@"setHTTPBody:" :[[B4IArray alloc]initObjectsWithData:@[[B4I nilToNSNull:[_no ArrayToNSData:_data]]]]];
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _patchstring:(NSString*) _link :(NSString*) _text{
[self _patchbytes:_link :[_text GetBytes:@"UTF8"]];
return @"";
}
- (NSString*)  _postbytes:(NSString*) _link :(B4IArray*) _data{
@try {
_link = [self _addscheme:_link];
[self->__req InitializePost2:_link :_data];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"93670021" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
[self->__req InitializePost2:self->__invalidurl :_data];
 };
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];

return @"";
}
- (NSString*)  _postfile:(NSString*) _link :(NSString*) _dir :(NSString*) _filename{
_link = [self _addscheme:_link];
[self->__req InitializePost:_link :_dir :_filename];
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _postmultipart:(NSString*) _link :(B4IMap*) _namevalues :(B4IList*) _files{
NSString* _boundary = @"";
B4IOutputStream* _stream = nil;
B4IArray* _b = nil;
NSString* _eol = @"";
BOOL _empty = false;
NSString* _key = @"";
NSString* _value = @"";
NSString* _s = @"";
_multipartfiledata* _fd = nil;
B4IInputStream* _in = nil;
_boundary = @"---------------------------1461124740692";
_stream = [B4IOutputStream new];
[_stream InitializeToBytesArray:(int) (0)];
_b = [[B4IArray alloc]initBytes:@[@((int) (0))]];
_eol = [@[[self.bi CharToString:((unichar)((int) (13)))],[self.bi CharToString:((unichar)((int) (10)))]] componentsJoinedByString:@""];
_empty = true;
if (_namevalues!= nil && [_namevalues IsInitialized]) {
{
const id<B4IIterable> group8 = [_namevalues Keys];
const int groupLen8 = group8.Size
;int index8 = 0;
;
for (; index8 < groupLen8;index8++){
_key = [self.bi ObjectToString:[group8 Get:index8]];
_value = [self.bi ObjectToString:[_namevalues Get:(NSObject*)(_key)]];
_empty = [self _multipartstartsection:_stream :_empty];
_s = ([@[@"--",[self->___c SmartStringFormatter:@"" :(NSObject*)(_boundary)],@"\n",@"Content-Disposition: form-data; name=\"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_key)],@"\"\n",@"\n",@"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_value)],@""] componentsJoinedByString:@""]);
_b = [[_s Replace:@"\n" :_eol] GetBytes:@"UTF8"];
[_stream WriteBytes:_b :(int) (0) :_b.Length];
 }
};
 };
if (_files!= nil && [_files IsInitialized]) {
{
const id<B4IIterable> group17 = _files;
const int groupLen17 = group17.Size
;int index17 = 0;
;
for (; index17 < groupLen17;index17++){
_fd = (_multipartfiledata*)([group17 Get:index17]);
_empty = [self _multipartstartsection:_stream :_empty];

_s = ([@[@"--",[self->___c SmartStringFormatter:@"" :(NSObject*)(_boundary)],@"\n",@"Content-Disposition: form-data; name=\"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_fd->_KeyName /*NSString**/ )],@"\"; filename=\"",[self->___c SmartStringFormatter:@"" :(NSObject*)(_fd->_FileName /*NSString**/ )],@"\"\n",@"Content-Type: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_fd->_ContentType /*NSString**/ )],@"\n",@"\n",@""] componentsJoinedByString:@""]);
_b = [[_s Replace:@"\n" :_eol] GetBytes:@"UTF8"];
[_stream WriteBytes:_b :(int) (0) :_b.Length];
_in = [B4IInputStream new];
_in = [[self->___c File] OpenInput:_fd->_Dir /*NSString**/  :_fd->_FileName /*NSString**/ ];
[[self->___c File] Copy2:_in :_stream];
 }
};
 };
_empty = [self _multipartstartsection:_stream :_empty];
_s = ([@[@"--",[self->___c SmartStringFormatter:@"" :(NSObject*)(_boundary)],@"--\n",@""] componentsJoinedByString:@""]);
_b = [[_s Replace:@"\n" :_eol] GetBytes:@"UTF8"];
[_stream WriteBytes:_b :(int) (0) :_b.Length];
[self _postbytes:_link :[_stream ToBytesArray]];
[self->__req SetContentType:[@[@"multipart/form-data; boundary=",_boundary] componentsJoinedByString:@""]];
[self->__req SetContentEncoding:@"UTF8"];
return @"";
}
- (NSString*)  _poststring:(NSString*) _link :(NSString*) _text{
[self _postbytes:_link :[_text GetBytes:@"UTF8"]];
return @"";
}
- (NSString*)  _putbytes:(NSString*) _link :(B4IArray*) _data{
@try {
_link = [self _addscheme:_link];
[self->__req InitializePut2:_link :_data];
 } 
       @catch (NSException* e5) {
			[B4I SetException:e5];
[self->___c LogImpl:@"93801093" :([@[@"Invalid link: ",[self->___c SmartStringFormatter:@"" :(NSObject*)(_link)],@""] componentsJoinedByString:@""]) :0];
[self->__req InitializePut2:self->__invalidurl :_data];
 };
[self->___c CallSubDelayed2:self.bi :(NSObject*)((self->__httputils2service).object) :@"SubmitJob" :self];
return @"";
}
- (NSString*)  _putstring:(NSString*) _link :(NSString*) _text{
[self _putbytes:_link :[_text GetBytes:@"UTF8"]];
return @"";
}
- (NSString*)  _release{
return @"";
}
@end
