package com.hyprmx.android.sdk.mvp;

import androidx.core.app.NotificationCompat;
import com.hyprmx.android.sdk.presentation.h;
import com.json.o2;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c, h, CoroutineScope {
    public final /* synthetic */ h a;
    public final /* synthetic */ CoroutineScope b;

    public b(h publisher, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(publisher, "publisher");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = publisher;
        this.b = scope;
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
    public final CoroutineContext getCoroutineContext() {
        return this.b.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final <T> T getProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return (T) this.a.getProperty(property);
    }

    @Override // com.hyprmx.android.sdk.mvp.c
    public final void i(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, ? extends Object> mapMapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to(NotificationCompat.CATEGORY_EVENT, event));
        Intrinsics.checkNotNullParameter("onLifecycleEvent", o2.h.k0);
        this.a.a("onLifecycleEvent", mapMapOf);
    }
}
