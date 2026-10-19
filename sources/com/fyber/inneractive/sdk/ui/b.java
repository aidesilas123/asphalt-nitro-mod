package com.fyber.inneractive.sdk.ui;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class b implements View.OnLayoutChangeListener {
    public final /* synthetic */ FyberAdIdentifier a;

    public b(FyberAdIdentifier fyberAdIdentifier) {
        this.a = fyberAdIdentifier;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.a.f2730f = r1.b.getWidth() + this.a.b.getWidth();
        if (FyberAdIdentifier.a(this.a)) {
            this.a.f2730f *= -1.0f;
        }
        FyberAdIdentifier fyberAdIdentifier = this.a;
        fyberAdIdentifier.b.setTranslationX(fyberAdIdentifier.f2730f);
        FyberAdIdentifier fyberAdIdentifier2 = this.a;
        if (fyberAdIdentifier2.f2728d) {
            fyberAdIdentifier2.a();
        }
    }
}
