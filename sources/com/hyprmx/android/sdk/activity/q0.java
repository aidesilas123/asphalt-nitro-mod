package com.hyprmx.android.sdk.activity;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$startVideoProgressJob$1", f = "HyprMXVastViewController.kt", i = {}, l = {792, 793}, m = "invokeSuspend", n = {}, s = {})
public final class q0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ HyprMXVastViewController b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q0(HyprMXVastViewController hyprMXVastViewController, Continuation<? super q0> continuation) {
        super(2, continuation);
        this.b = hyprMXVastViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new q0(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((q0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004a -> B:11:0x0020). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r10.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 == r3) goto L17
            if (r1 != r2) goto Lf
            goto L1c
        Lf:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L17:
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r10
            goto L42
        L1c:
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r10
        L20:
            com.hyprmx.android.sdk.activity.HyprMXVastViewController r1 = r11.b
            com.hyprmx.android.sdk.tracking.c r4 = r1.C
            android.widget.VideoView r1 = r1.g0()
            int r1 = r1.getDuration()
            long r5 = (long) r1
            com.hyprmx.android.sdk.activity.HyprMXVastViewController r1 = r11.b
            android.widget.VideoView r1 = r1.g0()
            int r1 = r1.getCurrentPosition()
            long r7 = (long) r1
            r11.a = r3
            r9 = r11
            java.lang.Object r1 = r4.a(r5, r7, r9)
            if (r1 != r0) goto L42
            return r0
        L42:
            r11.a = r2
            r4 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.delay(r4, r11)
            if (r1 != r0) goto L20
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.q0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
