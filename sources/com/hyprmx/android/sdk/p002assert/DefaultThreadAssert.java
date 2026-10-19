package com.hyprmx.android.sdk.p002assert;

import com.hyprmx.android.sdk.analytics.b;
import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\bR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;", "Lcom/hyprmx/android/sdk/assert/ThreadAssert;", "Lcom/hyprmx/android/sdk/analytics/b;", "clientErrorController", "Lcom/hyprmx/android/sdk/analytics/b;", "getClientErrorController", "()Lcom/hyprmx/android/sdk/analytics/b;", "setClientErrorController", "(Lcom/hyprmx/android/sdk/analytics/b;)V", "<init>", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class DefaultThreadAssert implements ThreadAssert {
    private b clientErrorController;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultThreadAssert() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public DefaultThreadAssert(b bVar) {
        this.clientErrorController = bVar;
    }

    public /* synthetic */ DefaultThreadAssert(b bVar, int i, n nVar) {
        this((i & 1) != 0 ? null : bVar);
    }

    @Override // com.hyprmx.android.sdk.p002assert.ThreadAssert
    public b getClientErrorController() {
        return this.clientErrorController;
    }

    @Override // com.hyprmx.android.sdk.p002assert.ThreadAssert
    public /* synthetic */ void runningOnBackgroundThread() {
        a.a(this);
    }

    @Override // com.hyprmx.android.sdk.p002assert.ThreadAssert
    public /* synthetic */ void runningOnMainThread() {
        a.b(this);
    }

    @Override // com.hyprmx.android.sdk.p002assert.ThreadAssert
    public void setClientErrorController(b bVar) {
        this.clientErrorController = bVar;
    }

    @Override // com.hyprmx.android.sdk.p002assert.ThreadAssert
    public /* synthetic */ void shouldNeverBeCalled(String str) {
        a.c(this, str);
    }
}
