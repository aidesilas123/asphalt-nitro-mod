package com.hyprmx.android.sdk.utility;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements DialogInterface.OnClickListener {
    public DialogInterface.OnClickListener a;

    public k(DialogInterface.OnClickListener onClickListener) {
        this.a = onClickListener;
    }

    public final void a(AlertDialog alertDialog) {
        alertDialog.getWindow().getDecorView().getViewTreeObserver().addOnWindowAttachListener(new j(this));
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DialogInterface.OnClickListener onClickListener = this.a;
        if (onClickListener != null) {
            onClickListener.onClick(dialogInterface, i);
        }
    }
}
