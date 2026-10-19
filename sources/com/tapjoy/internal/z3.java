package com.tapjoy.internal;

import android.content.DialogInterface;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class z3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ com.tapjoy.y a;

    public z3(com.tapjoy.y yVar) {
        this.a = yVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (TextUtils.isEmpty(this.a.getLastUrl())) {
            com.tapjoy.y yVar = this.a;
            yVar.d(yVar.f8054d);
        } else {
            com.tapjoy.y yVar2 = this.a;
            yVar2.d(yVar2.getLastUrl());
        }
        dialogInterface.cancel();
    }
}
