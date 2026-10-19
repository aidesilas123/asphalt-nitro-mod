package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: ViewOffsetHelper.java */
/* JADX INFO: loaded from: classes3.dex */
class a {
    private final View a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3144f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3145g = true;

    public a(View view) {
        this.a = view;
    }

    void a() {
        View view = this.a;
        ViewCompat.offsetTopAndBottom(view, this.f3142d - (view.getTop() - this.b));
        View view2 = this.a;
        ViewCompat.offsetLeftAndRight(view2, this.f3143e - (view2.getLeft() - this.c));
    }

    public int b() {
        return this.f3142d;
    }

    void c() {
        this.b = this.a.getTop();
        this.c = this.a.getLeft();
    }

    public boolean d(int i) {
        if (!this.f3145g || this.f3143e == i) {
            return false;
        }
        this.f3143e = i;
        a();
        return true;
    }

    public boolean e(int i) {
        if (!this.f3144f || this.f3142d == i) {
            return false;
        }
        this.f3142d = i;
        a();
        return true;
    }
}
