#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    int res = 0;
    
        for(int i = 0; i < array.count; i++)
        {
            NSNumber *value = array[i];
    
            if (value)
            {
                res += [value integerValue];
            }
        }
    NSNumber *resNumber =[NSNumber numberWithInt: res];
    NSNumber *maxNumber = [array valueForKeyPath:@"@max.self"];
    NSNumber *minNumber = [array valueForKeyPath:@"@min.self"];
    int maxNumberIntValue = [maxNumber intValue];
    int minNumberIntValue = [minNumber intValue];
    int minValueOfArray = res - maxNumberIntValue;
    int maxValueOfArray = res - minNumberIntValue;
    return @[@(minValueOfArray),@(maxValueOfArray)];
}

@end
//- (NSNumber *)summArray:(NSArray *)array {
//
//    [array retain];
//
//    int res = 0;
//
//    for(int i = 0; i < array.count; i++)
//    {
//        NSNumber *value = array[i];
//
//        if (value)
//        {
//            res += [value integerValue];
//        }
//    }
//
//    [array release];
//    return @(res);
//}
