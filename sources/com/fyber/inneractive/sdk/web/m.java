package com.fyber.inneractive.sdk.web;

import android.window.OnBackInvokedCallback;

/* JADX INFO: loaded from: classes2.dex */
public class m implements OnBackInvokedCallback {
    public final /* synthetic */ i a;

    public m(i iVar) {
        this.a = iVar;
    }

    @Override // android.window.OnBackInvokedCallback
    public void onBackInvoked() {
        i iVar = this.a;
        if (iVar.o()) {
            iVar.r();
        }
    }
}
