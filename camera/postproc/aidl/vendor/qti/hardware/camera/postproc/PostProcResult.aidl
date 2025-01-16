/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.JpegResult;
import vendor.qti.hardware.camera.postproc.PostProcType;

/**
 * This is generic result structure.
 * Based on PostProcType, corresponding result structre will be used.
 */
@VintfStability
parcelable PostProcResult {
    /**
     * requestId given to client as part of process API
     */
    int requestId;
    /**
     * stream
     */
    int streamId;
    /**
     * Postproc Type Value
     */
    PostProcType postProcTypeVal;
    /**
     * JPEG Result structure
     */
    JpegResult jpegResult;
}
