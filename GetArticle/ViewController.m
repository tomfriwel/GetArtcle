//
//  ViewController.m
//  GetArticle
//
//  Created by tomfriwel on 07/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSURL *url = [NSURL URLWithString:@"http://u.jue.so/p/folio.php?GAL=a276d98d740a5e11c7cfe5b66e77"];
//    NSString *webData= [NSString stringWithContentsOfURL:url];
//    NSLog(@"%@",webData);
    
    [self loadWeb];
}

-(void)loadWeb{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"PocketContent" ofType:@"html" inDirectory:@"PocketHTML"]];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}

#pragma mark - UIWebViewDelegate

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    
}


@end
