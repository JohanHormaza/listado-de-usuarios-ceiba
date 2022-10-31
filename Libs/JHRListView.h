//Desarrollado por Johan Hormaza 

#import "iCore.h"
#import "iXUI.h"
@class _clvitem;
@interface b4i_jhrlistview : B4IClass
{
@public B4XViewWrapper* __mbase;
@public B4XViewWrapper* __sv;
@public B4IList* __items;
@public float __mdividersize;
@public NSString* __eventname;
@public NSObject* __callback;
@public int __defaulttextcolor;
@public int __defaulttextbackgroundcolor;
@public int __animationduration;
@public long long __lastreachendevent;
@public int __pressedcolor;
@public B4IXUI* __xui;
@public B4ILabelWrapper* __designerlabel;
@public BOOL __horizontal;
@public B4INativeObject* __feedbackgenerator;
@public int __mfirstvisibleindex;
@public int __mlastvisibleindex;
@public BOOL __monitorvisiblerange;
@public BOOL __firescrollchanged;
@public BOOL __scrollbarsvisible;

}- (NSString*)  _add:(B4XViewWrapper*) _pnl :(NSObject*) _value;
- (NSString*)  _addtextitem:(NSObject*) _text :(NSObject*) _value;
- (B4XViewWrapper*)  _asview;
- (NSString*)  _base_resize:(double) _width :(double) _height;
- (NSString*)  _class_globals;
@property (nonatomic)B4XViewWrapper* _mbase;
@property (nonatomic)B4XViewWrapper* _sv;
@property (nonatomic)B4IList* _items;
@property (nonatomic)float _mdividersize;
@property (nonatomic)NSString* _eventname;
@property (nonatomic)NSObject* _callback;
@property (nonatomic)int _defaulttextcolor;
@property (nonatomic)int _defaulttextbackgroundcolor;
@property (nonatomic)int _animationduration;
@property (nonatomic)long long _lastreachendevent;
@property (nonatomic)int _pressedcolor;
@property (nonatomic)B4IXUI* _xui;
@property (nonatomic)B4ILabelWrapper* _designerlabel;
@property (nonatomic)BOOL _horizontal;
@property (nonatomic)B4INativeObject* _feedbackgenerator;
@property (nonatomic)int _mfirstvisibleindex;
@property (nonatomic)int _mlastvisibleindex;
@property (nonatomic)BOOL _monitorvisiblerange;
@property (nonatomic)BOOL _firescrollchanged;
@property (nonatomic)BOOL _scrollbarsvisible;
- (NSString*)  _clear;
- (B4XViewWrapper*)  _createlabel:(NSObject*) _txt;
- (B4XViewWrapper*)  _createpanel:(NSString*) _paneleventname;
- (B4XViewWrapper*)  _createscrollview;
- (NSString*)  _designercreateview:(NSObject*) _base :(B4ILabelWrapper*) _lbl :(B4IMap*) _props;
- (int)  _findindexfromoffset:(int) _offset;
- (int)  _finditemoffset:(int) _index;
- (B4XViewWrapper*)  _getbase;
- (float)  _getdividersize;
- (int)  _getfirstvisibleindex;
- (int)  _getitemfromview:(B4XViewWrapper*) _v;
- (int)  _getlastvisibleindex;
- (float)  _getmaxscrolloffset;
- (B4XViewWrapper*)  _getpanel:(int) _index;
- (_clvitem*)  _getrawlistitem:(int) _index;
- (float)  _getscrollviewcontentsize;
- (float)  _getscrollviewoffset;
- (float)  _getscrollviewvisiblesize;
- (int)  _getsize;
- (NSObject*)  _getvalue:(int) _index;
- (NSString*)  _initialize:(B4I*) _ba :(NSObject*) _vcallback :(NSString*) _veventname;
- (NSString*)  _insertat:(int) _index :(B4XViewWrapper*) _pnl :(NSObject*) _value;
- (NSString*)  _insertatimpl:(int) _index :(B4XViewWrapper*) _pnl :(int) _itemsize :(NSObject*) _value :(int) _initialsize;
- (NSString*)  _insertattextitem:(int) _index :(NSObject*) _text :(NSObject*) _value;
- (NSString*)  _jumptoitem:(int) _index;
- (NSString*)  _panel_click;
- (NSString*)  _panel_longclick;
- (void)  _panelclickhandler:(B4XViewWrapper*) _senderpanel;
- (NSString*)  _panellongclickhandler:(B4XViewWrapper*) _senderpanel;
- (NSString*)  _refresh;
- (NSString*)  _removeat:(int) _index;
- (NSString*)  _replaceat:(int) _index :(B4XViewWrapper*) _pnl :(int) _itemsize :(NSObject*) _value;
- (NSString*)  _resetvisibles;
- (NSString*)  _resizeitem:(int) _index :(int) _itemsize;
- (NSString*)  _scrollhandler;
- (NSString*)  _scrolltoitem:(int) _index;
- (NSString*)  _setitemoffset:(_clvitem*) _item :(float) _offset;
- (NSString*)  _setscrollviewcontentsize:(float) _f;
- (NSString*)  _setscrollviewoffset:(float) _offset;
- (NSString*)  _sv_scrollchanged:(int) _offsetx :(int) _offsety;
- (NSString*)  _updatevisiblerange;
@end
@interface _clvitem:NSObject
{
@public BOOL _IsInitialized;
@public B4XViewWrapper* _Panel;
@public int _Size;
@public NSObject* _Value;
@public int _Color;
@public BOOL _TextItem;
@public int _Offset;

}
@property (nonatomic)BOOL IsInitialized;
@property (nonatomic)B4XViewWrapper* Panel;
@property (nonatomic)int Size;
@property (nonatomic)NSObject* Value;
@property (nonatomic)int Color;
@property (nonatomic)BOOL TextItem;
@property (nonatomic)int Offset;
-(void)Initialize;
@end

