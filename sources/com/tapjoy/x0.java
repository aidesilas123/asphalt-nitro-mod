package com.tapjoy;

import android.content.Context;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public final class x0 extends t {
    public final /* synthetic */ TJOfferwallDiscoverView a;

    public x0(TJOfferwallDiscoverView tJOfferwallDiscoverView) {
        this.a = tJOfferwallDiscoverView;
    }

    @Override // com.tapjoy.t
    public final Context a() {
        return this.a.a.getContext();
    }

    @Override // com.tapjoy.t
    public final WebView c() {
        return this.a.a;
    }
}
