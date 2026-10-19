package com.hyprmx.android.sdk.network;

import com.hyprmx.android.sdk.analytics.c;
import java.io.InputStream;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
public interface k {
    Object a(String str, a aVar, Continuation<? super m<String>> continuation);

    Object a(String str, String str2, a aVar, c.a aVar2);

    <T> Object a(String str, String str2, String str3, a aVar, Function2<? super InputStream, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super m<? extends T>> continuation);
}
