// Benvium. MIT licence
#import <Foundation/Foundation.h>

@interface NSString (BVFiles)

-(NSDictionary *)bv_dictionaryFromJSON;
-(NSArray*)bv_arrayFromJSON;

-(NSDictionary *)bv_dictionaryFromJSONBundlePath;
-(NSArray*)bv_arrayFromFromJSONBundlePath;

-(NSDictionary *)bv_dictionaryFromJSONDocumentsPath;
-(NSArray*)bv_arrayFromJSONDocumentsPath;


-(NSString*) bv_absoluteBundleFilePath;
-(NSString*) bv_absoluteDocumentsFilePath;


@end