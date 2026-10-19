package com.mbridge.msdk.video.dynview.c;

/* JADX INFO: compiled from: EnumError.java */
/* JADX INFO: loaded from: classes4.dex */
public enum a {
    NOT_FOUND_VIEWOPTION(-1, "ViewOption is null"),
    NOT_FOUND_CONTEXT(-2, "Context is null"),
    NOT_FOUND_LAYOUTNAME(-3, "layout xml name is null"),
    CAMPAIGNEX_IS_NULL(-4, "Campaign size only one"),
    VIEW_CREATE_ERROR(-5, "view create error"),
    NOT_FOUND_ROOTVIEW(-6, "rootview is null");


    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7518g;
    private String h;

    a(int i2, String str) {
        this.f7518g = i2;
        this.h = str;
    }

    public final int a() {
        return this.f7518g;
    }

    public final String b() {
        return this.h;
    }
}
