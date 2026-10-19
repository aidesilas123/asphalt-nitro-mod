package com.hyprmx.android.sdk.preload;

import android.content.Context;
import java.io.Closeable;
import java.io.InputStream;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes2.dex */
public interface p extends Closeable {
    Object a(Context context, String str, Continuation continuation);

    Object a(String str, InputStream inputStream, Continuation<? super Boolean> continuation);

    Object a(Continuation<? super kotlin.v> continuation);

    long b();

    Object b(String str, Continuation<? super Boolean> continuation);

    Object c(String str, Continuation<? super Boolean> continuation);

    Object d(Continuation<? super Boolean> continuation);

    Object e(String str, Continuation<? super Long> continuation);
}
