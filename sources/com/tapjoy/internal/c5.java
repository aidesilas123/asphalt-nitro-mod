package com.tapjoy.internal;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class c5 extends ViewOutlineProvider {
    public final /* synthetic */ float a;

    public c5(float f2) {
        this.a = f2;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        int width = view.getWidth();
        float height = view.getHeight();
        float f2 = this.a;
        outline.setRoundRect(0, 0, width, (int) (height + f2), f2);
    }
}
