/*
 * SPDX-FileCopyrightText: 2025 The LineageOS Project
 * SPDX-License-Identifier: Apache-2.0
 */

package vendor.qti.diaghal;

import android.hardware.common.MappableFile;

@VintfStability
parcelable ParcelableMemory {
    MappableFile file;
    String str;
}
