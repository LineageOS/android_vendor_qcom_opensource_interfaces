/*
 * SPDX-FileCopyrightText: 2025 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.qti.diaghal;

import vendor.qti.diaghal.Idiagcallback;
import vendor.qti.diaghal.ParcelableMemory;

@VintfStability
interface Idiagcallback {
    int send_data(in ParcelableMemory mem, int len);
}
