package com.mbridge.msdk.e.a.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: HttpResponse.java */
/* JADX INFO: loaded from: classes4.dex */
public final class f {
    private final int a;
    private final List<com.mbridge.msdk.e.a.g> b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f6942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f6943e;

    public f(int i, List<com.mbridge.msdk.e.a.g> list) {
        this(i, list, -1, null);
    }

    public f(int i, List<com.mbridge.msdk.e.a.g> list, int i2, InputStream inputStream) {
        this.a = i;
        this.b = list;
        this.c = i2;
        this.f6942d = inputStream;
        this.f6943e = null;
    }

    public final int a() {
        return this.a;
    }

    public final List<com.mbridge.msdk.e.a.g> b() {
        return Collections.unmodifiableList(this.b);
    }

    public final int c() {
        return this.c;
    }

    public final InputStream d() {
        InputStream inputStream = this.f6942d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f6943e != null) {
            return new ByteArrayInputStream(this.f6943e);
        }
        return null;
    }
}
