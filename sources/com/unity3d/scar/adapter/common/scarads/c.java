package com.unity3d.scar.adapter.common.scarads;

/* JADX INFO: compiled from: ScarAdMetadata.java */
/* JADX INFO: loaded from: classes4.dex */
public class c {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Integer f8067e;

    public c(String str, String str2) {
        this(str, str2, null, null, null);
    }

    public c(String str, String str2, String str3, String str4, Integer num) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.f8066d = str4;
        this.f8067e = num;
    }

    public String a() {
        return this.f8066d;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.a;
    }

    public String d() {
        return this.b;
    }

    public Integer e() {
        return this.f8067e;
    }
}
