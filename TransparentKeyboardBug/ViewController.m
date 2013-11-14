#import "ViewController.h"
#import "SDScreenshotCapture.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
  cell.backgroundColor = [UIColor colorWithRed:(CGFloat)arc4random_uniform(10)/10 green:(CGFloat)arc4random_uniform(10)/10 blue:(CGFloat)arc4random_uniform(10)/10 alpha:1];
  return cell;
}

- (IBAction)screenshotButtonTapped
{
  [SDScreenshotCapture takeScreenshotToCameraRoll];
}

@end
