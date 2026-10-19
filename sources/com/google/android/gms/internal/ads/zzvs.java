package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzvs implements zzyh {
    public long zza;
    public long zzb;

    @Nullable
    public zzyg zzc;

    @Nullable
    public zzvs zzd;

    public zzvs(long j, int i) {
        zze(j, 65536);
    }

    public final int zza(long j) {
        long j2 = j - this.zza;
        int i = this.zzc.zzb;
        return (int) j2;
    }

    public final zzvs zzb() {
        this.zzc = null;
        zzvs zzvsVar = this.zzd;
        this.zzd = null;
        return zzvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    public final zzyg zzc() {
        zzyg zzygVar = this.zzc;
        Objects.requireNonNull(zzygVar);
        return zzygVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyh
    @Nullable
    public final zzyh zzd() {
        zzvs zzvsVar = this.zzd;
        if (zzvsVar == null || zzvsVar.zzc == null) {
            return null;
        }
        return zzvsVar;
    }

    public final void zze(long j, int i) {
        zzef.zzf(this.zzc == null);
        this.zza = j;
        this.zzb = j + PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
    }
}
