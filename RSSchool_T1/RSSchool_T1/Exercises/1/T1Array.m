#import "T1Array.h"

@implementation T1Array
- (BOOL)isHappy:(NSArray *)array {
    for (int i = 1; i < [array count] - 2; i++) {
         if ([array[i] intValue] > [array[i-1] intValue] + [array[i+1] intValue]) {
           return NO;
           }
    }
    return YES;
}
// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *mutableSadArray = [NSMutableArray arrayWithArray:sadArray];
    if([sadArray count] > 0){
    BOOL happy = NO;
    while (happy == NO){
        for (int i = 1; i <= [mutableSadArray count] - 2; i++){
            if ([mutableSadArray[i] intValue] > [mutableSadArray[i-1] intValue] + [mutableSadArray[i+1] intValue]) {
                [mutableSadArray  removeObjectAtIndex:i];
            }
        happy = [self isHappy:mutableSadArray];
        }
      }
    }
        NSArray *array = [NSArray arrayWithArray:mutableSadArray];
        return array;
}
@end
