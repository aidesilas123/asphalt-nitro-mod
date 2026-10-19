package com.pgl.ssdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes4.dex */
public class A extends HandlerThread {
    private int a;
    public int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f7701d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f7703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Handler f7704g;
    public Handler.Callback h;

    public A(String str, Context context, String str2, byte[] bArr) {
        super(str);
        this.a = 2;
        this.b = 0;
        this.c = 10000;
        this.h = new z(this);
        this.f7701d = context;
        this.f7702e = str2;
        this.f7703f = bArr;
    }
}
