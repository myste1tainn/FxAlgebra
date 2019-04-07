//
// Created by Arnon Keereena on 2019-02-14.
// Copyright (c) 2019 AMOS Thailand. All rights reserved.
//

#if !(TARGET_OS_SIMUATOR || TARGET_OS_iOS)
// If the target is OS simulator or iOS then it is built with cocoapods
// and is using subspecs where module dependencies is not required.
import AlgebraFx
#endif
import Foundation
import SwiftExpansion
import RxSwiftExpansion
import RxSwift

extension DriverType where E: Hashable {
  public static prefix func ==(this: Self) -> Driver<E> {
    return this.distinctUntilChanged()
  }
}

extension DriverType where E: Equatable {
  public static prefix func ==(this: Self) -> Driver<E> {
    return this.distinctUntilChanged()
  }
}

