/*
 * Copyright 2022 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package vendor.qti.hardware.fm;

import vendor.qti.hardware.fm.IFmHciCallbacks;

/**
 * The Host Controller Interface (HCI) is the layer defined by the Bluetooth
 * specification between the software that runs on the host and the Bluetooth
 * controller chip. This boundary is the natural choice for a Hardware
 * Abstraction Layer (HAL). Dealing only in HCI packets and events simplifies
 * the stack and abstracts away power management, initialization, and other
 * implementation-specific details related to the hardware.
 */
@VintfStability
interface IFmHci {
    /**
     * Close the HCI interface
     */
    void close();

    /**
     * Initialize the Bluetooth interface and set the callbacks.
     * Only one client can initialize the interface at a time.  When a
     * call to initialize fails, the Status parameter of the callback
     * will indicate the reason for the failure.
     */
    void initialize(in IFmHciCallbacks callback);

    /**
     * Send an HCI command (as specified in the Bluetooth Specification
     * V4.2, Vol 2, Part 5, Section 5.4.1) to the Bluetooth controller.
     * Commands must be executed in order.
     *
     * @param command is the HCI command to be sent
     */
    void sendHciCommand(in byte[] command);
}
