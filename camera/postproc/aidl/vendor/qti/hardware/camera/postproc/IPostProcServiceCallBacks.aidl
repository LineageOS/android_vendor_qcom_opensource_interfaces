/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.Error;
import vendor.qti.hardware.camera.postproc.PostProcResult;

/**
 * These functions needs to be implemented by Client and register Callback pointer
 */
@VintfStability
interface IPostProcServiceCallBacks {
    void notifyResult(in Error error, in PostProcResult result);
    void notifyRequestId(in Error error, in int reqId);
}
