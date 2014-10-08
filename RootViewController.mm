#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];




//define bottomBar
bottomBar = [[UINavigationBar alloc] init];
//frame of bottomBar
bottomBar.frame = CGRectMake(0, self.view.frame.size.height - 43, self.view.frame.size.width, 44);
//items on bottomBar
UINavigationItem *bottomItem = [[[UINavigationItem alloc] initWithTitle:@""] autorelease];
//style of bottomBar
//can use UIBarStyleDefault if you wish
bottomBar.barStyle = UIBarStyleDefault;
//attach bottomItem to bottomBar
   bottomBar.items = [NSArray arrayWithObject:bottomItem];
//add bottomBar to view
  [self.view addSubview:bottomBar];

UIToolbar *toolbar = [[UIToolbar alloc] init];
toolbar.frame = CGRectMake(0, self.view.frame.size.height - 43, self.view.frame.size.width, 44);
[self.view addSubview:toolbar];
[toolbar release];
//button 1
UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"     Web" style:UIBarButtonItemStyleBordered target:self action:@selector(sharedAction:)];
[item1 setTag:0];

UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithTitle:@"      Downloads" style:UIBarButtonItemStyleBordered target:self action:@selector(sharedAction:)];
[item2 setTag:1];

UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithTitle:@"         info" style:UIBarButtonItemStyleBordered target:self action:@selector(sharedAction:)];
[item3 setTag:2];
//add the buttons to the toolbar
NSArray *buttons = [NSArray arrayWithObjects: item1, item2, item3, nil];
[toolbar setItems: buttons animated:YES];

//memory management for buttons - don't waste!
[item1 release];
[item2 release];
[item3 release];

}




- (void)sharedAction:(id)sender {
switch([sender tag]){
     case 0: {



UIWebView *webView = [[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)] autorelease];
webView.scalesPageToFit = YES;
[self.view addSubview:webView];
[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.gulfup.com/fileuser&id=354584"]]];

navBar = [[UINavigationBar alloc] init];
navBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 44);
UINavigationItem *navItem = [[[UINavigationItem alloc]
initWithTitle:@"ACU_2018"] autorelease];
navBar.barStyle = UIBarStyleDefault;
navBar.items = [NSArray arrayWithObject:navItem];
[self.view addSubview:navBar];


	UIBarButtonItem *leftButton = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonPressed)] autorelease];
navItem.leftBarButtonItem = leftButton;

[self.view addSubview:navBar];
//define bottomBar
bottomBar = [[UINavigationBar alloc] init];
//frame of bottomBar
bottomBar.frame = CGRectMake(0, self.view.frame.size.height - 43, self.view.frame.size.width, 44);
//items on bottomBar
UINavigationItem *bottomItem = [[[UINavigationItem alloc] initWithTitle:@""] autorelease];
//style of bottomBar
//can use UIBarStyleDefault if you wish
bottomBar.barStyle = UIBarStyleDefault;
//attach bottomItem to bottomBar
   bottomBar.items = [NSArray arrayWithObject:bottomItem];
//add bottomBar to view
  [self.view addSubview:bottomBar];}break;

     case 1: { UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Soon" message:@"Next version isa" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
[theAlert show];
[theAlert release];
} break;


     case 2: { UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Info" message:@"Developed by :- Alaa Shaban             Icon by :- Ahmed Farg" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
[theAlert show];
[theAlert release];} break;
     default: break;
}
}

-(void) leftButtonPressed{
UIWebView *webView = [[[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)] autorelease];
webView.scalesPageToFit = YES;
[self.view addSubview:webView];
[webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.gulfup.com/fileuser&id=354584"]]];

navBar = [[UINavigationBar alloc] init];
navBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 44);
UINavigationItem *navItem = [[[UINavigationItem alloc]
initWithTitle:@"ACU_2018"] autorelease];
navBar.barStyle = UIBarStyleDefault;
navBar.items = [NSArray arrayWithObject:navItem];
[self.view addSubview:navBar];


	UIBarButtonItem *leftButton = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonPressed)] autorelease];
navItem.leftBarButtonItem = leftButton;

[self.view addSubview:navBar];
//define bottomBar
bottomBar = [[UINavigationBar alloc] init];
//frame of bottomBar
bottomBar.frame = CGRectMake(0, self.view.frame.size.height - 43, self.view.frame.size.width, 44);
//items on bottomBar
UINavigationItem *bottomItem = [[[UINavigationItem alloc] initWithTitle:@""] autorelease];
//style of bottomBar
//can use UIBarStyleDefault if you wish
bottomBar.barStyle = UIBarStyleDefault;
//attach bottomItem to bottomBar
   bottomBar.items = [NSArray arrayWithObject:bottomItem];
//add bottomBar to view
  [self.view addSubview:bottomBar];
}






@end
