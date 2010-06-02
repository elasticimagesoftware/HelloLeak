#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	
	while(1) {
		
		NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
		
		NSLog(@"Let's leak");
		NSMutableArray *leaky = [[NSMutableArray alloc] init];
		
//		[leaky addObject:[NSNumber numberWithFloat:99.99]];
		
//		[leaky release];
		
		[pool drain];
		
		sleep(2);
		
	} // while(1)
	
	
    return 0;
}
