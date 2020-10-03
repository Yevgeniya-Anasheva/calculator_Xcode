//
//  Calculator_Brain.h
//  Calculator
//
//  Created by Yevgeniya on 9/29/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator_Brain : NSObject
    //public methods
    -(void) pushItem: (double) number;
    -(double) calculate : (NSString *) operation;
@end

NS_ASSUME_NONNULL_END
