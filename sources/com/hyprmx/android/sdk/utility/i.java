package com.hyprmx.android.sdk.utility;

import com.json.o2;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements com.hyprmx.android.sdk.presentation.h, r0, CoroutineScope {
    public final /* synthetic */ com.hyprmx.android.sdk.presentation.h a;
    public final /* synthetic */ CoroutineScope b;

    public i(com.hyprmx.android.sdk.presentation.h eventPublisher, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = eventPublisher;
        this.b = scope;
    }

    @Override // com.hyprmx.android.sdk.utility.r0
    public final j0 a(String url, String mimeType) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Map<String, ? extends Object> mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to("url", url), TuplesKt.to("mimeType", mimeType));
        Intrinsics.checkNotNullParameter("shouldRedirectURL", o2.h.k0);
        Object objA = this.a.a("shouldRedirectURL", mapMapOf);
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.String");
        j0 j0VarA = s0.a((String) objA);
        HyprMXLog.d("shouldRedirectURL returned with " + j0VarA.a);
        return j0VarA;
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final Object a(String str) {
        Intrinsics.checkNotNullParameter("unknownErrorOccurred", "method");
        return this.a.a(str);
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final Object a(String eventName, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        return this.a.a(eventName, map);
    }

    @Override // com.hyprmx.android.sdk.presentation.k, com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final void a(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.a.a(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final void a(CoroutineScope nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.a.a(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.utility.r0
    public final j0 b(String url, boolean z) {
        Intrinsics.checkNotNullParameter(url, "url");
        Map<String, ? extends Object> mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to("url", url), TuplesKt.to("isMainFrame", Boolean.valueOf(z)));
        Intrinsics.checkNotNullParameter("urlNavigationAttempt", o2.h.k0);
        Object objA = this.a.a("urlNavigationAttempt", mapMapOf);
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.String");
        j0 j0VarA = s0.a((String) objA);
        HyprMXLog.d("urlNavigationAttempt returned with " + j0VarA.a);
        return j0VarA;
    }

    @Override // com.hyprmx.android.sdk.utility.r0
    public final String b(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Map<String, ? extends Object> mapMapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to("url", url));
        Intrinsics.checkNotNullParameter("windowOpenAttempt", o2.h.k0);
        return (String) this.a.a("windowOpenAttempt", mapMapOf);
    }

    @Override // com.hyprmx.android.sdk.presentation.k
    public final void c(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.a.c(str);
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final void destroy() {
        this.a.destroy();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getA() {
        return this.b.getA();
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final <T> T getProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return (T) this.a.getProperty(property);
    }
}
