package com.android.billingclient.api;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzfb;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzg extends BroadcastReceiver {
    private final PurchasesUpdatedListener a;
    private final zzaz b;
    private final AlternativeBillingListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzar f177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ zzh f179f;

    /* synthetic */ zzg(zzh zzhVar, PurchasesUpdatedListener purchasesUpdatedListener, AlternativeBillingListener alternativeBillingListener, zzar zzarVar, zzf zzfVar) {
        this.f179f = zzhVar;
        this.a = purchasesUpdatedListener;
        this.f177d = zzarVar;
        this.c = alternativeBillingListener;
        this.b = null;
    }

    /* synthetic */ zzg(zzh zzhVar, zzaz zzazVar, zzar zzarVar, zzf zzfVar) {
        this.f179f = zzhVar;
        this.a = null;
        this.c = null;
        this.b = null;
        this.f177d = zzarVar;
    }

    static /* bridge */ /* synthetic */ zzaz a(zzg zzgVar) {
        zzaz zzazVar = zzgVar.b;
        return null;
    }

    private final void d(Bundle bundle, BillingResult billingResult, int i) {
        if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") == null) {
            this.f177d.b(zzaq.zza(23, i, billingResult));
            return;
        }
        try {
            this.f177d.b(zzfb.zzx(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD"), com.google.android.gms.internal.play_billing.zzbn.zza()));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final void c(Context context, IntentFilter intentFilter) {
        if (this.f178e) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(this.f179f.b, intentFilter, 2);
        } else {
            context.registerReceiver(this.f179f.b, intentFilter);
        }
        this.f178e = true;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingBroadcastManager", "Bundle is null.");
            zzar zzarVar = this.f177d;
            BillingResult billingResult = zzat.j;
            zzarVar.b(zzaq.zza(11, 1, billingResult));
            PurchasesUpdatedListener purchasesUpdatedListener = this.a;
            if (purchasesUpdatedListener != null) {
                purchasesUpdatedListener.d(billingResult, null);
                return;
            }
            return;
        }
        BillingResult billingResultZzd = com.google.android.gms.internal.play_billing.zzb.zzd(intent, "BillingBroadcastManager");
        String action = intent.getAction();
        String string = extras.getString("INTENT_SOURCE");
        int i = 2;
        if (string != "LAUNCH_BILLING_FLOW" && (string == null || !string.equals("LAUNCH_BILLING_FLOW"))) {
            i = 1;
        }
        if (action.equals("com.android.vending.billing.PURCHASES_UPDATED")) {
            List<Purchase> listZzh = com.google.android.gms.internal.play_billing.zzb.zzh(extras);
            if (billingResultZzd.b() == 0) {
                this.f177d.c(zzaq.zzb(i));
            } else {
                d(extras, billingResultZzd, i);
            }
            this.a.d(billingResultZzd, listZzh);
            return;
        }
        if (action.equals("com.android.vending.billing.ALTERNATIVE_BILLING")) {
            if (billingResultZzd.b() != 0) {
                d(extras, billingResultZzd, i);
                this.a.d(billingResultZzd, com.google.android.gms.internal.play_billing.zzu.zzk());
                return;
            }
            if (this.c == null) {
                com.google.android.gms.internal.play_billing.zzb.zzj("BillingBroadcastManager", "AlternativeBillingListener is null.");
                zzar zzarVar2 = this.f177d;
                BillingResult billingResult2 = zzat.j;
                zzarVar2.b(zzaq.zza(15, i, billingResult2));
                this.a.d(billingResult2, com.google.android.gms.internal.play_billing.zzu.zzk());
                return;
            }
            String string2 = extras.getString("ALTERNATIVE_BILLING_USER_CHOICE_DATA");
            if (string2 == null) {
                com.google.android.gms.internal.play_billing.zzb.zzj("BillingBroadcastManager", "Couldn't find alternative billing user choice data in bundle.");
                zzar zzarVar3 = this.f177d;
                BillingResult billingResult3 = zzat.j;
                zzarVar3.b(zzaq.zza(16, i, billingResult3));
                this.a.d(billingResult3, com.google.android.gms.internal.play_billing.zzu.zzk());
                return;
            }
            try {
                AlternativeChoiceDetails alternativeChoiceDetails = new AlternativeChoiceDetails(string2);
                this.f177d.c(zzaq.zzb(i));
                this.c.a(alternativeChoiceDetails);
            } catch (JSONException unused) {
                com.google.android.gms.internal.play_billing.zzb.zzj("BillingBroadcastManager", String.format("Error when parsing invalid alternative choice data: [%s]", string2));
                zzar zzarVar4 = this.f177d;
                BillingResult billingResult4 = zzat.j;
                zzarVar4.b(zzaq.zza(17, i, billingResult4));
                this.a.d(billingResult4, com.google.android.gms.internal.play_billing.zzu.zzk());
            }
        }
    }
}
