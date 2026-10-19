package com.tapjoy.internal;

import android.content.Context;
import android.webkit.WebView;
import com.tapjoy.TJEventOptimizer;

/* JADX INFO: loaded from: classes4.dex */
public final class u8 extends com.tapjoy.t {
    public final /* synthetic */ TJEventOptimizer a;

    public u8(TJEventOptimizer tJEventOptimizer) {
        this.a = tJEventOptimizer;
    }

    @Override // com.tapjoy.t
    public final Context a() {
        return this.a.c;
    }

    @Override // com.tapjoy.t
    public final WebView c() {
        return this.a;
    }
}
