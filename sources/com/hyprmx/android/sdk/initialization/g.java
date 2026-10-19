package com.hyprmx.android.sdk.initialization;

import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.core.j;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes2.dex */
public interface g {
    Object a(j jVar, ConsentStatus consentStatus, Continuation<? super h> continuation);

    Object a(String str, j jVar, ConsentStatus consentStatus, long j, Continuation<? super h> continuation);
}
