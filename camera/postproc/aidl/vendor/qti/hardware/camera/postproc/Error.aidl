/*
/* Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
/* SPDX-License-Identifier: BSD-3-Clause-Clear
*/
package vendor.qti.hardware.camera.postproc;

/**
 * This is generic Error enum
 */
@VintfStability
@Backing(type="int")
enum Error {
    /**
     * Success
     */
    NONE = 0,
    /**
     * StreamId out of range
     */
    BAD_STREAMID = 1,
    /**
     * Maximum Sessions are in Queue
     */
    MAX_SESSIONS = 2,
    /**
     * Handle pointer is invalid
     */
    INVALID_HANDLE = 3,
    /**
     * postproc Session Create Failed
     */
    SESSION_NOT_INIT = 4,
    /**
     * Malloc failed
     */
    MALLOC_FAIL = 5,
    /**
     * Post Processor failed
     */
    POSTPROC_FAIL = 6,
    /**
     * Device is in bad state
     */
    DEVICE_BAD_STATE = 7,
    /**
     * CB Pointer is invalid
     */
    INVALID_CALLBACK_PTR = 8,
    /**
     * PostProc Aborted
     */
    ABORT = 9,
    /**
     * Unsupported Resolution
     */
    UNSUPPORTED_RESOLUTION = 10,
}
