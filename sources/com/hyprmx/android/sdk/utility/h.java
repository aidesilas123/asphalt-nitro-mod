package com.hyprmx.android.sdk.utility;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.appcompat.app.AppCompatActivity;
import com.hyprmx.android.R;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements h0 {
    public AlertDialog a;

    public static final void a(h this$0, Function0 onClickAction, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(onClickAction, "$onClickAction");
        AlertDialog alertDialog = this$0.a;
        if (alertDialog != null && alertDialog.isShowing()) {
            dialogInterface.dismiss();
        }
        dialogInterface.dismiss();
        onClickAction.invoke();
    }

    @Override // com.hyprmx.android.sdk.utility.h0
    public final void a(AppCompatActivity context, final com.hyprmx.android.sdk.activity.x onClickAction) {
        String string;
        String str;
        Intrinsics.checkNotNullParameter(context, "activity");
        Intrinsics.checkNotNullParameter(onClickAction, "onClickAction");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            string = context.getString(R.string.hyprmx_ad_display_error);
            str = "{\n      context.getStrin…x_ad_display_error)\n    }";
        } else {
            string = context.getString(R.string.hyprmx_no_internet_error_message);
            str = "{\n      context.getStrin…rnet_error_message)\n    }";
        }
        Intrinsics.checkNotNullExpressionValue(string, str);
        k kVar = new k(new DialogInterface.OnClickListener() { // from class: com.hyprmx.android.sdk.utility.f1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                h.a(this.a, onClickAction, dialogInterface, i);
            }
        });
        Intrinsics.checkNotNullExpressionValue(kVar, "wrap { dialog, _ ->\n    …    onClickAction()\n    }");
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setMessage(string).setNegativeButton(context.getString(android.R.string.ok), kVar).setCancelable(false).create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (!context.isFinishing()) {
            alertDialogCreate.show();
        }
        kVar.a(alertDialogCreate);
        this.a = alertDialogCreate;
    }

    @Override // com.hyprmx.android.sdk.utility.h0
    public final void p() {
        AlertDialog alertDialog = this.a;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // com.hyprmx.android.sdk.utility.h0
    public final boolean q() {
        AlertDialog alertDialog = this.a;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }
}
