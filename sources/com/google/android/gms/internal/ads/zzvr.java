package com.google.android.gms.internal.ads;

import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzvr extends zztl implements zzvi {
    private final zzgp zza;
    private final zzrr zzb;
    private final int zzc;
    private boolean zzd = true;
    private long zze = C.TIME_UNSET;
    private boolean zzf;
    private boolean zzg;

    @Nullable
    private zzhs zzh;

    @GuardedBy("this")
    private zzbs zzi;
    private final zzvo zzj;
    private final zzyr zzk;

    /* synthetic */ zzvr(zzbs zzbsVar, zzgp zzgpVar, zzvo zzvoVar, zzrr zzrrVar, zzyr zzyrVar, int i, zzvq zzvqVar) {
        this.zzi = zzbsVar;
        this.zza = zzgpVar;
        this.zzj = zzvoVar;
        this.zzb = zzrrVar;
        this.zzk = zzyrVar;
        this.zzc = i;
    }

    private final void zzw() {
        long j = this.zze;
        boolean z = this.zzf;
        boolean z2 = this.zzg;
        zzbs zzbsVarZzJ = zzJ();
        zzwe zzweVar = new zzwe(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j, 0L, 0L, z, false, false, null, zzbsVarZzJ, z2 ? zzbsVarZzJ.zzf : null);
        zzo(this.zzd ? new zzvn(this, zzweVar) : zzweVar);
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final void zzG(zzui zzuiVar) {
        ((zzvm) zzuiVar).zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final zzui zzI(zzuk zzukVar, zzyn zzynVar, long j) {
        zzgq zzgqVarZza = this.zza.zza();
        zzhs zzhsVar = this.zzh;
        if (zzhsVar != null) {
            zzgqVarZza.zzf(zzhsVar);
        }
        zzbl zzblVar = zzJ().zzd;
        Objects.requireNonNull(zzblVar);
        zzvo zzvoVar = this.zzj;
        zzb();
        return new zzvm(zzblVar.zzb, zzgqVarZza, new zztn(zzvoVar.zza), this.zzb, zzc(zzukVar), this.zzk, zze(zzukVar), this, zzynVar, null, this.zzc, zzfs.zzq(C.TIME_UNSET));
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final synchronized zzbs zzJ() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzvi
    public final void zza(long j, boolean z, boolean z2) {
        if (j == C.TIME_UNSET) {
            j = this.zze;
        }
        if (!this.zzd && this.zze == j && this.zzf == z && this.zzg == z2) {
            return;
        }
        this.zze = j;
        this.zzf = z;
        this.zzg = z2;
        this.zzd = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zztl
    protected final void zzn(@Nullable zzhs zzhsVar) {
        this.zzh = zzhsVar;
        Objects.requireNonNull(Looper.myLooper());
        zzb();
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zztl
    protected final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zztl, com.google.android.gms.internal.ads.zzum
    public final synchronized void zzt(zzbs zzbsVar) {
        this.zzi = zzbsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final void zzz() {
    }
}
