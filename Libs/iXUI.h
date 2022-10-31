
#import <Foundation/Foundation.h>
#import "iCore.h"

@class B4XBitmapWrapper;
@class B4XFont;
@class B4XRect;
@class B4XPath;

@interface B4XViewWrapper : B4IObjectWrapper
@property (nonatomic, readonly) int TOUCH_ACTION_DOWN;
@property (nonatomic, readonly) int TOUCH_ACTION_UP;
@property (nonatomic, readonly) int TOUCH_ACTION_MOVE;
@property (nonatomic, readonly) int TOUCH_ACTION_MOVE_NOTOUCH;

@property (nonatomic) float Left;

@property (nonatomic) float Top;

@property (nonatomic) float Width;

@property (nonatomic) float Height;

@property (nonatomic) BOOL Visible;

@property (nonatomic, readonly) B4XViewWrapper *Parent;

@property (nonatomic) BOOL Enabled;

@property (nonatomic) int Progress;
@property (nonatomic) NSString *EditTextHint;
@property (nonatomic) NSString *Text;

@property (nonatomic) int TextColor;

@property (nonatomic) float TextSize;

@property (nonatomic)B4XFont *Font;

@property (nonatomic) BOOL Checked;

- (void)SetTextSizeAnimated:(int)Duration1 :(float)TextSize;

- (void)SetTextAlignment:(NSString *)Vertical :(NSString *)Horizontal;

- (void)SetLayoutAnimated:(int)Duration :(float)Left :(float)Top :(float)Width :(float)Height;
- (void)RemoveViewFromParent;
- (BOOL)RequestFocus;
- (void)SetVisibleAnimated:(int)Duration :(BOOL)Visible;
- (NSObject <B4IIterable> *)GetAllViewsRecursive;
- (void)LoadLayout:(NSString *)LayoutFile :(B4I *)bi;

- (B4XViewWrapper *)GetView:(int)Index;
@property (nonatomic, readonly)int NumberOfViews;
- (void) AddView :(UIView *)View :(float)Left :(float)Top :(float)Width :(float)Height;
- (void)RemoveAllViews;
- (B4XBitmapWrapper *)Snapshot;
- (void)SetBitmap:(UIImage *)Bitmap;

- (B4XBitmapWrapper *)GetBitmap;

@property (nonatomic) int Color;

- (void)SetColorAnimated:(int)Duration1 :(int)FromColor :(int)ToColor;

- (void)SetColorAndBorder:(int)BackgroundColor :(float)BorderWidth :(int)BorderColor :(float)BorderCornerRadius;
@property (nonatomic) int ScrollViewOffsetY;
@property (nonatomic) int ScrollViewOffsetX;
@property (nonatomic, readonly) B4XViewWrapper* ScrollViewInnerPanel;
@property (nonatomic) int ScrollViewContentHeight;
@property (nonatomic) int ScrollViewContentWidth;
@property (nonatomic) NSObject *Tag;
@property (nonatomic) int SelectionStart;
@property (nonatomic, readonly) int SelectionLength;
- (void)BringToFront;

- (void)SelectAll;

- (void)SetSelection:(int)start :(int)length;

//Sends the view to the back.
- (void)SendToBack;
- (void)SetRotationAnimated:(int)Duration :(float)Degree;
@property (nonatomic)float Rotation;
@end

@interface B4XBitmapWrapper : B4IObjectWrapper
@property (nonatomic, readonly) float Width;
@property (nonatomic, readonly) float Height;
@property (nonatomic, readonly) float Scale;
- (void)WriteToStream:(B4IOutputStream *)OutputStream :(int)Quality :(NSString *)Format;
- (B4XBitmapWrapper *)Resize:(float)Width :(float)Height :(BOOL)KeepAspectRatio;
- (B4XBitmapWrapper *)Rotate:(int)Degrees;
- (B4XBitmapWrapper *)Crop:(float)Left :(float)Top :(float)Width :(float)Height;
@end

@interface B4XFont : B4IObjectWrapper
@property (nonatomic, readonly) float Size;

- (B4IFontWrapper *)ToNativeFont;
@end

@interface B4IXUI : NSObject
@property(nonatomic, readonly) int Color_Black;
@property(nonatomic, readonly) int Color_DarkGray;
@property(nonatomic, readonly) int Color_Gray;
@property(nonatomic, readonly) int Color_LightGray;
@property(nonatomic, readonly) int Color_White;
@property(nonatomic, readonly) int Color_Red;
@property(nonatomic, readonly) int Color_Green;
@property(nonatomic, readonly) int Color_Blue;
@property(nonatomic, readonly) int Color_Yellow;
@property(nonatomic, readonly) int Color_Cyan;
@property(nonatomic, readonly) int Color_Magenta;
@property(nonatomic, readonly) int Color_Transparent;
- (B4XBitmapWrapper *)LoadBitmap:(NSString *)Dir :(NSString *)FileName;
- (B4XBitmapWrapper *)LoadBitmapResize:(NSString *)Dir :(NSString *)FileName :(float)Width :(float)Height :(BOOL)KeepAspectRatio;
@property (nonatomic, readonly)NSString *DefaultFolder;
- (void)SetDataFolder:(NSString *)AppName;
- (int)PaintOrColorToColor:(NSObject *)Color;
- (BOOL)SubExists:(NSObject *)Component :(NSString *)Sub :(int)NumberOfArguments;
- (B4XFont *)CreateFont:(UIFont *)Font :(float)Size1;
- (B4XFont *)CreateFont2:(B4XFont *)B4XFont :(float)Size1;
- (B4XFont *)CreateDefaultFont:(float)Size;
- (B4XFont *)CreateDefaultBoldFont:(float)Size;

- (B4XFont *)CreateFontAwesome:(float)Size1;

- (B4XFont *)CreateMaterialIcons:(float)Size1;

- (B4XViewWrapper *)CreatePanel:(B4I *)bi :(NSString *)EventName;

- (int)Color_RGB:(int)R :(int)G :(int)B;

- (int)Color_ARGB:(int)Alpha :(int)R :(int)G :(int)B;

- (NSObject *)MsgboxAsync:(B4I *)bi :(NSString *)Message :(NSString *)Title;

- (NSObject *)Msgbox2Async:(B4I *)bi :(NSString *)Message :(NSString *)Title :(NSString *)Positive :(NSString *)Cancel :(NSString *)Negative :(UIImage *)Icon;

- (NSString *)FileUri:(NSString *)Dir :(NSString *)FileName;

@property (nonatomic, readonly) int DialogResponse_Positive;
@property (nonatomic, readonly) int DialogResponse_Cancel;
@property (nonatomic, readonly) int DialogResponse_Negative;
@property (nonatomic, readonly) BOOL IsB4A;
@property (nonatomic, readonly) BOOL IsB4i;
@property (nonatomic, readonly) BOOL IsB4J;
@property (nonatomic, readonly) float Scale;
@end
@interface B4XCanvas : NSObject
@property (nonatomic, readonly)B4XRect *TargetRect;
@property (nonatomic, readonly)B4XViewWrapper *TargetView;
- (void)Initialize:(UIView *)View;

- (void)Resize:(float)Width :(float)Height;

- (void)Invalidate;

- (B4XBitmapWrapper *)CreateBitmap;

- (void)DrawRect:(B4XRect *)Rect1 :(int)Color :(BOOL)Filled :(float)StrokeWidth;

- (void)DrawLine:(float)x1 :(float)y1 :(float)x2 :(float)y2 :(int)Color :(float)StrokeWidth;

- (void)DrawCircle:(float)x :(float)y :(float)Radius :(int)Color :(BOOL)Filled :(float)StrokeWidth;

- (void)DrawBitmap:(UIImage *)Bitmap :(B4XRect *)Destination;

- (void)DrawBitmapRotated:(UIImage *)Bitmap :(B4XRect *)Destination :(float)Degrees;

- (void)ClipPath:(B4XPath *)Path;

- (void)RemoveClip;

- (void)DrawPath:(B4XPath *)Path :(int)Color :(BOOL)Filled :(float)StrokeWidth;

- (void)DrawPathRotated:(B4XPath *)Path :(int)Color :(BOOL)Filled :(float)StrokeWidth :(float)Degrees :(float)CenterX :(float)CenterY;

- (void)ClearRect:(B4XRect *)Rect1;

- (void)DrawTextRotated:(NSString *)Text :(float)x :(float)y :(B4XFont *)Font :(int)Color :(NSString *)Align :(float)Degrees;

- (void)DrawText:(NSString *)Text :(float)x :(float)y :(B4XFont *)Font :(int)Color :(NSString *)Align;

- (void)Release;

- (B4XRect *)MeasureText:(NSString *)Text :(B4XFont *)Font;
@end
@interface B4XRect : B4IObjectWrapper
@property (nonatomic) float Left;
@property (nonatomic) float Top;
@property (nonatomic) float Right;
@property (nonatomic) float Bottom;
@property (nonatomic)float Width;
@property (nonatomic)float Height;

@property (nonatomic, readonly) float CenterX;
@property (nonatomic, readonly) float CenterY;
- (void)Initialize:(float)Left :(float)Top :(float)Right :(float)Bottom;

@end
@interface B4XPath : B4IObjectWrapper

- (B4XPath *)Initialize:(float)x :(float)y;

- (B4XPath *)InitializeOval:(B4XRect *)Rect1;

- (B4XPath *)InitializeArc:(float)x :(float)y :(float)Radius :(float)StartingAngle :(float)SweepAngle;

- (B4XPath *)InitializeRoundedRect:(B4XRect *)Rect1 :(float)CornersRadius;

- (B4XPath *)LineTo:(float)x :(float)y;
@end
