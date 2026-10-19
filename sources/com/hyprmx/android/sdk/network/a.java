package com.hyprmx.android.sdk.network;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final boolean a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<String, String> f4574d;

    public /* synthetic */ a(int i, Map map, int i2) {
        this((i2 & 1) != 0, (i2 & 2) != 0 ? 30000 : 0, (i2 & 4) != 0 ? 30000 : i, (i2 & 8) != 0 ? new HashMap() : map);
    }

    public a(boolean z, int i, int i2, Map<String, String> additionalHeaders) {
        Intrinsics.checkNotNullParameter(additionalHeaders, "additionalHeaders");
        this.a = z;
        this.b = i;
        this.c = i2;
        this.f4574d = additionalHeaders;
    }
}
