package com.hyprmx.android.databinding;

import android.view.View;
import android.widget.ImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes.dex */
public final class b implements ViewBinding {
    public final ConstraintLayout a;
    public final ImageButton b;
    public final ImageButton c;

    public b(ConstraintLayout constraintLayout, ImageButton imageButton, ImageButton imageButton2) {
        this.a = constraintLayout;
        this.b = imageButton;
        this.c = imageButton2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.a;
    }
}
