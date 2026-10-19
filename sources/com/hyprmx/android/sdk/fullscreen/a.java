package com.hyprmx.android.sdk.fullscreen;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.core.x;
import com.hyprmx.android.sdk.core.y;
import com.hyprmx.android.sdk.core.z;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends g, f, com.hyprmx.android.sdk.core.a, com.hyprmx.android.sdk.core.e, x, com.hyprmx.android.sdk.core.i, y, z {
    @Override // com.hyprmx.android.sdk.core.e
    @RetainMethodSignature
    /* synthetic */ void captureImage();

    @RetainMethodSignature
    void closeAdExperience();

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void createCalendarEvent(String str);

    @RetainMethodSignature
    void dismissOfferCancellationDialog();

    @RetainMethodSignature
    void endOMSession();

    @Override // com.hyprmx.android.sdk.core.x
    @RetainMethodSignature
    /* synthetic */ void hyprMXBrowserClosed();

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void loadThankYouPage(String str);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void loadWebTrafficPage(String str, int i);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void openOutsideApplication(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void openShareSheet(String str);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void pauseCountDownTimer();

    @Override // com.hyprmx.android.sdk.core.z
    @RetainMethodSignature
    /* synthetic */ void permissionRequest(String str, int i);

    @RetainMethodSignature
    void reportPowerState();

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void resumeCountDownTimer();

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* synthetic */ void setBackButtonEnabled(boolean z);

    @RetainMethodSignature
    void setClosable(boolean z);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* synthetic */ void setForwardButtonEnabled(boolean z);

    @Override // com.hyprmx.android.sdk.core.y
    @RetainMethodSignature
    /* synthetic */ void setOrientationProperties(boolean z, String str);

    @RetainMethodSignature
    void showCancelDialog(String str, String str2, String str3);

    @Override // com.hyprmx.android.sdk.core.i
    @RetainMethodSignature
    /* synthetic */ void showDialog(String str);

    @RetainMethodSignature
    void showErrorDialog(String str);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void showFinishButton();

    @Override // com.hyprmx.android.sdk.core.x
    @RetainMethodSignature
    /* synthetic */ void showHyprMXBrowser(String str);

    @Override // com.hyprmx.android.sdk.fullscreen.f
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void showLearnMore();

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void showNextButton();

    @Override // com.hyprmx.android.sdk.core.x
    @RetainMethodSignature
    /* synthetic */ void showPlatformBrowser(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void showToast(int i);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void showWebTrafficHeader(int i);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void skipThankYouPage(boolean z);

    @Override // com.hyprmx.android.sdk.fullscreen.f
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void startCatalogDurationTracking(float f2, String str, String str2);

    @Override // com.hyprmx.android.sdk.fullscreen.g
    @RetainMethodSignature
    /* bridge */ /* synthetic */ void startCountDownTimer(int i);

    @RetainMethodSignature
    void startOMSession(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void storePicture(String str);

    @Override // com.hyprmx.android.sdk.core.y
    @RetainMethodSignature
    /* synthetic */ void useCustomClose(boolean z);
}
