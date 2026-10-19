package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.json.z5;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdoe {
    private final Executor zza;
    private final zzcqv zzb;
    private final zzdfy zzc;

    zzdoe(Executor executor, zzcqv zzcqvVar, zzdfy zzdfyVar) {
        this.zza = executor;
        this.zzc = zzdfyVar;
        this.zzb = zzcqvVar;
    }

    public final void zza(final zzcgv zzcgvVar) {
        if (zzcgvVar == null) {
            return;
        }
        this.zzc.zza(zzcgvVar.zzF());
        this.zzc.zzo(new zzavq() { // from class: com.google.android.gms.internal.ads.zzdoa
            @Override // com.google.android.gms.internal.ads.zzavq
            public final void zzbu(zzavp zzavpVar) {
                zzcii zzciiVarZzN = zzcgvVar.zzN();
                Rect rect = zzavpVar.zzd;
                zzciiVarZzN.zzp(rect.left, rect.top, false);
            }
        }, this.zza);
        this.zzc.zzo(new zzavq() { // from class: com.google.android.gms.internal.ads.zzdob
            @Override // com.google.android.gms.internal.ads.zzavq
            public final void zzbu(zzavp zzavpVar) {
                HashMap map = new HashMap();
                map.put(z5.k, true != zzavpVar.zzj ? "0" : "1");
                zzcgvVar.zzd("onAdVisibilityChanged", map);
            }
        }, this.zza);
        this.zzc.zzo(this.zzb, this.zza);
        this.zzb.zzf(zzcgvVar);
        zzcgvVar.zzad("/trackActiveViewUnit", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdoc
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzb((zzcgv) obj, map);
            }
        });
        zzcgvVar.zzad("/untrackActiveViewUnit", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzdod
            @Override // com.google.android.gms.internal.ads.zzbkd
            public final void zza(Object obj, Map map) {
                this.zza.zzc((zzcgv) obj, map);
            }
        });
    }

    final /* synthetic */ void zzb(zzcgv zzcgvVar, Map map) {
        this.zzb.zzb();
    }

    final /* synthetic */ void zzc(zzcgv zzcgvVar, Map map) {
        this.zzb.zza();
    }
}
