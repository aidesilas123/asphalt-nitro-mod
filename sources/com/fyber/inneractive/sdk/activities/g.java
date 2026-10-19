package com.fyber.inneractive.sdk.activities;

import android.view.View;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class g implements View.OnClickListener {
    public final /* synthetic */ InneractiveInternalBrowserActivity a;

    public g(InneractiveInternalBrowserActivity inneractiveInternalBrowserActivity) {
        this.a = inneractiveInternalBrowserActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.f1906e.reload();
        int i = IAlog.a;
        IAlog.a(1, null, "%s %s", "AD_INTERNAL_BROWSER_REFRESH", this.a.f1906e.getUrl());
    }
}
