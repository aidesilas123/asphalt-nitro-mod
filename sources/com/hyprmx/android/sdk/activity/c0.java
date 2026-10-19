package com.hyprmx.android.sdk.activity;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$useCustomClose$2", f = "HyprMXBaseViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class c0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ HyprMXBaseViewController b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(HyprMXBaseViewController hyprMXBaseViewController, Continuation continuation, boolean z) {
        super(2, continuation);
        this.a = z;
        this.b = hyprMXBaseViewController;
    }

    public static final void a(HyprMXBaseViewController hyprMXBaseViewController, View view) {
        hyprMXBaseViewController.n.K();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new c0(this.b, continuation, this.a);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((c0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (this.a) {
            RelativeLayout relativeLayoutU = this.b.U();
            int i = R.id.hyprmx_custom_close;
            if (relativeLayoutU.findViewById(i) != null) {
                HyprMXLog.d("Custom close already enabled.");
                return kotlin.v.a;
            }
            View view = new View(this.b.a);
            view.setId(i);
            final HyprMXBaseViewController hyprMXBaseViewController = this.b;
            view.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.u0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    c0.a(hyprMXBaseViewController, view2);
                }
            });
            Context baseContext = this.b.a.getBaseContext();
            Intrinsics.checkNotNullExpressionValue(baseContext, "activity.baseContext");
            int iA = com.hyprmx.android.sdk.utility.w.a(1, baseContext);
            Context baseContext2 = this.b.a.getBaseContext();
            Intrinsics.checkNotNullExpressionValue(baseContext2, "activity.baseContext");
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, com.hyprmx.android.sdk.utility.w.a(1, baseContext2));
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(0, com.hyprmx.android.sdk.utility.w.a(15, this.b.a), com.hyprmx.android.sdk.utility.w.a(15, this.b.a), 0);
            this.b.U().addView(view, layoutParams);
            com.hyprmx.android.sdk.om.g gVar = this.b.f4441f;
            if (gVar != null) {
                gVar.a(view, com.iab.omid.library.jungroup.adsession.g.CLOSE_AD, "1x1 Close Ad Tracking Pixel");
            }
        } else {
            View viewFindViewById = this.b.U().findViewById(R.id.hyprmx_custom_close);
            if (viewFindViewById != null) {
                HyprMXBaseViewController hyprMXBaseViewController2 = this.b;
                hyprMXBaseViewController2.U().removeView(viewFindViewById);
                com.hyprmx.android.sdk.om.g gVar2 = hyprMXBaseViewController2.f4441f;
                if (gVar2 != null) {
                    gVar2.a(viewFindViewById);
                }
            }
        }
        return kotlin.v.a;
    }
}
