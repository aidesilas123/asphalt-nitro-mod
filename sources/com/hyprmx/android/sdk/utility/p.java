package com.hyprmx.android.sdk.utility;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p {

    public static final class a extends p {
        public static final a a = new a();

        public a() {
            super(0);
        }
    }

    public static final class b extends p {
        public final String a;
        public final boolean b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String googleAdId, boolean z) {
            super(0);
            Intrinsics.checkNotNullParameter(googleAdId, "googleAdId");
            this.a = googleAdId;
            this.b = z;
        }
    }

    public p() {
    }

    public /* synthetic */ p(int i) {
        this();
    }
}
