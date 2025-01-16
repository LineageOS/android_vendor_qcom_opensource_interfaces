/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

/**
 * PostProcessor types supported by the service
 */
@VintfStability
@Backing(type="int")
enum PostProcType {
    /**
     * YUV2Jpeg Conversion
     */
    JPEG = 0,
}
