package com.hyprmx.android.sdk.footer;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Serializable {
    public final String a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4537d;

    public e(String portraitUrl, int i, int i2, String str) {
        Intrinsics.checkNotNullParameter(portraitUrl, "portraitUrl");
        this.a = portraitUrl;
        this.b = i;
        this.c = i2;
        this.f4537d = str;
    }

    public final int c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }
}
