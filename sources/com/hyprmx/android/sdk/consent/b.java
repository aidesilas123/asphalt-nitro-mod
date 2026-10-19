package com.hyprmx.android.sdk.consent;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public interface a {
        @RetainMethodSignature
        int getConsentStatus();
    }

    void a();

    void a(ConsentStatus consentStatus);

    ConsentStatus b();
}
