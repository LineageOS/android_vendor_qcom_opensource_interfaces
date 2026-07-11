/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.systemhelperaidl;

import vendor.qti.hardware.systemhelperaidl.OutDisplayConfig;
import android.hardware.common.NativeHandle;

@VintfStability
interface ISystemDisplayUtils {
    /**
     * Initialize and allocate buffer for usage
     */
    void init();

    /**
     * Dequeue buffer and share to trustzone
     *
     * @return return display config as output
     */
    OutDisplayConfig dequeueBuffer(out NativeHandle fd);

    /**
     * Enqueue dequeud buffer to display
     */
    void enqueueBuffer();

    /**
     * Free all allocated display buffers
     */
    void freeAllBuffers();

    /**
     * Enqueues the protected buffers, with no rendering.
     *
     */
    void cancelAllBuffers();

    /**
     * Release all allocated buffers
     */
    void releaseAllBuffers();
}
