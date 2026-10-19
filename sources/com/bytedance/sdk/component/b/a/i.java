package com.bytedance.sdk.component.b.a;

import java.nio.charset.Charset;

/* JADX INFO: compiled from: MediaType.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {
    private String a;
    private String b;

    private i(String str) {
        this.a = str;
    }

    public static i a(String str) {
        return new i(str);
    }

    public String a() {
        return this.a;
    }

    public Charset a(Charset charset) {
        try {
            String str = this.b;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }
}
