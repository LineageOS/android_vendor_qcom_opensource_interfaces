/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.Error;
import vendor.qti.hardware.camera.postproc.ProcessRequestParams;

@VintfStability
interface IPostProcSession {
    // Adding return type to method instead of out param Error error since there is only one return value.
    /**
     * API to abort all the encode requests in Queue
     */
    void abort();

    // FIXME: AIDL does not allow int to be an out parameter.
    // Move it to return, or add it to a Parcelable.
    // FIXME: AIDL has built-in status types. Do we need the status type here?
    /**
     * API to provide parameters for postprocessing. requestId given will be used in notifyresult in callback API.
     * It is expected that client will keep this value to associate which handle to free.
     */
    void process(in ProcessRequestParams postprocParam);
}
