/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

import vendor.qti.hardware.camera.postproc.Resolution;

/**
 * This struct contains JPEG postproc capabilities.
 * Dynamic update of resolution is supported.
 */
@VintfStability
parcelable JpegCapabilities {
    /**
     * Max number of streams supported
     */
    int maxStreamsSupported;
    /**
     * Max Resolution supported
     */
    Resolution maxResoultion;
    /**
     * Min Resolution supported
     */
    Resolution minResolution;
    /**
     * Gralloc Formats supported
     */
    int[] formats;
}
