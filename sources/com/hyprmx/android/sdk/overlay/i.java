package com.hyprmx.android.sdk.overlay;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import kotlin.coroutines.Continuation;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public interface i extends com.hyprmx.android.sdk.core.a {
    Object asyncSavePhoto(String str, Continuation<? super v> continuation);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void createCalendarEvent(String str);

    void hyprMXBrowserClosed();

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void openOutsideApplication(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void openShareSheet(String str);

    void setOverlayPresented(boolean z);

    void showHyprMXBrowser(String str);

    void showPlatformBrowser(String str);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void showToast(int i);

    @Override // com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    /* synthetic */ void storePicture(String str);
}
