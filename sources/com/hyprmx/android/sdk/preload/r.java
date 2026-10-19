package com.hyprmx.android.sdk.preload;

import android.content.Context;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl", f = "DiskLruCacheHelperImpl.kt", i = {0, 0, 0, 0, 1}, l = {280, 116}, m = "getFilePathDiskCache", n = {"this", "key", "context", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0"})
public final class r extends ContinuationImpl {
    public Object a;
    public String b;
    public Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Mutex f4661d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4662e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ q f4663f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4664g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(q qVar, Continuation<? super r> continuation) {
        super(continuation);
        this.f4663f = qVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f4662e = obj;
        this.f4664g |= Integer.MIN_VALUE;
        return this.f4663f.a((Context) null, (String) null, this);
    }
}
