package com.hyprmx.android.sdk.activity;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
public final class x extends Lambda implements Function0<kotlin.v> {
    public final /* synthetic */ HyprMXBaseViewController a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(HyprMXVastViewController hyprMXVastViewController) {
        super(0);
        this.a = hyprMXVastViewController;
    }

    @Override // kotlin.jvm.functions.Function0
    public final kotlin.v invoke() {
        this.a.n.o();
        return kotlin.v.a;
    }
}
