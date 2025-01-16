/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.HandleParams;

/**
 * This structure contains parameters given during postproc process request
 */
@VintfStability
parcelable ProcessRequestParams {
    /**
     * Array of input handles
     */
    HandleParams[] input;
    /**
     * Arry of output handles.
     */
    HandleParams[] output;
    /**
     * Stream id, This indicates which index parameters provided during Init to use for encoding.
     */
    int streamId;
    /**
     * Metadata related to Camera
     */
    byte[] metadata;
}
