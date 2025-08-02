# TalkNPay

TalkNPay is an innovative iOS application that demonstrates the use of **Siri Shortcuts**, **App Intents**, and **deep linking** to simulate a voice-based bill payment experience. Users can initiate bill payments using Siri voice commands, respond to a security question, and complete the payment securely via biometric authentication inside the app.

This MVP focuses on delivering a clean, presentable, and voice-driven demo experience without compromising basic security. It serves as a proof-of-concept for future enhancements like secure backend validation and voice biometrics.

![App Clip](talk_n_pay_1.gif)
![App Clip](talk_n_pay_2.gif)

---

## Table of Contents

- [App Overview](#app-overview)
- [Features](#features)
- [Data Models](#data-models)
- [Design Philosophy](#design-philosophy)
- [Getting Started](#getting-started)
- [Future Enhancements](#future-enhancements)
- [Created By](#created-by)

---

## App Overview

TalkNPay simulates a complete payment flow initiated by a Siri voice command. It uses a deep link to bring the user into the app to complete the process with biometric verification and visual feedback.

---

## Features

1. **Siri Integration**
   - Users can say:  
     _“Pay my Water bill with TalkNPay”_  
     to initiate the process via **Siri Shortcuts** using `AppIntents`.

2. **Biometric Verification**
   - Once redirected to the app, users complete the transaction via **Face ID** or **Touch ID** for demonstration purposes.

3. **Custom Deep Linking**
   - App opens with parameters like `provider` and `answer` passed via `talknpay://pay?...`.

4. **Stylized UI**
   - Minimalistic interface with a **dark background** and **gold accents**, designed for a polished presentation.

---

## Data Models

- **BillProvider:** Enum representing service providers (e.g., Water, Electricity).
- **Bill:** Manages User Bills.
- **Transaction:** Manages User Transactions.
- **Payment:** Manages User Payments.

---

## Design Philosophy

- **Voice-First UX:** Emphasizes hands-free control through Siri with minimal screen interaction.
- **Clean SwiftUI Architecture:** Follows SOLID Principles, and MVVM Design Architecture.
- **Security-Aware Demo:** Balances user flow and simplicity while acknowledging security considerations in future versions.

---

## Getting Started

### Prerequisites

- Xcode 16+
- iOS 17+ Simulator or Physical Device

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/amer266030/TalkNPay.git
   ```

2. Open the project in Xcode:

   ```bash
   open TalkNPay.xcodeproj
   ```

3. Build and run:

   Select a device or simulator and click **Run**.

4. Enable Siri Shortcuts:
   - Go to device Settings > TalkNPay > Siri & Search > Enable.

5. Test with Siri:
   - Say: _“Pay my Water bill with TalkNPay”_  
     - Follow Siri prompts
     - App opens via deep link and shows success screen

---

## Future Enhancements

- **Backend Validation:** Secure storage and verification of security answers.
- **Voice Biometrics:** Replace typed or spoken PINs with voice recognition.
- **Payment SDK Integration:** Connect with actual payment gateways like Apple Pay or HyperPay.
- **Dynamic Shortcuts:** Auto-generate Siri phrases based on user behavior.

---

## Created By

- **Amer Alyusuf** (iOS Engineer)  
  [Personal Website](https://amer266030.github.io)  
  [LinkedIn](https://www.linkedin.com/in/amer-alyusuf)

- **Dhari Almutairi** (Regulatory & FinTech expert)