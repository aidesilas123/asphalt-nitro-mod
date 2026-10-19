package com.bytedance.sdk.component.b.a;

/* JADX INFO: compiled from: Protocol.java */
/* JADX INFO: loaded from: classes.dex */
public enum l {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f924e;

    l(String str) {
        this.f924e = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f924e;
    }
}
