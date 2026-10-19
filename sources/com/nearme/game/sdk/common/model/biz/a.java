package com.nearme.game.sdk.common.model.biz;

import java.io.Serializable;

/* JADX INFO: compiled from: GameCenterSettings.java */
/* JADX INFO: loaded from: classes4.dex */
public class a implements Serializable {
    private static final long serialVersionUID = -6724408697032535570L;
    public boolean a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f7678f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7679g;
    public String h;
    public int i;
    public int j = 0;

    public a(boolean z, String str, String str2, boolean z2, boolean z3, int i) {
        this.f7676d = false;
        this.f7677e = false;
        this.a = z;
        this.b = str;
        this.c = str2;
        this.f7676d = z2;
        this.f7677e = z3;
        this.i = i;
    }
}
