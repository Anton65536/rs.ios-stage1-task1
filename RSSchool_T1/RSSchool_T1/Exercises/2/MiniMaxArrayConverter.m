#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    int sum = [[array valueForKeyPath:@"@sum.self"] intValue];

    int maxNumber = [[array valueForKeyPath:@"@max.self"] intValue];

    int minNumber = [[array valueForKeyPath:@"@min.self"] intValue];

    int minValueOfArray = sum - maxNumber;

    int maxValueOfArray = sum - minNumber;

    return @[@(minValueOfArray),@(maxValueOfArray)];
}

@end

