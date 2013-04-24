// Benvium. MIT licence
#import "NSString+BVFiles.h"


@implementation NSString (BVFiles)

- (id)toObject {
    NSError *e = nil;
    id ob = [NSJSONSerialization JSONObjectWithData:[self dataUsingEncoding:NSUTF8StringEncoding]
                                            options:NSJSONReadingMutableContainers
                                              error:&e];
    NSString *shortVersion = [self substringToIndex:self.length > 20 ? 20 : self.length];
    if (e) {
        NSLog(@"ERROR: dictionaryFromJSONString error reading JSON. %@. %@", e, shortVersion);
        return nil;
    }

    return ob;
}

- (NSDictionary *)bv_dictionaryFromJSON {
    id ob = [self toObject];

    if ([ob isKindOfClass:[NSDictionary class]]) {
        return ob;
    } else {
        NSString *shortVersion = [self substringToIndex:self.length > 20 ? 20 : self.length];
        NSLog(@"ERROR: bv_dictionaryFromJSON JSON is not a dictionary (possibly an array) %@", shortVersion);
        return nil;
    }
}

- (NSArray *)bv_arrayFromJSON {
    id ob = [self toObject];

    if ([ob isKindOfClass:[NSArray class]]) {
        return ob;
    } else {
        NSString *shortVersion = [self substringToIndex:self.length > 20 ? 20 : self.length];
        NSLog(@"ERROR: bv_arrayFromJSON JSON is not a array (possibly a dictionary) %@", shortVersion);
        return nil;
    }
}

- (NSDictionary *)bv_dictionaryFromJSONBundlePath {
    NSError *er = nil;
    NSString *format = [self bv_absoluteBundleFilePath];
    NSString *str = [NSString stringWithContentsOfFile:format encoding:NSUTF8StringEncoding error:&er];
    if (er || !str) {
        NSLog(@"ERROR: bv_dictionaryFromJSONBundlePath failed to load file at %@ %@", format, er);
        return nil;
    }

    return [str bv_dictionaryFromJSON];
}

- (NSArray *)bv_arrayFromFromJSONBundlePath {


    NSError *er = nil;
    NSString *format = [self bv_absoluteBundleFilePath];
    NSString *str = [NSString stringWithContentsOfFile:format encoding:NSUTF8StringEncoding error:&er];
    if (er || !str) {
        NSLog(@"ERROR: bv_arrayFromFromJSONBundlePath failed to load file at %@ %@", format, er);
        return nil;
    }

    return [str bv_arrayFromJSON];
}

- (NSString *)documentsPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}

- (NSDictionary *)bv_dictionaryFromJSONDocumentsPath {
    NSError *er = nil;
    NSString *path = [self bv_absoluteDocumentsFilePath];
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&er];
    if (er || !str) {
        NSLog(@"ERROR: bv_dictionaryFromJSONDocumentsPath failed to load file at %@ %@", path, er);
        return nil;
    }

    return [str bv_dictionaryFromJSON];
}

- (NSArray *)bv_arrayFromJSONDocumentsPath {

    NSError *er = nil;
    NSString *path = [self bv_absoluteDocumentsFilePath];

    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&er];
    if (er || !str) {
        NSLog(@"ERROR: bv_arrayFromFromJSONDocumentsPath failed to load file at %@ %@", path, er);
        return nil;
    }

    return [str bv_arrayFromJSON];
}

- (NSString *)bv_absoluteBundleFilePath {
    NSString *path = [NSBundle.mainBundle bundlePath];
    return [NSString stringWithFormat:@"%@/%@", path, self];
}

- (NSString *)bv_absoluteDocumentsFilePath {
    return [NSString stringWithFormat:@"%@/%@", [self documentsPath], self];
}


@end