package com.hyprmx.android.sdk.preload;

import androidx.appcompat.app.AppCompatActivity;
import com.hyprmx.android.sdk.activity.o0;
import java.io.Closeable;
import java.util.Map;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes2.dex */
public interface n extends Closeable {
    Object a(AppCompatActivity appCompatActivity, String str, o0 o0Var);

    Object a(String str, com.hyprmx.android.sdk.api.data.b bVar, Continuation continuation);

    Object a(String str, com.hyprmx.android.sdk.api.data.c cVar, Continuation continuation);

    Object a(String str, String str2, Continuation continuation);

    Object a(String str, Continuation continuation);

    Object a(Continuation<? super kotlin.v> continuation);

    void a(z zVar);

    Object b(Continuation<? super Boolean> continuation);

    Object c(Continuation continuation);

    Map c();

    com.hyprmx.android.sdk.api.data.b d(String str);

    Object d(String str, Continuation continuation);

    com.hyprmx.android.sdk.api.data.c f(String str);

    Object f(String str, Continuation continuation);

    kotlin.v g(String str);

    Object h(String str);
}
