package com.hyprmx.android.databinding;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes.dex */
public final class a implements ViewBinding {
    public final ConstraintLayout a;
    public final b b;
    public final c c;

    public a(ConstraintLayout constraintLayout, b bVar, c cVar) {
        this.a = constraintLayout;
        this.b = bVar;
        this.c = cVar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.a;
    }
}
