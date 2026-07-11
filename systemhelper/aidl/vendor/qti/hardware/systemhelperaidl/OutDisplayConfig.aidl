/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.systemhelperaidl;

@VintfStability
parcelable OutDisplayConfig {
    /* number of free buffers available */
    int numBuffersToPass;

    /* Buffer stride */
    int stride;

    /* Pixel buffer size */
    int pixelwidth;
}
