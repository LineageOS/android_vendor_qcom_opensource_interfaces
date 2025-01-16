/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
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
}
