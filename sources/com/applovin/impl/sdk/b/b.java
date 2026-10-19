package com.applovin.impl.sdk.b;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private final Activity aIZ;
    private AlertDialog aJa;
    private a aJb;
    private final n sdk;

    public interface a {
        void sR();

        void sS();
    }

    public b(Activity activity, n nVar) {
        this.sdk = nVar;
        this.aIZ = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void JA() {
        AlertDialog alertDialog = this.aJa;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jz() {
        this.aJa = new AlertDialog.Builder(this.aIZ).setTitle((CharSequence) this.sdk.a(com.applovin.impl.sdk.c.b.aMh)).setMessage((CharSequence) this.sdk.a(com.applovin.impl.sdk.c.b.aMi)).setCancelable(false).setPositiveButton((CharSequence) this.sdk.a(com.applovin.impl.sdk.c.b.aMk), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.a.c(dialogInterface, i);
            }
        }).setNegativeButton((CharSequence) this.sdk.a(com.applovin.impl.sdk.c.b.aMj), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.g
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.a.b(dialogInterface, i);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        this.aJb.sS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.ad.e eVar, final Runnable runnable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.aIZ);
        builder.setTitle(eVar.Hd());
        String strHe = eVar.He();
        if (AppLovinSdkUtils.isValidString(strHe)) {
            builder.setMessage(strHe);
        }
        builder.setPositiveButton(eVar.Hf(), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.k
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.a(runnable, dialogInterface, i);
            }
        });
        builder.setCancelable(false);
        this.aJa = builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(DialogInterface dialogInterface, int i) {
        this.aJb.sR();
    }

    public void Jw() {
        this.aIZ.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.f
            @Override // java.lang.Runnable
            public final void run() {
                this.a.JA();
            }
        });
    }

    public void Jx() {
        this.aIZ.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.i
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Jz();
            }
        });
    }

    public boolean Jy() {
        AlertDialog alertDialog = this.aJa;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }

    public void a(final com.applovin.impl.sdk.ad.e eVar, @Nullable final Runnable runnable) {
        this.aIZ.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.j
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(eVar, runnable);
            }
        });
    }

    public void a(a aVar) {
        this.aJb = aVar;
    }
}
