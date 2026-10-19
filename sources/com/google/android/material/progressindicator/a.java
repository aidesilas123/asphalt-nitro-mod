package com.google.android.material.progressindicator;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Px;

/* JADX INFO: compiled from: BaseProgressIndicatorSpec.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    @Px
    public int a;

    @Px
    public int b;

    @NonNull
    public int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ColorInt
    public int f3341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3343f;

    public boolean a() {
        return this.f3343f != 0;
    }

    public boolean b() {
        return this.f3342e != 0;
    }

    abstract void c();
}
