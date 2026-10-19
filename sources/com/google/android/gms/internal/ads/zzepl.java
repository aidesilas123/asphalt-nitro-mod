package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.h0;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzepl implements zzeuy {
    private final zzgbl zza;
    private final zzdrk zzb;
    private final zzdvs zzc;
    private final zzepn zzd;

    public zzepl(zzgbl zzgblVar, zzdrk zzdrkVar, zzdvs zzdvsVar, zzepn zzepnVar) {
        this.zza = zzgblVar;
        this.zzb = zzdrkVar;
        this.zzc = zzdvsVar;
        this.zzd = zzepnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        zzbcu zzbcuVar = zzbdc.zzkO;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue() && this.zzd.zza() != null) {
            zzepm zzepmVarZza = this.zzd.zza();
            Objects.requireNonNull(zzepmVarZza);
            return zzgbb.zzh(zzepmVarZza);
        }
        if (zzfun.zzd((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbp)) || (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue() && (this.zzd.zzd() || !this.zzc.zzt()))) {
            return zzgbb.zzh(new zzepm(new Bundle()));
        }
        this.zzd.zzc(true);
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzepk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzepm zzc() throws Exception {
        List<String> listAsList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbp)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : listAsList) {
            try {
                zzffm zzffmVarZzc = this.zzb.zzc(str, new JSONObject());
                zzffmVarZzc.zzC();
                boolean zZzt = this.zzc.zzt();
                Bundle bundle2 = new Bundle();
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkO)).booleanValue() || zZzt) {
                    try {
                        zzbsd zzbsdVarZzf = zzffmVarZzc.zzf();
                        if (zzbsdVarZzf != null) {
                            bundle2.putString("sdk_version", zzbsdVarZzf.toString());
                        }
                    } catch (zzfev unused) {
                    }
                }
                try {
                    zzbsd zzbsdVarZze = zzffmVarZzc.zze();
                    if (zzbsdVarZze != null) {
                        bundle2.putString("adapter_version", zzbsdVarZze.toString());
                    }
                } catch (zzfev unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfev unused3) {
            }
        }
        zzepm zzepmVar = new zzepm(bundle);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkO)).booleanValue()) {
            this.zzd.zzb(zzepmVar);
        }
        return zzepmVar;
    }
}
