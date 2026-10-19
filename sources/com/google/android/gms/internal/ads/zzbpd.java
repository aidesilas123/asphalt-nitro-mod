package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbpd {
    private final zzbog zza;
    private h0 zzb;

    zzbpd(zzbog zzbogVar) {
        this.zza = zzbogVar;
    }

    private final void zzd() {
        if (this.zzb == null) {
            final zzccf zzccfVar = new zzccf();
            this.zzb = zzccfVar;
            this.zza.zzb(null).zzi(new zzccj() { // from class: com.google.android.gms.internal.ads.zzbpa
                @Override // com.google.android.gms.internal.ads.zzccj
                public final void zza(Object obj) {
                    zzccfVar.zzc((zzboh) obj);
                }
            }, new zzcch() { // from class: com.google.android.gms.internal.ads.zzbpb
                @Override // com.google.android.gms.internal.ads.zzcch
                public final void zza() {
                    zzccfVar.zzd(new zzboj("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final zzbpg zza(String str, zzbon zzbonVar, zzbom zzbomVar) {
        zzd();
        return new zzbpg(this.zzb, "google.afma.activeView.handleUpdate", zzbonVar, zzbomVar);
    }

    public final void zzb(final String str, final zzbkd zzbkdVar) {
        zzd();
        this.zzb = zzgbb.zzn(this.zzb, new zzgai() { // from class: com.google.android.gms.internal.ads.zzbpc
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                zzboh zzbohVar = (zzboh) obj;
                zzbohVar.zzq(str, zzbkdVar);
                return zzgbb.zzh(zzbohVar);
            }
        }, zzcca.zzf);
    }

    public final void zzc(final String str, final zzbkd zzbkdVar) {
        this.zzb = zzgbb.zzm(this.zzb, new zzftn() { // from class: com.google.android.gms.internal.ads.zzboz
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                zzboh zzbohVar = (zzboh) obj;
                zzbohVar.zzr(str, zzbkdVar);
                return zzbohVar;
            }
        }, zzcca.zzf);
    }
}
