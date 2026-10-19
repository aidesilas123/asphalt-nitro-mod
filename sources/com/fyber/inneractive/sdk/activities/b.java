package com.fyber.inneractive.sdk.activities;

import android.window.OnBackInvokedCallback;

/* JADX INFO: loaded from: classes2.dex */
public class b implements OnBackInvokedCallback {
    public final /* synthetic */ InneractiveBaseActivity a;

    public b(InneractiveBaseActivity inneractiveBaseActivity) {
        this.a = inneractiveBaseActivity;
    }

    @Override // android.window.OnBackInvokedCallback
    public void onBackInvoked() {
        this.a.onBackPressed();
    }
}
