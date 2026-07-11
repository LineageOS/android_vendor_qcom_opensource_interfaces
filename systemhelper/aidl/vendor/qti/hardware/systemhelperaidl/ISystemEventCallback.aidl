/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

package vendor.qti.hardware.systemhelperaidl;

@VintfStability
interface ISystemEventCallback {
    /**
     * Event notification.
     *
     * @param eventId event occurred (of type SystemEventType)
     */
    oneway void onEvent(in long eventId);
}