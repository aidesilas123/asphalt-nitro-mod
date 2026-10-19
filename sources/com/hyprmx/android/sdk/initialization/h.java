package com.hyprmx.android.sdk.initialization;

import com.hyprmx.android.sdk.core.j;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {

    public static final class a extends h {
        public static final a a = new a();

        public a() {
            super(0);
        }
    }

    public static final class b extends h {
        public static final b a = new b();

        public b() {
            super(0);
        }
    }

    public static final class c extends h {
        public final j a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(j hyprMXController) {
            super(0);
            Intrinsics.checkNotNullParameter(hyprMXController, "hyprMXController");
            this.a = hyprMXController;
        }
    }

    public h() {
    }

    public /* synthetic */ h(int i) {
        this();
    }
}
