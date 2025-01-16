/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

/**
 * This struct contains Input and output Buffer generic properties
 */
@VintfStability
parcelable BufferParams {
    /**
     * Gralloc Format for handle
     */
    int format;
    /**
     * Width
     */
    int width;
    /**
     * Height
     */
    int height;
}
