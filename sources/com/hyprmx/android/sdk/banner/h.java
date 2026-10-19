package com.hyprmx.android.sdk.banner;

import android.graphics.Rect;
import android.view.View;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements i, CoroutineScope {
    public final /* synthetic */ CoroutineScope a;
    public Job b;

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.ViewVisibilityTracker$startTracking$1", f = "ViewVisibilityTracker.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ View b;
        public final /* synthetic */ h c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f4492d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ j f4493e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ long f4494f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view, h hVar, int i, j jVar, long j, Continuation<? super a> continuation) {
            super(2, continuation);
            this.b = view;
            this.c = hVar;
            this.f4492d = i;
            this.f4493e = jVar;
            this.f4494f = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new a(this.b, this.c, this.f4492d, this.f4493e, this.f4494f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            long j;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i != 0 && i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            do {
                Rect rect = new Rect();
                this.b.getGlobalVisibleRect(rect);
                int i2 = rect.right - rect.left;
                int i3 = rect.bottom - rect.top;
                int measuredHeight = this.b.getMeasuredHeight();
                int measuredWidth = this.b.getMeasuredWidth();
                boolean z = i3 == measuredHeight;
                boolean z2 = 1 <= i3 && i3 < measuredHeight;
                boolean z3 = i3 < measuredHeight && i3 <= 0;
                int[] iArr = new int[2];
                this.b.getLocationOnScreen(iArr);
                this.f4493e.onVisibleEvent(this.b.isShown(), i3, i2, measuredHeight, measuredWidth, z, z2, z3, iArr[0], iArr[1], this.b.getAlpha(), h.a(this.c, this.b, this.f4492d));
                j = this.f4494f;
                this.a = 1;
            } while (DelayKt.delay(j, this) != coroutine_suspended);
            return coroutine_suspended;
        }
    }

    public h(CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = scope;
    }

    public static final boolean a(h hVar, View view, int i) {
        hVar.getClass();
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (((int) (view2.getAlpha() * 100)) < i) {
                return false;
            }
            parent = view2.getParent();
        }
        return true;
    }

    @Override // com.hyprmx.android.sdk.banner.i
    public final void a() {
        Job job = this.b;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            this.b = null;
        }
    }

    @Override // com.hyprmx.android.sdk.banner.i
    public final void a(View view, long j, int i, j vcl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(vcl, "vcl");
        if (this.b != null) {
            HyprMXLog.d("Tracking job already started on view " + view.hashCode());
        } else {
            HyprMXLog.d("tracking starting on view " + view.hashCode());
            this.b = BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(view, this, i, vcl, j, null), 3, null);
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.a.getCoroutineContext();
    }
}
