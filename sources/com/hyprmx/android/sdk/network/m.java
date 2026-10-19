package com.hyprmx.android.sdk.network;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m<T> {

    public static final class a<T> extends m<T> {
        public final int a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String errorMessage, int i) {
            super(0);
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            this.a = i;
            this.b = errorMessage;
        }

        @Override // com.hyprmx.android.sdk.network.m
        public final int a() {
            return this.a;
        }
    }

    public static final class b<T> extends m<T> {
        public final int a;
        public final T b;
        public final Map<String, List<String>> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f4585d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(int i, T t, Map<String, ? extends List<String>> headers, long j) {
            super(0);
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.a = i;
            this.b = t;
            this.c = headers;
            this.f4585d = j;
        }

        @Override // com.hyprmx.android.sdk.network.m
        public final int a() {
            return this.a;
        }
    }

    public m() {
    }

    public /* synthetic */ m(int i) {
        this();
    }

    public abstract int a();
}
