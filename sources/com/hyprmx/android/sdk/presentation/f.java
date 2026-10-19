package com.hyprmx.android.sdk.presentation;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public interface f {

    public interface a {
        @RetainMethodSignature
        void adCanceled(String str);

        @RetainMethodSignature
        void adDisplayError(String str, String str2);

        @RetainMethodSignature
        void adFinished(String str);

        @RetainMethodSignature
        void adRewarded(String str, String str2, int i);

        @RetainMethodSignature
        void adStarted(String str);

        @RetainMethodSignature
        void onDisplayAd(String str, String str2, String str3);

        @RetainMethodSignature
        void showNoAd(String str);

        @RetainMethodSignature
        void showRequiredInfo(String str, String str2);
    }

    v a(com.hyprmx.android.sdk.placement.c cVar);
}
