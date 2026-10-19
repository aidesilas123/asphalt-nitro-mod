package com.hyprmx.android.sdk.jsAlertDialog;

import android.app.AlertDialog;
import android.content.DialogInterface;
import androidx.appcompat.app.AppCompatActivity;
import com.hyprmx.android.sdk.utility.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements c {
    public b a;
    public AlertDialog b;

    public static final void a(f this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        b bVar = null;
        this$0.b = null;
        b bVar2 = this$0.a;
        if (bVar2 != null) {
            bVar = bVar2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        bVar.h();
    }

    public static final void a(f this$0, String buttonName, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(buttonName, "$buttonName");
        dialogInterface.dismiss();
        b bVar = this$0.a;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
            bVar = null;
        }
        bVar.a(buttonName);
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.c
    public final void a() {
        AlertDialog alertDialog = this.b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.c
    public final void a(AppCompatActivity context, String str, String message, List buttonTexts) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(buttonTexts, "buttonTexts");
        ArrayList arrayList = new ArrayList();
        AlertDialog.Builder message2 = new AlertDialog.Builder(context).setTitle(str).setMessage(message);
        int i = 0;
        this.b = message2.setCancelable(false).create();
        for (Object obj : buttonTexts) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            final String str2 = (String) obj;
            if (i < 3) {
                k kVar = new k(new DialogInterface.OnClickListener() { // from class: com.hyprmx.android.sdk.jsAlertDialog.g
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        f.a(this.a, str2, dialogInterface, i3);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(kVar, "wrap { dialog, _ ->\n    …sed(buttonName)\n        }");
                arrayList.add(kVar);
                AlertDialog alertDialog = this.b;
                Intrinsics.checkNotNull(alertDialog);
                alertDialog.setButton((-i) - 1, str2, kVar);
            }
            i = i2;
        }
        AlertDialog alertDialog2 = this.b;
        Intrinsics.checkNotNull(alertDialog2);
        alertDialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.hyprmx.android.sdk.jsAlertDialog.h
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                f.a(this.a, dialogInterface);
            }
        });
        AlertDialog alertDialog3 = this.b;
        Intrinsics.checkNotNull(alertDialog3);
        alertDialog3.show();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((k) it.next()).a(this.b);
        }
        b bVar = this.a;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
            bVar = null;
        }
        bVar.e();
    }

    @Override // com.hyprmx.android.sdk.mvp.a
    public final void setPresenter(b bVar) {
        b bVar2 = bVar;
        Intrinsics.checkNotNullParameter(bVar2, "<set-?>");
        this.a = bVar2;
    }
}
