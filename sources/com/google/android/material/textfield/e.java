package com.google.android.material.textfield;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: compiled from: EndIconDelegate.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class e {
    TextInputLayout a;
    Context b;
    CheckableImageButton c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @DrawableRes
    final int f3436d;

    e(@NonNull TextInputLayout textInputLayout, @DrawableRes int i) {
        this.a = textInputLayout;
        this.b = textInputLayout.getContext();
        this.c = textInputLayout.getEndIconView();
        this.f3436d = i;
    }

    abstract void a();

    boolean b(int i) {
        return true;
    }

    void c(boolean z) {
    }

    boolean d() {
        return false;
    }
}
