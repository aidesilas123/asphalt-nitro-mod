package com.hyprmx.android.sdk.fullscreen;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface g {
    @RetainMethodSignature
    void loadThankYouPage(String str);

    @RetainMethodSignature
    void loadWebTrafficPage(String str, int i);

    @RetainMethodSignature
    void pauseCountDownTimer();

    @RetainMethodSignature
    void resumeCountDownTimer();

    @RetainMethodSignature
    void setBackButtonEnabled(boolean z);

    @RetainMethodSignature
    void setForwardButtonEnabled(boolean z);

    @RetainMethodSignature
    void showFinishButton();

    @RetainMethodSignature
    void showNextButton();

    @RetainMethodSignature
    void showWebTrafficHeader(int i);

    @RetainMethodSignature
    void skipThankYouPage(boolean z);

    @RetainMethodSignature
    void startCountDownTimer(int i);
}
