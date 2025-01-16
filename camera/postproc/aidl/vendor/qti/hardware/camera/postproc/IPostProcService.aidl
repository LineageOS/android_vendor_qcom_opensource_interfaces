/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.CreateParams;
import vendor.qti.hardware.camera.postproc.IPostProcServiceCallBacks;
import vendor.qti.hardware.camera.postproc.IPostProcSession;
import vendor.qti.hardware.camera.postproc.PostProcCapabilities;
import vendor.qti.hardware.camera.postproc.PostProcType;

@VintfStability
interface IPostProcService {
    // Adding return type to method instead of out param IPostProcSession postprocinstance since there is only one return value.
    /**
     * API to create postproc instance
     */
    IPostProcSession createPostProcessor(in CreateParams createParams,
        in IPostProcServiceCallBacks callback);

    // Adding return type to method instead of out param PostProcCapabilities encCapabilities since there is only one return value.
    /**
     * API to get capabilities of a particular postprocessor.
     */
    PostProcCapabilities getCapabilities(in PostProcType postprocenum);

    // Adding return type to method instead of out param PostProcType[] proctypes since there is only one return value.
    /**
     * API to get list of postproc types supported
     */
    PostProcType[] getPostprocTypes();
}
