package com.hyprmx.android.sdk.activity;

import android.R;
import android.app.AlertDialog;
import android.content.DialogInterface;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$showErrorDialog$2", f = "HyprMXBaseViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class v extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public final /* synthetic */ HyprMXBaseViewController a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(HyprMXBaseViewController hyprMXBaseViewController, String str, Continuation<? super v> continuation) {
        super(2, continuation);
        this.a = hyprMXBaseViewController;
        this.b = str;
    }

    public static final void a(HyprMXBaseViewController hyprMXBaseViewController, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        hyprMXBaseViewController.n.o();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new v(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((v) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        final HyprMXBaseViewController hyprMXBaseViewController = this.a;
        com.hyprmx.android.sdk.utility.k kVar = new com.hyprmx.android.sdk.utility.k(new DialogInterface.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.v0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                v.a(hyprMXBaseViewController, dialogInterface, i);
            }
        });
        Intrinsics.checkNotNullExpressionValue(kVar, "wrap { dialog, _ ->\n    …orDialogOKPressed()\n    }");
        HyprMXBaseViewController hyprMXBaseViewController2 = this.a;
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this.a.a).setMessage(this.b).setNegativeButton(this.a.a.getString(R.string.ok), kVar).setCancelable(false).create();
        HyprMXBaseViewController hyprMXBaseViewController3 = this.a;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (!hyprMXBaseViewController3.a.isFinishing()) {
            alertDialogCreate.show();
        }
        kVar.a(alertDialogCreate);
        hyprMXBaseViewController2.getClass();
        return kotlin.v.a;
    }
}
