#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	
	while(1) {
		
		NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
		
		NSLog(@"Let's leak");
		NSMutableArray *leaky = [[NSMutableArray alloc] init];
		
		[leaky addObject:[NSNumber numberWithFloat:12.34]];
		[leaky addObject:[NSNumber numberWithFloat:45.67]];
		[leaky addObject:[NSNumber numberWithFloat:89.98]];
		[leaky addObject:[NSNumber numberWithFloat:76.54]];
		[leaky addObject:[NSNumber numberWithFloat:32.10]];
		[leaky removeAllObjects];
		
//		[leaky release];
		
		[pool drain];
		
		sleep(2);
		
	} // while(1)
	
	
    return 0;
}
