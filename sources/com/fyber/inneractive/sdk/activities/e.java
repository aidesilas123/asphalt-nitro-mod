package com.fyber.inneractive.sdk.activities;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class e implements View.OnClickListener {
    public final /* synthetic */ InneractiveInternalBrowserActivity a;

    public e(InneractiveInternalBrowserActivity inneractiveInternalBrowserActivity) {
        this.a = inneractiveInternalBrowserActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.a.f1906e.canGoBack()) {
            this.a.f1906e.goBack();
        }
    }
}
