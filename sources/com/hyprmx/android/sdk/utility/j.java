package com.hyprmx.android.sdk.utility;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements ViewTreeObserver.OnWindowAttachListener {
    public final /* synthetic */ k a;

    public j(k kVar) {
        this.a = kVar;
    }

    @Override // android.view.ViewTreeObserver.OnWindowAttachListener
    public final void onWindowAttached() {
    }

    @Override // android.view.ViewTreeObserver.OnWindowAttachListener
    public final void onWindowDetached() {
        this.a.a = null;
    }
}
