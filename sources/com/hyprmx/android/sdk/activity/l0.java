package com.hyprmx.android.sdk.activity;

import android.view.ViewTreeObserver;
import com.hyprmx.android.sdk.activity.HyprMXRequiredInformationActivity;

/* JADX INFO: loaded from: classes2.dex */
public final class l0 implements ViewTreeObserver.OnWindowAttachListener {
    public final /* synthetic */ HyprMXRequiredInformationActivity.b a;

    public l0(HyprMXRequiredInformationActivity.b bVar) {
        this.a = bVar;
    }

    @Override // android.view.ViewTreeObserver.OnWindowAttachListener
    public final void onWindowAttached() {
    }

    @Override // android.view.ViewTreeObserver.OnWindowAttachListener
    public final void onWindowDetached() {
        this.a.a = null;
    }
}
