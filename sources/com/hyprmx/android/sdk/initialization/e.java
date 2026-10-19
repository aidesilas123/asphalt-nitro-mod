package com.hyprmx.android.sdk.initialization;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    public static final class a extends e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a() {
            super(0);
            Intrinsics.checkNotNullParameter("Error upgrading javascript with unsuccessful network response.", "error");
        }
    }

    public static final class b extends e {
        public final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String newCoreJS) {
            super(0);
            Intrinsics.checkNotNullParameter(newCoreJS, "newCoreJS");
            this.a = newCoreJS;
        }
    }

    public e() {
    }

    public /* synthetic */ e(int i) {
        this();
    }
}
