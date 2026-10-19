package com.tapjoy.internal;

import android.app.Activity;
import android.view.WindowManager;
import com.tapjoy.TJContentActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class h4 extends TJContentActivity.a {
    public final /* synthetic */ g2 a;
    public final /* synthetic */ i6 b;

    public h4(i6 i6Var, g2 g2Var) {
        this.b = i6Var;
        this.a = g2Var;
    }

    @Override // com.tapjoy.TJContentActivity.ContentProducer
    public final void dismiss(Activity activity) {
        d dVar = this.b.h;
        if (dVar != null) {
            dVar.dismiss();
        }
    }

    @Override // com.tapjoy.TJContentActivity.ContentProducer
    public final void show(Activity activity) {
        try {
            this.b.d(activity, this.a);
        } catch (WindowManager.BadTokenException unused) {
            i6 i6Var = this.b;
            this.a.a(i6Var.f7915f, i6Var.c, null);
        }
    }
}
