// Copyright (C) 2020 The Android Open Source Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef VENDOR_QTI_AUDIOHALEXT_UTILS_H
#define VENDOR_QTI_AUDIOHALEXT_UTILS_H

#include <vendor/qti/hardware/audiohalext/1.0/types.h>

namespace vendor {
namespace qti {
namespace hardware {

namespace audiohalext {

using namespace android;

using ::vendor::qti::hardware::audiohalext::V1_0::ApmConfigs;
using ::vendor::qti::hardware::audiohalext::V1_0::ApmValues;
using ::vendor::qti::hardware::audiohalext::V1_0::AVConfigs;
using ::vendor::qti::hardware::audiohalext::V1_0::AVValues;

static bool FALSE = false;

// A function to retrieve and cache the service handle
// for a particular interface.
template <typename I>
sp<I> tryGetService() {
    // Static initializer used for synchronizations.
    static sp<I> configs = I::tryGetService();
    return configs;
}

// Arguments V: Type for the value (i.e., OptionalXXX).
//           I: Interface class name.
//           func: Member function pointer.
template<typename V, typename I, android::hardware::Return<void> (I::* func)
        (std::function<void(const V&)>)>
decltype(V::value) get(const decltype(V::value) &defValue, bool &specified = FALSE) {
    // Static initializer used for synchronizations.
    auto getHelper = []()->V {
        V ret;
        sp<I> configs = tryGetService<I>();

        if (!configs.get()) {
            // Fallback to the default value.
            ret.specified = false;
        } else {
            auto status = (*configs.*func)([&ret](V v) {
                ret = v;
            });
            if (!status.isOk()) {
                std::ostringstream oss;
                oss << "HIDL call failed for retrieving a config item from "
                       "configstore : "
                    << status.description().c_str();
                ret.specified = false;
            }
        }

        return ret;
    };
    static V cachedValue = getHelper();
    specified = cachedValue.specified;

    return cachedValue.specified ? cachedValue.value : defValue;
}

template<typename I, android::hardware::Return<void> (I::* func)
        (std::function<void(const ApmConfigs&)>)>
ApmValues getApmConfigs(const ApmValues &defValue, bool &specified) {
    return get<ApmConfigs, I, func>(defValue, specified);
}

template<typename I, android::hardware::Return<void> (I::* func)
        (std::function<void(const AVConfigs&)>)>
AVValues getAVConfigs(const AVValues &defValue, bool &specified) {
    return get<AVConfigs, I, func>(defValue, specified);
}

}  // namespace audiohalext
}  // namespace hardware
}  // namespace qti
}  // namespace vendor

#endif  // VENDOR_QTI_AUDIOHALEXT_UTILS_H
