package com.hyprmx.android.sdk.consent;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.consent.b;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements b, b.a, CoroutineScope {
    public final com.hyprmx.android.sdk.core.js.a a;
    public ConsentStatus b;
    public final /* synthetic */ CoroutineScope c;

    public a(com.hyprmx.android.sdk.core.js.a jsEngine, ConsentStatus givenConsent, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(givenConsent, "givenConsent");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = jsEngine;
        this.b = givenConsent;
        this.c = CoroutineScopeKt.plus(scope, new CoroutineName("ConsentController"));
        jsEngine.a("HYPRNativeConsentController", this);
    }

    @Override // com.hyprmx.android.sdk.consent.b
    public final void a() {
        this.a.a("HYPRConsentController", "new ConsentController()");
    }

    @Override // com.hyprmx.android.sdk.consent.b
    public final void a(ConsentStatus givenConsent) {
        Intrinsics.checkNotNullParameter(givenConsent, "givenConsent");
        Intrinsics.checkNotNullParameter(givenConsent, "<set-?>");
        this.b = givenConsent;
        this.a.c("HYPRConsentController.consentStatusChanged(" + givenConsent.getConsent() + ')');
    }

    @Override // com.hyprmx.android.sdk.consent.b
    public final ConsentStatus b() {
        return this.b;
    }

    @Override // com.hyprmx.android.sdk.consent.b.a
    @RetainMethodSignature
    public int getConsentStatus() {
        return this.b.getConsent();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getA() {
        return this.c.getA();
    }
}
