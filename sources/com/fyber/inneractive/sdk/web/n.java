package com.fyber.inneractive.sdk.web;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class n implements View.OnKeyListener {
    public final /* synthetic */ i a;

    public n(i iVar) {
        this.a = iVar;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i != 4 || !this.a.o()) {
            return false;
        }
        this.a.r();
        return true;
    }
}
