Que1 Answer:
    g) Count of repeating characters:
        #import <Foundation/Foundation.h>

        @interface SampleClass: NSObject
        -(NSDictionary<NSString *, NSNumber *> *) characterCount: (NSString *) givenInput;
        @end

        @implementation SampleClass
        -(NSDictionary<NSString * , NSNumber *> *) characterCount: (NSString *) givenInput {
            NSMutableDictionary<NSString *, NSNumber *> *countRepeatingChars = [NSMutableDictionary dictionary];

            for(NSUInteger i=0; i<[givenInput length]; i++){
                NSString *character = [givenInput substringWithRange: NSMakeRange(i,1)];
                NSNumber *countOfChar = [countRepeatingChars objectForKey:character];
                if(countOfChar){
                    [countRepeatingChars setObject:@([countOfChar integerValue] + 1) forKey:character];
                } else {
                    [countRepeatingChars setObject:@1 forKey:character];
                }
            }
            return [countRepeatingChars copy];
        }

        @end

        int main(void){
            NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
            // Your code here!


            SampleClass *obj = [[SampleClass alloc] init];
            NSString *input = @"abbcccdddd";

            NSDictionary<NSString *, NSNumber *> *answer = [obj characterCount:input];
            NSLog(@"%@", answer);


            [pool release];
            return 0;
        }


    h) Merge two dictionary:
        #import <Foundation/Foundation.h>

        @interface SampleClass: NSObject
        -(NSDictionary<NSString *, NSNumber *> *) mergeDictionary: (NSDictionary<NSString *, NSNumber *> *) dictionary1 with: (NSDictionary<NSString *, NSNumber *> *) dictionary2;
        @end

        @implementation SampleClass
        -(NSDictionary<NSString *, NSNumber *> *) mergeDictionary: (NSDictionary<NSString *, NSNumber *> *) dictionary1 with: (NSDictionary<NSString *, NSNumber *> *) dictionary2 {
            NSMutableDictionary<NSString *, NSNumber *> *mergedDict = [NSMutableDictionary dictionaryWithDictionary: dictionary1];

            for (NSString *key in dictionary2){
                if(![mergedDict objectForKey: key]){
                    [mergedDict setObject: [dictionary2 objectForKey: key] forKey: key];
                }
            }

            return [mergedDict copy];
        }

        @end

        int main(void){
            NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
            // Your code here!


            SampleClass *obj = [[SampleClass alloc] init];
            NSDictionary<NSString *, NSNumber *> *dict1 = @{@"a": @1, @"b": @2, @"c": @3};
            NSDictionary<NSString *, NSNumber *> *dict2 = @{@"d": @4, @"e": @5, @"b": @88};

            NSDictionary<NSString *, NSNumber *> *answer = [obj mergeDictionary:dict1 with: dict2];
            NSLog(@"%@", answer);


            [pool release];
            return 0;
        }



Que2 Answer:
    The main difference between NSArray and NSSet is NSArray is ordered collection and NSSet is unordered collection.
    An array lets us to get items by their position. We can put the same item into an array more than once ie we can add duplicates. Arrays keep the order of their items. But in case of Sets, A set is mainly used to see if an item is in the collection or not. The items in a set don't have any order or position. We can't have the same item in a set more than once.
    If an array wants to check if it contains an element, it has to look through all its items ie we have to traverse through entire array. Sets use faster algorithms for this purpose.
    We can say set is like dictionary with without values.
    And we should use Sets when ordering doesnt matter and we want performance.

    Demonstrations for Set:
        // Creating empty sets:
        NSSet *emptySet = [NSSet set]

        // Creaing mutable empty set:
        NSMutableSet *emptyMutableSet = [NSMutableSet set];

        // Creating an NSSet with some elements
        NSSet *set = [NSSet setWithObjects:@"Apple", @"Banana", @"Cherry", nil];

        // Checking if an element exists in the set
        if ([set containsObject:@"Banana"]) {
            NSLog(@"Banana is in the set.");
        } else {
            NSLog(@"Banana is not in the set.");
        }

        // Adding elements to an NSMutableSet
        NSMutableSet *mutableSet = [NSMutableSet setWithSet:set];
        [mutableSet addObject:@"Date"];
        [mutableSet addObject:@"Apple"]; // This won't add a duplicate "Apple"

        // Printing all elements in the mutable set
        NSLog(@"Mutable Set contains: %@", mutableSet);



Que3 Answer:
    To compare objects we use "==" and "isEqual", but their purposes are different.

    "==" compares pointers or memory addresses of the object. This is used to check if the two objects are pointing to same memory location.

    Eg.
        NSString *str1 = @"Hello";
        NSString *str2 = str1;
        if (str1 == str2) {
            NSLog(@"str1 and str2 are the same object (same memory address).");
        }
        // it will execute the if statement.

    "isEqual" comapres the values of the objects. This is used to check if two objects are same in terms of their values, doesnt matter if they are of same instance.

    Eg.
        NSString *str1 = @"Hello";
        NSString *str2 = [NSString stringWithFormat:@"Hello"];
        if ([str1 isEqual:str2]) {
            NSLog(@"str1 and str2 have the same value.");
        }
        // It will execute the if statement.

    Demostration:
        // Creating to NSString with same initial values:
        NSString *str1  = [[NSString alloc] initWithString:@"hello"];
        NSString *str2  = [[NSString alloc] initWithString:@"hello"];

        // Comparing these two strings with "=="
        if(str1 == str2){
            NSLog(@"str1 == str2");
        }

        The above if condition will not executed

        // Comparing two strings with "isEqual"
        if([str1 isEqual:str2]){
            NSLog(@"str1 isEqual str2");
        }




Que4 Answer:
    Dynamic runtime typing in Objective-C allows objects to know their class and perform actions based on it during program execution i.e. during runtime. A type of object or variable is checked at runtime that is dyanamic typing.

    We use "id" data type in objective-c to initialize variable or object without specifying what sort of object it is or what is its class. It is used to declare variables or method parameters whose types are not known at compile time. With "id" keyword we can hold refernces to any object regradless of its class.

    This flexibility is important for dynamic runtime typing because it lets us handle all objects in the same way and allows different types of objects to respond differently to the same command ie it allows polymorphic behavior.



Que5 Answer:
    "NSObject" is the base class for most objects in Objective-C. It provides basic features like memory management, object comparison, and introspection, which are inherited by other classes. This means all objects that inherit from `NSObject` can automatically use these basic features.
    All the data classes such as NSString, NSArray, NSDictionary, etc are subclasses of it. It is at the top of the hierarchy. It is one class that has no superclass.

