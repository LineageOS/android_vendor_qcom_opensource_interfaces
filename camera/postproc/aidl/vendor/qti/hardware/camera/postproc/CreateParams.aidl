/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.BufferParams;
import vendor.qti.hardware.camera.postproc.PostProcType;

/**
 * This struct contains parameters for postproc initialization
 */
@VintfStability
parcelable CreateParams {
    /**
     * Postproc type value
     */
    PostProcType postProcTypeVal;
    /**
     * Parameters for input
     */
    BufferParams[] input;
    /**
     * Parameters for output
     */
    BufferParams[] output;
}
