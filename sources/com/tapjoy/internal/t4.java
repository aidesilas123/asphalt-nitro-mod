package com.tapjoy.internal;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes4.dex */
public final class t4 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ g2 a;
    public final /* synthetic */ i6 b;

    public t4(i6 i6Var, g2 g2Var) {
        this.b = i6Var;
        this.a = g2Var;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.a.a(this.b.f7915f);
    }
}
