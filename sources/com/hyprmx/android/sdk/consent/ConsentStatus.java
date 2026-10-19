package com.hyprmx.android.sdk.consent;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0087\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/hyprmx/android/sdk/consent/ConsentStatus;", "", "consent", "", "(Ljava/lang/String;II)V", "getConsent", "()I", "CONSENT_STATUS_UNKNOWN", "CONSENT_GIVEN", "CONSENT_DECLINED", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public enum ConsentStatus {
    CONSENT_STATUS_UNKNOWN(0),
    CONSENT_GIVEN(1),
    CONSENT_DECLINED(2);

    private final int consent;

    ConsentStatus(int i) {
        this.consent = i;
    }

    public final int getConsent() {
        return this.consent;
    }
}
