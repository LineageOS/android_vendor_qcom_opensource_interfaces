/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import android.hardware.common.NativeHandle;

/**
 * Client can dynamically choose to update resolution for JPEG encode.
 * If Client choose to use same resolution, then same parameters as CreateParams can be used
 */
@VintfStability
parcelable HandleParams {
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
    /**
     * handle pointer
     */
    NativeHandle bufHandle;
}
