//
//  RNIWrapperViewEventsNotifiable.swift
//  react-native-ios-context-menu
//
//  Created by Dominic Go on 7/17/22.
//

import Foundation


public protocol RNIWrapperViewEventsNotifiable: AnyObject {
  func onJSComponentWillUnmount(
    sender: RNIWrapperView,
    isManuallyTriggered: Bool
  );
};
