//
//  MainNavigationBar.m
//  OCNavigationBarButtonAdjustTapArea
//
//  Created by 麻生 拓弥 on 2016/10/06.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "MainNavigationBar.h"

@implementation MainNavigationBar

/**
 * タップされた座標がナビゲーションバーの領域内だとユーザインタラクトを有効にする
 * If the point tapped is inside of the NavigationBar area,
 * navigationbar's userinteract is true.
 * @param point tap point /タップ座標
 * @param event TapEvent / タップイベント
 * @return self / ユーザインタラクト設定した自身のビュー
 */
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {

    if ([self pointInside:point withEvent:event]) {
        self.userInteractionEnabled = YES;
    } else {
        self.userInteractionEnabled = NO;
    }
    return [super hitTest:point withEvent:event];
}

@end
