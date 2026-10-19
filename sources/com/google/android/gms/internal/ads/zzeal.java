package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeal {
    private final zzgbl zza;
    private final zzgbl zzb;
    private final zzebd zzc;

    zzeal(zzgbl zzgblVar, zzgbl zzgblVar2, zzebd zzebdVar) {
        this.zza = zzgblVar;
        this.zzb = zzgblVar2;
        this.zzc = zzebdVar;
    }

    final /* synthetic */ h0 zza(zzbve zzbveVar) throws Exception {
        return this.zzc.zza(zzbveVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkI)).longValue());
    }

    public final h0 zzb(final zzbve zzbveVar) {
        h0 h0VarZzf;
        String str = zzbveVar.zzb;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            h0VarZzf = zzgbb.zzg(new zzdzp(1, "Ads signal service force local"));
        } else {
            h0VarZzf = zzgbb.zzf(zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.internal.ads.zzeah
                @Override // com.google.android.gms.internal.ads.zzgah
                public final h0 zza() {
                    return this.zza.zza(zzbveVar);
                }
            }, this.zza), ExecutionException.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzeai
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    ExecutionException executionException = (ExecutionException) obj;
                    Throwable cause = executionException.getCause();
                    ExecutionException cause2 = executionException;
                    if (cause != null) {
                        cause2 = executionException.getCause();
                    }
                    return zzgbb.zzg(cause2);
                }
            }, this.zzb);
        }
        return zzgbb.zzn(zzgbb.zzf(zzgas.zzu(h0VarZzf), zzdzp.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzeaj
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return zzgbb.zzh(null);
            }
        }, this.zzb), new zzgai() { // from class: com.google.android.gms.internal.ads.zzeak
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                InputStream inputStream = (InputStream) obj;
                JSONObject jSONObject = new JSONObject();
                if (inputStream == null) {
                    return zzgbb.zzh(jSONObject);
                }
                try {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    jSONObject = new JSONObject(com.google.android.gms.ads.internal.util.zzt.zzM(new InputStreamReader(inputStream)));
                } catch (IOException | JSONException e2) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "AdsServiceSignalTask.startAdsServiceSignalTask");
                }
                return zzgbb.zzh(jSONObject);
            }
        }, this.zzb);
    }
}
