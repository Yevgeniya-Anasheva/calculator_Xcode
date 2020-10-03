//
//  Calculator_Brain.m
//  Calculator
//
//  Created by Yevgeniya on 9/29/20.
//

#import "Calculator_Brain.h"

@interface Calculator_Brain()
    @property (nonatomic,strong)NSMutableArray *items;  //private property items
@end

@implementation Calculator_Brain

-(NSMutableArray*)items{
    if(_items == nil){
        _items = [[NSMutableArray alloc]init]; // new
    }
    return _items;
}

-(void)pushItem: (double) number{
    [self.items addObject:[NSNumber numberWithDouble:number]];
    NSLog(@"Pushed: %f", number);
}

-(double) calculate: (NSString *) operation{
    double result = 0;
    if([operation isEqualToString:@"+"]){
        result = [self popItem] + [self popItem];
    }
    else if ([operation isEqualToString:@"-"]){
        result = [self popItem] - [self popItem];
    }
    else if ([operation isEqualToString:@"/"]){
        result = [self popItem] / [self popItem];
    }
    else if ([operation isEqualToString:@"*"]){
        result = [self popItem] * [self popItem];
    }
    return result;
}

-(double)popItem{
    double last = [[self.items lastObject]doubleValue];
    //if the array is not empty, remove the last object
    if([self.items count] != 0) {
        [self.items removeLastObject];
    }
    NSLog(@"Last object was: %f", last);
    return last;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
