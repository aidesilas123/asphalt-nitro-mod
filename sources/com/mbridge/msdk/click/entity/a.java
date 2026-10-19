package com.mbridge.msdk.click.entity;

/* JADX INFO: compiled from: ClickResponseHeader.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public String a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f6803d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6804e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6805f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f6806g;
    public String h;

    public final String a() {
        return "statusCode=" + this.f6805f + ", location=" + this.a + ", contentType=" + this.b + ", contentLength=" + this.f6804e + ", contentEncoding=" + this.c + ", referer=" + this.f6803d;
    }

    public final String toString() {
        return "ClickResponseHeader{location='" + this.a + "', contentType='" + this.b + "', contentEncoding='" + this.c + "', referer='" + this.f6803d + "', contentLength=" + this.f6804e + ", statusCode=" + this.f6805f + ", url='" + this.f6806g + "', exception='" + this.h + "'}";
    }
}
