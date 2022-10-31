
#import <Foundation/Foundation.h>
#import "iCore.h"

@class B4IResultSet;

@interface B4ISQL : NSObject

- (void)Initialize:(NSString *)Dir :(NSString *)FileName :(BOOL)CreateIfNecessary;

- (BOOL)IsInitialized;

- (void)AddNonQueryToBatch:(NSString *)Statement :(B4IList *)Args;

- (NSObject *)ExecNonQueryBatch:(B4I *)bi :(NSString *)EventName;

- (NSObject *)ExecQueryAsync:(B4I *)bi :(NSString *)EventName :(NSString *)Query :(B4IList *)Args;

- (void)ExecNonQuery:(NSString *)Statement;

- (void)ExecNonQuery2:(NSString *)Statement :(B4IList *)Args;

- (B4IResultSet *)ExecQuery:(NSString *)Query;

- (B4IResultSet *)ExecQuery2:(NSString *)Query :(B4IList *)Args;

- (NSString *)ExecQuerySingleResult:(NSString *)Query;

- (NSString *)ExecQuerySingleResult2:(NSString *)Query :(B4IList *)Args;

- (void)BeginTransaction;

- (void)TransactionSuccessful;

- (void)Rollback;

- (void)Close;
@end

@interface B4IResultSet : B4IObjectWrapper

@property (nonatomic, readonly)int ColumnCount;

- (BOOL)NextRow;

- (NSString *)GetColumnName:(int)Index;

- (int)GetInt2:(int)Index;

- (int)GetInt:(NSString *)ColumnName;

- (NSString *)GetString2:(int)Index;

- (NSString *)GetString:(NSString *)ColumnName;

- (long long)GetLong2:(int)Index;

- (long long)GetLong:(NSString *)ColumnName;

- (double)GetDouble2:(int)Index;

- (double)GetDouble:(NSString *)ColumnName;

- (B4IArray */*byte,1*/)GetBlob2:(int)Index;

- (B4IArray */*byte,1*/)GetBlob:(NSString *)ColumnName;

- (void)Close;
@end
