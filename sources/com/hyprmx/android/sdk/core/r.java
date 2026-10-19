package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.core.HyprMXIf;
import com.hyprmx.android.sdk.core.j;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXDelegate$initializeHyprController$2", f = "HyprMX.kt", i = {0}, l = {148}, m = "invokeSuspend", n = {"it"}, s = {"L$1"})
public final class r extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public q a;
    public j b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q f4526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f4527e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f4528f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f4529g;
    public final /* synthetic */ ConsentStatus h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(q qVar, Context context, String str, String str2, ConsentStatus consentStatus, Continuation<? super r> continuation) {
        super(2, continuation);
        this.f4526d = qVar;
        this.f4527e = context;
        this.f4528f = str;
        this.f4529g = str2;
        this.h = consentStatus;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new r(this.f4526d, this.f4527e, this.f4528f, this.f4529g, this.h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((r) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        q qVar;
        j jVar;
        HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            q qVar2 = this.f4526d;
            p pVar = qVar2.a;
            Context applicationContext = this.f4527e.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            qVar2.f4521g = pVar.a(applicationContext, this.f4528f, this.f4529g, this.h);
            qVar = this.f4526d;
            j jVar2 = qVar.f4521g;
            if (jVar2 == null) {
                return null;
            }
            this.a = qVar;
            this.b = jVar2;
            this.c = 1;
            Object objA = jVar2.a((String) null, this);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            jVar = jVar2;
            obj = objA;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jVar = this.b;
            qVar = this.a;
            ResultKt.throwOnFailure(obj);
        }
        j.a aVar = (j.a) obj;
        if (aVar instanceof j.a.c) {
            qVar.f4521g = ((j.a.c) aVar).a;
            qVar.i = false;
            hyprMXInitializationListener = qVar.h;
            if (hyprMXInitializationListener == null) {
                return null;
            }
        } else {
            if (!(aVar instanceof j.a.b)) {
                if (!(aVar instanceof j.a.C0283a)) {
                    throw new NoWhenBranchMatchedException();
                }
                qVar.f4521g = null;
                qVar.i = true;
                BuildersKt__Builders_commonKt.launch$default(qVar.f4519e, null, null, new s(qVar, null), 3, null);
                HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener2 = qVar.h;
                if (hyprMXInitializationListener2 == null) {
                    return null;
                }
                hyprMXInitializationListener2.initializationFailed();
                return kotlin.v.a;
            }
            qVar.f4521g = jVar;
            qVar.i = false;
            hyprMXInitializationListener = qVar.h;
            if (hyprMXInitializationListener == null) {
                return null;
            }
        }
        hyprMXInitializationListener.initializationComplete();
        return kotlin.v.a;
    }
}
