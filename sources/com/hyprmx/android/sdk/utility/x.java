package com.hyprmx.android.sdk.utility;

import android.graphics.Bitmap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.ImageCacheManager$downloadAndCacheBitmap$2", f = "ImageCacheManager.kt", i = {1}, l = {92, 93}, m = "invokeSuspend", n = {"bitmap"}, s = {"L$0"})
public final class x extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super m0<? extends Bitmap>>, Object> {
    public Bitmap a;
    public int b;
    public final /* synthetic */ y c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4737d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(y yVar, String str, Continuation<? super x> continuation) {
        super(2, continuation);
        this.c = yVar;
        this.f4737d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new x(this.c, this.f4737d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super m0<? extends Bitmap>> continuation) {
        return ((x) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r6.b
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            android.graphics.Bitmap r0 = r6.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6f
        L15:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1d:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L21:
            kotlin.ResultKt.throwOnFailure(r7)
            com.hyprmx.android.sdk.utility.y r7 = r6.c
            java.util.HashSet r7 = r7.f4739e
            java.lang.String r1 = r6.f4737d
            r7.add(r1)
            com.hyprmx.android.sdk.utility.y r7 = r6.c
            java.lang.String r1 = r6.f4737d
            r6.b = r3
            r7.getClass()
            kotlinx.coroutines.r r3 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.utility.z r5 = new com.hyprmx.android.sdk.utility.z
            r5.<init>(r7, r1, r4)
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r3, r5, r6)
            if (r7 != r0) goto L46
            return r0
        L46:
            android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7
            if (r7 == 0) goto L6e
            com.hyprmx.android.sdk.utility.y r1 = r6.c
            java.lang.String r3 = r6.f4737d
            r6.a = r7
            r6.b = r2
            r1.getClass()
            kotlinx.coroutines.r r2 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.utility.e0 r5 = new com.hyprmx.android.sdk.utility.e0
            r5.<init>(r7, r1, r3, r4)
            java.lang.Object r1 = kotlinx.coroutines.BuildersKt.withContext(r2, r5, r6)
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r1 != r2) goto L69
            goto L6b
        L69:
            kotlin.v r1 = kotlin.v.a
        L6b:
            if (r1 != r0) goto L6e
            return r0
        L6e:
            r0 = r7
        L6f:
            com.hyprmx.android.sdk.utility.y r7 = r6.c
            java.util.HashSet r7 = r7.f4739e
            java.lang.String r1 = r6.f4737d
            r7.remove(r1)
            if (r0 == 0) goto L80
            com.hyprmx.android.sdk.utility.m0$b r7 = new com.hyprmx.android.sdk.utility.m0$b
            r7.<init>(r0)
            goto L88
        L80:
            com.hyprmx.android.sdk.utility.m0$a r7 = new com.hyprmx.android.sdk.utility.m0$a
            r0 = 0
            java.lang.String r1 = "Failed to download and cache image"
            r7.<init>(r1, r0, r4)
        L88:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.utility.x.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
