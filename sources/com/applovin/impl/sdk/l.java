package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class l implements AppLovinBroadcastManager.Receiver {
    private static AlertDialog aAu;
    private static final AtomicBoolean aAv = new AtomicBoolean();
    private final m aAt;
    private com.applovin.impl.sdk.utils.r ayU;

    public interface a {
        void Be();

        void Bf();
    }

    l(m mVar, n nVar) {
        this.aAt = mVar;
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, DialogInterface dialogInterface, int i) {
        aVar.Be();
        dialogInterface.dismiss();
        aAv.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, n nVar, DialogInterface dialogInterface, int i) {
        aVar.Bf();
        dialogInterface.dismiss();
        aAv.set(false);
        a(((Long) nVar.a(com.applovin.impl.sdk.c.b.aLe)).longValue(), nVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final n nVar, final a aVar) {
        if (this.aAt.Bg()) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("ConsentAlertManager", "Consent dialog already showing, skip showing of consent alert");
                return;
            }
            return;
        }
        Activity activityAz = nVar.BM().Az();
        if (activityAz != null && com.applovin.impl.sdk.utils.i.aa(n.getApplicationContext())) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.x0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(nVar, aVar);
                }
            });
            return;
        }
        if (activityAz == null) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("ConsentAlertManager", "No parent Activity found - rescheduling consent alert...");
            }
        } else {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().i("ConsentAlertManager", "No internet available - rescheduling consent alert...");
            }
        }
        aAv.set(false);
        a(((Long) nVar.a(com.applovin.impl.sdk.c.b.aLf)).longValue(), nVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final n nVar, final a aVar) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(nVar.BM().Az()).setTitle((CharSequence) nVar.a(com.applovin.impl.sdk.c.b.aLg)).setMessage((CharSequence) nVar.a(com.applovin.impl.sdk.c.b.aLh)).setCancelable(false).setPositiveButton((CharSequence) nVar.a(com.applovin.impl.sdk.c.b.aLi), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.y0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                l.a(aVar, dialogInterface, i);
            }
        }).setNegativeButton((CharSequence) nVar.a(com.applovin.impl.sdk.c.b.aLj), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.a1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.a.a(aVar, nVar, dialogInterface, i);
            }
        }).create();
        aAu = alertDialogCreate;
        alertDialogCreate.show();
    }

    public void a(long j, final n nVar, final a aVar) {
        if (j <= 0) {
            return;
        }
        AlertDialog alertDialog = aAu;
        if (alertDialog == null || !alertDialog.isShowing()) {
            if (aAv.getAndSet(true)) {
                if (j >= this.ayU.AH()) {
                    nVar.BN();
                    if (x.Fn()) {
                        nVar.BN().h("ConsentAlertManager", "Skip scheduling consent alert - one scheduled already with remaining time of " + this.ayU.AH() + " milliseconds");
                        return;
                    }
                    return;
                }
                nVar.BN();
                if (x.Fn()) {
                    nVar.BN().f("ConsentAlertManager", "Scheduling consent alert earlier (" + j + "ms) than remaining scheduled time (" + this.ayU.AH() + "ms)");
                }
                this.ayU.tT();
            }
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().f("ConsentAlertManager", "Scheduling consent alert for " + j + " milliseconds");
            }
            this.ayU = com.applovin.impl.sdk.utils.r.b(j, nVar, new Runnable() { // from class: com.applovin.impl.sdk.z0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(nVar, aVar);
                }
            });
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, @Nullable Map<String, Object> map) {
        if (this.ayU == null) {
            return;
        }
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.ayU.pause();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.ayU.resume();
        }
    }
}
