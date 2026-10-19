package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.hyprmx.android.sdk.core.j;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.io.File;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements i0 {
    public final Context a;
    public final CoroutineDispatcher b;
    public String c;

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper$deleteCoreJSFile$2", f = "StorageHelper.kt", i = {}, l = {127}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public int a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return b0.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean zDelete;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                b0 b0Var = b0.this;
                this.a = 1;
                obj = BuildersKt.withContext(b0Var.b, new d0(b0Var, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            try {
                zDelete = new File((String) obj).delete();
            } catch (SecurityException e2) {
                HyprMXLog.e("Failed to delete core JS file", e2);
                zDelete = false;
            }
            return Boxing.boxBoolean(zDelete);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper", f = "StorageHelper.kt", i = {}, l = {86, 86}, m = "isCoreJSFileExist", n = {}, s = {})
    public static final class b extends ContinuationImpl {
        public b0 a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4495d;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4495d |= Integer.MIN_VALUE;
            return b0.this.b(this);
        }
    }

    public /* synthetic */ b0(Context context) {
        this(context, Dispatchers.getIO());
    }

    public b0(Context applicationContext, CoroutineDispatcher ioDispatcher) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        this.a = applicationContext;
        this.b = ioDispatcher;
    }

    @Override // com.hyprmx.android.sdk.core.i0
    public final Object a(j.d dVar) {
        return BuildersKt.withContext(this.b, new e0(this, null), dVar);
    }

    @Override // com.hyprmx.android.sdk.core.i0
    public final Object a(String str, j.d dVar) {
        return BuildersKt.withContext(this.b, new g0(this, str, null), dVar);
    }

    @Override // com.hyprmx.android.sdk.core.i0
    public final Object a(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(this.b, new a(null), continuation);
    }

    @Override // com.hyprmx.android.sdk.core.i0
    public final Object b(j.d dVar) {
        Object objWithContext = BuildersKt.withContext(this.b, new c0(this, null), dVar);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.hyprmx.android.sdk.core.b0.b
            if (r0 == 0) goto L13
            r0 = r7
            com.hyprmx.android.sdk.core.b0$b r0 = (com.hyprmx.android.sdk.core.b0.b) r0
            int r1 = r0.f4495d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4495d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.b0$b r0 = new com.hyprmx.android.sdk.core.b0$b
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4495d
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L72
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            com.hyprmx.android.sdk.core.b0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L51
        L3b:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r6
            r0.f4495d = r5
            kotlinx.coroutines.r r7 = r6.b
            com.hyprmx.android.sdk.core.d0 r2 = new com.hyprmx.android.sdk.core.d0
            r2.<init>(r6, r4)
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r2, r0)
            if (r7 != r1) goto L50
            return r1
        L50:
            r2 = r6
        L51:
            java.lang.String r7 = (java.lang.String) r7
            r0.a = r4
            r0.f4495d = r3
            r2.getClass()
            java.io.File r0 = new java.io.File
            r0.<init>(r7)
            boolean r7 = r0.exists()
            if (r7 == 0) goto L6a
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            goto L6f
        L6a:
            r7 = 0
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r7)
        L6f:
            if (r7 != r1) goto L72
            return r1
        L72:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.b0.b(kotlin.coroutines.d):java.lang.Object");
    }
}
