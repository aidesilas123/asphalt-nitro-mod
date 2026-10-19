package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public class zzctr implements zzejq {
    protected final zzfeh zza;
    protected final zzfdu zzb;
    private final zzczg zzc;
    private final zzczt zzd;

    @Nullable
    private final zzfbi zze;
    private final zzcya zzf;
    private final zzdco zzg;
    private final zzczx zzh;
    private final zzdft zzi;

    protected zzctr(zzctq zzctqVar) {
        this.zza = zzctqVar.zza;
        this.zzb = zzctqVar.zzb;
        this.zzc = zzctqVar.zzc;
        this.zzd = zzctqVar.zzd;
        this.zze = zzctqVar.zze;
        this.zzf = zzctqVar.zzf;
        this.zzg = zzctqVar.zzg;
        this.zzh = zzctqVar.zzh;
        this.zzi = zzctqVar.zzi;
    }

    public void zzb() {
        this.zzc.zza(null);
    }

    public void zzj() {
        this.zzd.zzr();
        this.zzh.zza(this);
    }

    public final zzcya zzl() {
        return this.zzf;
    }

    public final zzczg zzm() {
        return this.zzc;
    }

    public final zzdcm zzn() {
        return this.zzg.zzi();
    }

    @Nullable
    public final zzfbi zzo() {
        return this.zze;
    }

    public final zzfeh zzp() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzejq
    public final void zzq() {
        this.zzi.zzs();
    }
}
