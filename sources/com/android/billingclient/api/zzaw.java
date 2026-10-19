package com.android.billingclient.api;

import android.content.Context;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzff;
import com.google.android.gms.internal.play_billing.zzfm;
import com.google.android.gms.internal.play_billing.zzfy;
import com.google.android.gms.internal.play_billing.zzfz;
import com.google.android.gms.internal.play_billing.zzgd;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzaw implements zzar {
    private final zzfm a;
    private final zzay b;

    zzaw(Context context, zzfm zzfmVar) {
        this.b = new zzay(context);
        this.a = zzfmVar;
    }

    @Override // com.android.billingclient.api.zzar
    public final void a(zzgd zzgdVar) {
        try {
            zzfy zzfyVarZzv = zzfz.zzv();
            zzfm zzfmVar = this.a;
            if (zzfmVar != null) {
                zzfyVarZzv.zzk(zzfmVar);
            }
            zzfyVarZzv.zzl(zzgdVar);
            this.b.a((zzfz) zzfyVarZzv.zzc());
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingLogger", "Unable to log.");
        }
    }

    @Override // com.android.billingclient.api.zzar
    public final void b(zzfb zzfbVar) {
        try {
            zzfy zzfyVarZzv = zzfz.zzv();
            zzfm zzfmVar = this.a;
            if (zzfmVar != null) {
                zzfyVarZzv.zzk(zzfmVar);
            }
            zzfyVarZzv.zzi(zzfbVar);
            this.b.a((zzfz) zzfyVarZzv.zzc());
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingLogger", "Unable to log.");
        }
    }

    @Override // com.android.billingclient.api.zzar
    public final void c(zzff zzffVar) {
        try {
            zzfy zzfyVarZzv = zzfz.zzv();
            zzfm zzfmVar = this.a;
            if (zzfmVar != null) {
                zzfyVarZzv.zzk(zzfmVar);
            }
            zzfyVarZzv.zzj(zzffVar);
            this.b.a((zzfz) zzfyVarZzv.zzc());
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzb.zzj("BillingLogger", "Unable to log.");
        }
    }
}
