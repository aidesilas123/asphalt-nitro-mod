package com.tapjoy.internal;

import com.tapjoy.TJCacheListener;

/* JADX INFO: loaded from: classes4.dex */
public final class n6 implements TJCacheListener {
    public final /* synthetic */ TJCacheListener a;

    public n6(y3 y3Var) {
        this.a = y3Var;
    }

    @Override // com.tapjoy.TJCacheListener
    public final void onCachingComplete(int i) {
        this.a.onCachingComplete(i);
    }
}
