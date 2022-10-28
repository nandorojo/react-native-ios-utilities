//
//  RNIInternalCleanupMode.swift
//  react-native-ios-utilities
//
//  Created by Dominic Go on 10/29/22.
//

import Foundation


public protocol RNIInternalCleanupMode {
  /// shadow variable for react prop
  var _internalCleanupMode: RNICleanupMode { get };
  
  /// exported react prop
  var internalCleanupMode: String? { set get };
  
  /// computed property - override behavior for `.automatic`
  var cleanupMode: RNICleanupMode { get };
};

// provide default implementation
public extension RNIInternalCleanupMode {
  var shouldEnableAttachToParentVC: Bool {
    self.cleanupMode == .viewController
  };
  
  var shouldEnableCleanup: Bool {
    self.cleanupMode != .disabled
  };
  
  var cleanupMode: RNICleanupMode {
    get {
      switch self._internalCleanupMode {
        case .automatic: return .reactComponentWillUnmount;
        default: return self._internalCleanupMode;
      };
    }
  };
};