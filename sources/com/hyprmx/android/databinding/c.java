package com.hyprmx.android.databinding;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ViewBinding {
    public final ConstraintLayout a;
    public final TextView b;
    public final ImageButton c;

    public c(ConstraintLayout constraintLayout, TextView textView, ImageButton imageButton) {
        this.a = constraintLayout;
        this.b = textView;
        this.c = imageButton;
    }

    @Override // androidx.viewbinding.ViewBinding
    public final View getRoot() {
        return this.a;
    }
}
