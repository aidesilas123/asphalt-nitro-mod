package com.hyprmx.android.sdk.utility;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m0<T> {

    public static final class a extends m0 {
        public final String a;
        public final int b;
        public final Throwable c;

        public /* synthetic */ a() {
            throw null;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String message, int i, Throwable th) {
            super(0);
            Intrinsics.checkNotNullParameter(message, "message");
            this.a = message;
            this.b = i;
            this.c = th;
            HyprMXLog.d("Failure( code = " + i + ", message = " + message + " )");
        }
    }

    public static final class b<T> extends m0<T> {
        public final T a;

        public b(T t) {
            super(0);
            this.a = t;
        }
    }

    public m0() {
    }

    public /* synthetic */ m0(int i) {
        this();
    }
}
