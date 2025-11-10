/*
 * SPDX-FileCopyrightText: 2025 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.qti.diaghal;

import vendor.qti.diaghal.Idiagcallback;
import vendor.qti.diaghal.ParcelableMemory;

@VintfStability
interface Idiag {
    int close();
    int ioctl(int cmd, in ParcelableMemory mem, int len);
    int open(Idiagcallback callback);
    int write(in ParcelableMemory mem, int len);
}
