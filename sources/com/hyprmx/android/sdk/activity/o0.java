package com.hyprmx.android.sdk.activity;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController", f = "HyprMXVastViewController.kt", i = {0, 0, 1, 1, 1, 2, 2, 3}, l = {312, 321, 322, 328}, m = "setupVideoView", n = {"this", "mediaAssetURL", "this", "mediaAssetURL", "errorMsg", "this", "errorMsg", "this"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0"})
public final class o0 extends ContinuationImpl {
    public HyprMXVastViewController a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ Object f4459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ HyprMXVastViewController f4460e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4461f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(HyprMXVastViewController hyprMXVastViewController, Continuation<? super o0> continuation) {
        super(continuation);
        this.f4460e = hyprMXVastViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4459d = obj;
        this.f4461f |= Integer.MIN_VALUE;
        return HyprMXVastViewController.a(this.f4460e, this);
    }
}
