#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    NSMutableArray *mutBill = [bill mutableCopy];
    [mutBill removeObjectAtIndex:index];
    int annaShouldPay = ([[mutBill valueForKeyPath:@"@sum.self"] intValue]) / 2;
    int annaGave = [sum intValue];
    int refund = annaGave - annaShouldPay;
    return annaGave == annaShouldPay ?  @"Bon Appetit" : [NSString stringWithFormat:@"%d", refund];
}
@end
