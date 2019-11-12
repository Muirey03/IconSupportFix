#include <substrate.h>

@interface SBDefaultIconModelStore : NSObject
@end

%hook SBDefaultIconModelStore
%new
-(void)setCurrentIconStateURL:(NSURL*)url
{
	[self setValue:url forKey:@"_currentIconStateURL"];
}

%new
-(void)setDesiredIconStateURL:(NSURL*)url
{
	[self setValue:url forKey:@"_desiredIconStateURL"];
}
%end