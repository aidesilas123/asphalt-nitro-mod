package com.tapjoy.internal;

import android.content.DialogInterface;
import com.tapjoy.TJActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class b6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ TJActivity a;

    public b6(TJActivity tJActivity) {
        this.a = tJActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.b();
        dialogInterface.cancel();
    }
}
