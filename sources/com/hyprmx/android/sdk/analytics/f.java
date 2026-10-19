package com.hyprmx.android.sdk.analytics;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import kotlin.coroutines.Continuation;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public interface f extends l {
    Object a(Continuation<? super v> continuation);

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getATSSettings();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ boolean getAdIdOptedOut();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getAndroidId();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getBundleID();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getBundleVersion();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getCarriers();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ boolean getClearTextPermitted();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getConnectionType();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDevice();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDeviceBrand();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDeviceFingerPrint();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ int getDeviceHeight();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDeviceManufacturer();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDeviceModel();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDeviceProduct();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDeviceType();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ int getDeviceWidth();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getDistributorID();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getGAID();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getIOSAppOnMac();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getIdentifierForVendor();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ boolean getIsAgeRestrictedUser();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ boolean getIsLowPowerEnabled();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ int getMSDKV();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getMacCatalyst();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getMaxFrameSize();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getMediationParams();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getMraidSupportsString();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getOSVersion();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getPermissions();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getPersistentID();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getPlatform();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getPrivacyTrackingStatus();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ float getPxRatio();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getSDKVersion();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getSKAdNetworkItems();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getScreenSize();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getScreenTraits();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getSupportedInterfaceSettings();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getSupportsMultipleScenes();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ boolean getSupportsMultipleWindow();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ float getTargetSDKVersion();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ String getUID();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getUnityParams();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* synthetic */ String getUserPermissions();

    @Override // com.hyprmx.android.sdk.analytics.l
    @RetainMethodSignature
    /* bridge */ /* synthetic */ Void getXcodeVersion();
}
