package com.hyprmx.android.sdk.initialization;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    public static final class a extends d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String error) {
            super(0);
            Intrinsics.checkNotNullParameter(error, "error");
        }
    }

    public static final class b extends d {
        public static final b a = new b();

        public b() {
            super(0);
        }
    }

    public static final class c extends d {
        public final String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String placementJSON) {
            super(0);
            Intrinsics.checkNotNullParameter(placementJSON, "placementJSON");
            this.a = placementJSON;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.initialization.d$d, reason: collision with other inner class name */
    public static final class C0289d extends d {
        public final String a;
        public final int b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0289d(String coreJSURL, int i) {
            super(0);
            Intrinsics.checkNotNullParameter(coreJSURL, "coreJSURL");
            this.a = coreJSURL;
            this.b = i;
        }
    }

    public d() {
    }

    public /* synthetic */ d(int i) {
        this();
    }
}
