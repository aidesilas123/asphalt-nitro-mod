package com.hyprmx.android.sdk.banner;

import kotlin.coroutines.Continuation;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public interface b {
    Object a(String str, Continuation<? super v> continuation);

    Object b(String str, Continuation<? super v> continuation);

    Object b(Continuation<? super v> continuation);

    Object c(String str, Continuation<? super v> continuation);

    Object c(Continuation<? super v> continuation);

    Object d(Continuation<? super v> continuation);

    Object e(String str, Continuation<? super v> continuation);

    Object f(String str, Continuation<? super v> continuation);

    Object g(String str, Continuation<? super v> continuation);

    void startVisibilityTracking(long j, int i);

    void stopVisibilityTracking();
}
