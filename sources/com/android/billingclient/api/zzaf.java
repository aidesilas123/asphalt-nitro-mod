package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.google.android.gms.internal.play_billing.zzgd;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzaf implements ServiceConnection {
    private final Object a = new Object();
    private boolean b = false;
    private BillingClientStateListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ BillingClientImpl f172d;

    /* synthetic */ zzaf(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, zzae zzaeVar) {
        this.f172d = billingClientImpl;
        this.c = billingClientStateListener;
    }

    private final void c(BillingResult billingResult) {
        synchronized (this.a) {
            BillingClientStateListener billingClientStateListener = this.c;
            if (billingClientStateListener != null) {
                billingClientStateListener.b(billingResult);
            }
        }
    }

    final /* synthetic */ Object a() throws Exception {
        Bundle bundle;
        int i;
        int iZzq;
        synchronized (this.a) {
            if (this.b) {
                return null;
            }
            if (TextUtils.isEmpty(null)) {
                bundle = null;
            } else {
                bundle = new Bundle();
                bundle.putString("accountName", null);
            }
            int i2 = 3;
            try {
                String packageName = this.f172d.f144e.getPackageName();
                int i3 = 20;
                iZzq = 3;
                while (true) {
                    if (i3 < 3) {
                        i3 = 0;
                        break;
                    }
                    if (bundle == null) {
                        try {
                            iZzq = this.f172d.f146g.zzq(i3, packageName, "subs");
                        } catch (Exception e2) {
                            e = e2;
                            i2 = iZzq;
                            com.google.android.gms.internal.play_billing.zzb.zzk("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                            this.f172d.a = 0;
                            this.f172d.f146g = null;
                            i = 42;
                            iZzq = i2;
                        }
                    } else {
                        iZzq = this.f172d.f146g.zzc(i3, packageName, "subs", bundle);
                    }
                    if (iZzq == 0) {
                        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "highestLevelSupportedForSubs: " + i3);
                        break;
                    }
                    i3--;
                }
                boolean z = true;
                this.f172d.j = i3 >= 5;
                this.f172d.i = i3 >= 3;
                if (i3 < 3) {
                    com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "In-app billing API does not support subscription on this device.");
                    i = 9;
                } else {
                    i = 1;
                }
                int i4 = 20;
                while (true) {
                    if (i4 < 3) {
                        break;
                    }
                    iZzq = bundle == null ? this.f172d.f146g.zzq(i4, packageName, "inapp") : this.f172d.f146g.zzc(i4, packageName, "inapp", bundle);
                    if (iZzq == 0) {
                        this.f172d.k = i4;
                        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "mHighestLevelSupportedForInApp: " + this.f172d.k);
                        break;
                    }
                    i4--;
                }
                BillingClientImpl billingClientImpl = this.f172d;
                billingClientImpl.w = billingClientImpl.k >= 20;
                BillingClientImpl billingClientImpl2 = this.f172d;
                billingClientImpl2.v = billingClientImpl2.k >= 19;
                BillingClientImpl billingClientImpl3 = this.f172d;
                billingClientImpl3.u = billingClientImpl3.k >= 18;
                BillingClientImpl billingClientImpl4 = this.f172d;
                billingClientImpl4.t = billingClientImpl4.k >= 17;
                BillingClientImpl billingClientImpl5 = this.f172d;
                billingClientImpl5.s = billingClientImpl5.k >= 16;
                BillingClientImpl billingClientImpl6 = this.f172d;
                billingClientImpl6.r = billingClientImpl6.k >= 15;
                BillingClientImpl billingClientImpl7 = this.f172d;
                billingClientImpl7.q = billingClientImpl7.k >= 14;
                BillingClientImpl billingClientImpl8 = this.f172d;
                billingClientImpl8.p = billingClientImpl8.k >= 12;
                BillingClientImpl billingClientImpl9 = this.f172d;
                billingClientImpl9.o = billingClientImpl9.k >= 10;
                BillingClientImpl billingClientImpl10 = this.f172d;
                billingClientImpl10.n = billingClientImpl10.k >= 9;
                BillingClientImpl billingClientImpl11 = this.f172d;
                billingClientImpl11.m = billingClientImpl11.k >= 8;
                BillingClientImpl billingClientImpl12 = this.f172d;
                if (billingClientImpl12.k < 6) {
                    z = false;
                }
                billingClientImpl12.l = z;
                if (this.f172d.k < 3) {
                    com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "In-app billing API version 3 is not supported on this device.");
                    i = 36;
                }
                if (iZzq == 0) {
                    this.f172d.a = 2;
                } else {
                    this.f172d.a = 0;
                    this.f172d.f146g = null;
                }
            } catch (Exception e3) {
                e = e3;
            }
            if (iZzq == 0) {
                this.f172d.f145f.c(zzaq.zzb(6));
                c(zzat.l);
            } else {
                zzar zzarVar = this.f172d.f145f;
                BillingResult billingResult = zzat.a;
                zzarVar.b(zzaq.zza(i, 6, billingResult));
                c(billingResult);
            }
            return null;
        }
    }

    final /* synthetic */ void b() {
        this.f172d.a = 0;
        this.f172d.f146g = null;
        zzar zzarVar = this.f172d.f145f;
        BillingResult billingResult = zzat.n;
        zzarVar.b(zzaq.zza(24, 6, billingResult));
        c(billingResult);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.zzb.zzi("BillingClient", "Billing service connected.");
        this.f172d.f146g = com.google.android.gms.internal.play_billing.zzd.zzn(iBinder);
        BillingClientImpl billingClientImpl = this.f172d;
        if (billingClientImpl.A(new Callable() { // from class: com.android.billingclient.api.zzac
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                this.a.a();
                return null;
            }
        }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, new Runnable() { // from class: com.android.billingclient.api.zzad
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b();
            }
        }, billingClientImpl.w()) == null) {
            BillingResult billingResultY = this.f172d.y();
            this.f172d.f145f.b(zzaq.zza(25, 6, billingResultY));
            c(billingResultY);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzb.zzj("BillingClient", "Billing service disconnected.");
        this.f172d.f145f.a(zzgd.zzw());
        this.f172d.f146g = null;
        this.f172d.a = 0;
        synchronized (this.a) {
            BillingClientStateListener billingClientStateListener = this.c;
            if (billingClientStateListener != null) {
                billingClientStateListener.onBillingServiceDisconnected();
            }
        }
    }
}
