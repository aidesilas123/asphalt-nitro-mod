package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgy implements zzgp {

    @Nullable
    private zzhs zzb;

    @Nullable
    private String zzc;
    private boolean zzf;
    private final zzhm zza = new zzhm();
    private int zzd = 8000;
    private int zze = 8000;

    public final zzgy zzb(boolean z) {
        this.zzf = true;
        return this;
    }

    public final zzgy zzc(int i) {
        this.zzd = i;
        return this;
    }

    public final zzgy zzd(int i) {
        this.zze = i;
        return this;
    }

    public final zzgy zze(@Nullable zzhs zzhsVar) {
        this.zzb = zzhsVar;
        return this;
    }

    public final zzgy zzf(@Nullable String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgp
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzhd zza() {
        zzhd zzhdVar = new zzhd(this.zzc, this.zzd, this.zze, this.zzf, this.zza);
        zzhs zzhsVar = this.zzb;
        if (zzhsVar != null) {
            zzhdVar.zzf(zzhsVar);
        }
        return zzhdVar;
    }
}
