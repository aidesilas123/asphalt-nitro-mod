package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzecu implements zzdff {
    private final String zzc;
    private final zzfje zzd;

    @GuardedBy("this")
    private boolean zza = false;

    @GuardedBy("this")
    private boolean zzb = false;
    private final com.google.android.gms.ads.internal.util.zzg zze = com.google.android.gms.ads.internal.zzt.zzo().zzi();

    public zzecu(String str, zzfje zzfjeVar) {
        this.zzc = str;
        this.zzd = zzfjeVar;
    }

    private final zzfjd zzg(String str) {
        String str2 = this.zze.zzQ() ? "" : this.zzc;
        zzfjd zzfjdVarZzb = zzfjd.zzb(str);
        zzfjdVarZzb.zza("tms", Long.toString(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime(), 10));
        zzfjdVarZzb.zza(ScarConstants.TOKEN_ID_KEY, str2);
        return zzfjdVarZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zza(String str) {
        zzfjd zzfjdVarZzg = zzg("aaia");
        zzfjdVarZzg.zza("aair", "MalformedJson");
        this.zzd.zzb(zzfjdVarZzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zzb(String str, String str2) {
        zzfjd zzfjdVarZzg = zzg("adapter_init_finished");
        zzfjdVarZzg.zza("ancn", str);
        zzfjdVarZzg.zza("rqe", str2);
        this.zzd.zzb(zzfjdVarZzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zzc(String str) {
        zzfjd zzfjdVarZzg = zzg("adapter_init_started");
        zzfjdVarZzg.zza("ancn", str);
        this.zzd.zzb(zzfjdVarZzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zzd(String str) {
        zzfjd zzfjdVarZzg = zzg("adapter_init_finished");
        zzfjdVarZzg.zza("ancn", str);
        this.zzd.zzb(zzfjdVarZzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final synchronized void zze() {
        if (this.zzb) {
            return;
        }
        this.zzd.zzb(zzg("init_finished"));
        this.zzb = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final synchronized void zzf() {
        if (this.zza) {
            return;
        }
        this.zzd.zzb(zzg("init_started"));
        this.zza = true;
    }
}
