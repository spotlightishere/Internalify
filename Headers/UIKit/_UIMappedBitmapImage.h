#import <UIKit/UIImage.h>

@class NSData;

@interface _UIMappedBitmapImage : UIImage {

	NSData* _data;

}

@property (nonatomic,retain) NSData * data;              //@synthesize data=_data - In the implementation block
+(void)initialize;
-(id)_initWithOtherImage:(id)arg1 ;
-(void)_preheatBitmapData;
-(void)setData:(NSData *)arg1 ;
-(void)dealloc;
-(NSData *)data;
@end
