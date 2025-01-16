/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.JpegCapabilities;

/**
 * This structure contains generic PostProc capabilities info.
 * This will be updated based on different postproc features supported
 */
@VintfStability
parcelable PostProcCapabilities {
    /**
     * JPEG stream capabilities
     */
    JpegCapabilities jpegStream;
}
