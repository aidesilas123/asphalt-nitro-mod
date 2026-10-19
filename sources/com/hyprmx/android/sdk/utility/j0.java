package com.hyprmx.android.sdk.utility;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j0 {
    public final String a;

    public static final class a extends j0 {
        public static final a b = new a();

        public a() {
            super("NAVIGATION_ALLOWED", 0);
        }
    }

    public static final class b extends j0 {
        public static final b b = new b();

        public b() {
            super("NAVIGATION_BLOCKED", 0);
        }
    }

    public static final class c extends j0 {
        public static final c b = new c();

        public c() {
            super("OPEN_OUTSIDE_APPLICATION", 0);
        }
    }

    public static final class d extends j0 {
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String url) {
            super("NAVIGATION_REDIRECTED", 0);
            Intrinsics.checkNotNullParameter(url, "url");
            this.b = url;
        }
    }

    public j0(String str) {
        this.a = str;
    }

    public /* synthetic */ j0(String str, int i) {
        this(str);
    }
}
