# Copyright (c) 2014-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.

include_defs("//YOGA_DEFS")

COMPILER_FLAGS = [
    "-fobjc-arc",
    "-Wconditional-uninitialized",
    "-Wdangling-else",
    "-Wdeprecated-declarations",
    "-Wimplicit-retain-self",
    "-Wincomplete-implementation",
    "-Wobjc-method-access",
    "-Wobjc-missing-super-calls",
    "-Wmismatched-return-types",
    "-Wreturn-type",
    "-Wno-global-constructors",
    "-Wno-shadow",
    "-Wunused-const-variable",
    "-Wunused-function",
    "-Wunused-property-ivar",
    "-Wunused-result",
    "-Wunused-value",
]

apple_library(
    name = "YogaKit",
    srcs = glob(["Source/**/*.m"]),
    compiler_flags = COMPILER_FLAGS,
    exported_headers = glob(["Source/**/*.h"]),
    frameworks = [
        "$SDKROOT/System/Library/Frameworks/Foundation.framework",
        "$SDKROOT/System/Library/Frameworks/UIKit.framework",
    ],
    visibility = ["PUBLIC"],
    deps = [
        yoga_dep(":yoga"),
    ],
)

apple_test(
    name = "YogaKitTests",
    srcs = glob(["Tests/**/*.m"]),
    compiler_flags = COMPILER_FLAGS,
    frameworks = [
        "$PLATFORM_DIR/Developer/Library/Frameworks/XCTest.framework",
        "$SDKROOT/System/Library/Frameworks/CoreGraphics.framework",
    ],
    info_plist = "Tests/Info.plist",
    visibility = ["PUBLIC"],
    deps = [
        ":YogaKit",
    ],
)
