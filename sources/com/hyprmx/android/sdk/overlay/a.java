package com.hyprmx.android.sdk.overlay;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.core.z;

/* JADX INFO: loaded from: classes2.dex */
public interface a extends com.hyprmx.android.sdk.core.a, com.hyprmx.android.sdk.core.e, z {
    @Override // com.hyprmx.android.sdk.core.e
    @RetainMethodSignature
    /* synthetic */ void captureImage();

    @RetainMethodSignature
    void closeBrowser();

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void createCalendarEvent(String str);

    @RetainMethodSignature
    void displayError(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void openOutsideApplication(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void openShareSheet(String str);

    @Override // com.hyprmx.android.sdk.core.z
    @RetainMethodSignature
    /* synthetic */ void permissionRequest(String str, int i);

    @RetainMethodSignature
    void setBackButtonEnabled(boolean z);

    @RetainMethodSignature
    void setForwardButtonEnabled(boolean z);

    @RetainMethodSignature
    void setHeader(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void showToast(int i);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void storePicture(String str);

    @RetainMethodSignature
    void webViewLoadStarted(String str);
}
