package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.common.util.concurrent.h0;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzelh implements zzefv {
    private final zzefx zza;
    private final zzegb zzb;
    private final zzfiu zzc;
    private final zzgbl zzd;

    public zzelh(zzfiu zzfiuVar, zzgbl zzgblVar, zzefx zzefxVar, zzegb zzegbVar) {
        this.zzc = zzfiuVar;
        this.zzd = zzgblVar;
        this.zzb = zzegbVar;
        this.zza = zzefxVar;
    }

    @VisibleForTesting
    static final String zze(String str, int i) {
        return "Error from: " + str + ", code: " + i;
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final h0 zza(final zzfeh zzfehVar, final zzfdu zzfduVar) {
        final zzefy zzefyVarZza;
        Iterator it = zzfduVar.zzu.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzefyVarZza = null;
                break;
            }
            try {
                zzefyVarZza = this.zza.zza((String) it.next(), zzfduVar.zzw);
                break;
            } catch (zzfev unused) {
            }
        }
        if (zzefyVarZza == null) {
            return zzgbb.zzg(new zzeix("Unable to instantiate mediation adapter class."));
        }
        zzccf zzccfVar = new zzccf();
        zzefyVarZza.zzc.zza(new zzelg(this, zzefyVarZza, zzccfVar));
        if (zzfduVar.zzN) {
            Bundle bundle = zzfehVar.zza.zza.zzd.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        zzfiu zzfiuVar = this.zzc;
        return zzfie.zzd(new zzfhy() { // from class: com.google.android.gms.internal.ads.zzele
            @Override // com.google.android.gms.internal.ads.zzfhy
            public final void zza() throws Exception {
                this.zza.zzd(zzfehVar, zzfduVar, zzefyVarZza);
            }
        }, this.zzd, zzfio.ADAPTER_LOAD_AD_SYN, zzfiuVar).zzb(zzfio.ADAPTER_LOAD_AD_ACK).zzd(zzccfVar).zzb(zzfio.ADAPTER_WRAP_ADAPTER).zze(new zzfhx() { // from class: com.google.android.gms.internal.ads.zzelf
            @Override // com.google.android.gms.internal.ads.zzfhx
            public final Object zza(Object obj) {
                return this.zza.zzc(zzfehVar, zzfduVar, zzefyVarZza, (Void) obj);
            }
        }).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefv
    public final boolean zzb(zzfeh zzfehVar, zzfdu zzfduVar) {
        return !zzfduVar.zzu.isEmpty();
    }

    final /* synthetic */ Object zzc(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar, Void r4) throws Exception {
        return this.zzb.zza(zzfehVar, zzfduVar, zzefyVar);
    }

    final /* synthetic */ void zzd(zzfeh zzfehVar, zzfdu zzfduVar, zzefy zzefyVar) throws Exception {
        this.zzb.zzb(zzfehVar, zzfduVar, zzefyVar);
    }
}
