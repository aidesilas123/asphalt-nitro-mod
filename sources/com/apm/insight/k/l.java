package com.apm.insight.k;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private final int a;
    private String b;
    private JSONObject c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f283d;

    public l(int i) {
        this.a = i;
    }

    public l(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public l(int i, Throwable th) {
        this.a = i;
        if (th != null) {
            this.b = th.getMessage();
        }
    }

    public l(int i, JSONObject jSONObject) {
        this.a = i;
        this.c = jSONObject;
    }

    public l(int i, byte[] bArr) {
        this.a = i;
        this.f283d = bArr;
    }

    public boolean a() {
        return this.a != 207;
    }

    @Nullable
    public byte[] b() {
        return this.f283d;
    }
}
