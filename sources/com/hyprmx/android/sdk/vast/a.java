package com.hyprmx.android.sdk.vast;

import com.hyprmx.android.sdk.analytics.d;
import java.util.Random;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.hyprmx.android.sdk.tracking.a {
    public final d a;
    public final float b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Random f4743e;

    public a(d eventController, float f2, String viewingToken, String viewingId) {
        Intrinsics.checkNotNullParameter(eventController, "eventController");
        Intrinsics.checkNotNullParameter(viewingToken, "viewingToken");
        Intrinsics.checkNotNullParameter(viewingId, "viewingId");
        this.a = eventController;
        this.b = f2;
        this.c = viewingToken;
        this.f4742d = viewingId;
        this.f4743e = new Random();
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object a(long j, Continuation<? super v> continuation) {
        if (j <= 0) {
            return v.a;
        }
        boolean z = true;
        if ((this.b == -1.0f) ? this.f4743e.nextFloat() > 0.2f : this.f4743e.nextFloat() >= this.b) {
            z = false;
        }
        if (z) {
            this.a.a(this.c, this.f4742d, String.valueOf(j));
        }
        return v.a;
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object a(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.b(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object b(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.c(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object c(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.d(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object d(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.e(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object e(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.f(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object f(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.g(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object g(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.h(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object h(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.i(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object i(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.j(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object j(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.k(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object k(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.l(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object l(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.m(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object m(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.n(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object n(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.o(this, continuation);
    }
}
