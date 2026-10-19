package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzik implements zzlz, zzmb {
    private final int zzb;

    @Nullable
    private zzmc zzd;
    private int zze;
    private zzov zzf;
    private zzeg zzg;
    private int zzh;

    @Nullable
    private zzwa zzi;

    @Nullable
    private zzam[] zzj;
    private long zzk;
    private long zzl;
    private boolean zzn;
    private boolean zzo;

    @Nullable
    @GuardedBy("lock")
    private zzma zzq;
    private final Object zza = new Object();
    private final zzkv zzc = new zzkv();
    private long zzm = Long.MIN_VALUE;
    private zzda zzp = zzda.zza;

    public zzik(int i) {
        this.zzb = i;
    }

    private final void zzX(long j, boolean z) throws zzit {
        this.zzn = false;
        this.zzl = j;
        this.zzm = j;
        zzy(j, z);
    }

    protected void zzA() {
    }

    protected void zzB() throws zzit {
    }

    protected void zzC() {
    }

    protected void zzD(zzam[] zzamVarArr, long j, long j2, zzuk zzukVar) throws zzit {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzE() {
        zzef.zzf(this.zzh == 0);
        zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzF(zzam[] zzamVarArr, zzwa zzwaVar, long j, long j2, zzuk zzukVar) throws zzit {
        zzef.zzf(!this.zzn);
        this.zzi = zzwaVar;
        if (this.zzm == Long.MIN_VALUE) {
            this.zzm = j;
        }
        this.zzj = zzamVarArr;
        this.zzk = j2;
        zzD(zzamVarArr, j, j2, zzukVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzG() {
        zzef.zzf(this.zzh == 0);
        zzkv zzkvVar = this.zzc;
        zzkvVar.zzb = null;
        zzkvVar.zza = null;
        zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzH(long j) throws zzit {
        zzX(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzI() {
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzJ(zzma zzmaVar) {
        synchronized (this.zza) {
            this.zzq = zzmaVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public /* synthetic */ void zzK(float f2, float f3) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzL(zzda zzdaVar) {
        if (zzfs.zzF(this.zzp, zzdaVar)) {
            return;
        }
        this.zzp = zzdaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzM() throws zzit {
        zzef.zzf(this.zzh == 1);
        this.zzh = 2;
        zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzN() {
        zzef.zzf(this.zzh == 2);
        this.zzh = 1;
        zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final boolean zzO() {
        return this.zzm == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final boolean zzP() {
        return this.zzn;
    }

    protected final boolean zzQ() {
        if (zzO()) {
            return this.zzn;
        }
        zzwa zzwaVar = this.zzi;
        Objects.requireNonNull(zzwaVar);
        return zzwaVar.zze();
    }

    protected final zzam[] zzR() {
        zzam[] zzamVarArr = this.zzj;
        Objects.requireNonNull(zzamVarArr);
        return zzamVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmb
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final int zzbd() {
        return this.zzh;
    }

    protected final int zzbe(zzkv zzkvVar, zzib zzibVar, int i) {
        zzwa zzwaVar = this.zzi;
        Objects.requireNonNull(zzwaVar);
        int iZza = zzwaVar.zza(zzkvVar, zzibVar, i);
        if (iZza == -4) {
            if (zzibVar.zzf()) {
                this.zzm = Long.MIN_VALUE;
                return this.zzn ? -4 : -3;
            }
            long j = zzibVar.zze + this.zzk;
            zzibVar.zze = j;
            this.zzm = Math.max(this.zzm, j);
        } else if (iZza == -5) {
            zzam zzamVar = zzkvVar.zza;
            Objects.requireNonNull(zzamVar);
            long j2 = zzamVar.zzq;
            if (j2 != Long.MAX_VALUE) {
                zzak zzakVarZzb = zzamVar.zzb();
                zzakVarZzb.zzY(j2 + this.zzk);
                zzkvVar.zza = zzakVarZzb.zzac();
                return -5;
            }
        }
        return iZza;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final long zzbf() {
        return this.zzm;
    }

    protected final int zzd(long j) {
        zzwa zzwaVar = this.zzi;
        Objects.requireNonNull(zzwaVar);
        return zzwaVar.zzb(j - this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public int zze() throws zzit {
        return 0;
    }

    protected final long zzf() {
        return this.zzl;
    }

    protected final zzeg zzh() {
        zzeg zzegVar = this.zzg;
        Objects.requireNonNull(zzegVar);
        return zzegVar;
    }

    protected final zzit zzi(Throwable th, @Nullable zzam zzamVar, boolean z, int i) {
        int i2;
        if (zzamVar == null || this.zzo) {
            i2 = 4;
        } else {
            this.zzo = true;
            try {
                int iZzW = zzW(zzamVar) & 7;
                this.zzo = false;
                i2 = iZzW;
            } catch (zzit unused) {
                this.zzo = false;
                i2 = 4;
            } catch (Throwable th2) {
                this.zzo = false;
                throw th2;
            }
        }
        return zzit.zzb(th, zzS(), this.zze, zzamVar, i2, z, i);
    }

    protected final zzkv zzj() {
        zzkv zzkvVar = this.zzc;
        zzkvVar.zzb = null;
        zzkvVar.zza = null;
        return zzkvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    @Nullable
    public zzlb zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final zzmb zzl() {
        return this;
    }

    protected final zzmc zzm() {
        zzmc zzmcVar = this.zzd;
        Objects.requireNonNull(zzmcVar);
        return zzmcVar;
    }

    protected final zzov zzn() {
        zzov zzovVar = this.zzf;
        Objects.requireNonNull(zzovVar);
        return zzovVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    @Nullable
    public final zzwa zzo() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzp() {
        synchronized (this.zza) {
            this.zzq = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzq() {
        zzef.zzf(this.zzh == 1);
        zzkv zzkvVar = this.zzc;
        zzkvVar.zzb = null;
        zzkvVar.zza = null;
        this.zzh = 0;
        this.zzi = null;
        this.zzj = null;
        this.zzn = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzr(zzmc zzmcVar, zzam[] zzamVarArr, zzwa zzwaVar, long j, boolean z, boolean z2, long j2, long j3, zzuk zzukVar) throws zzit {
        zzef.zzf(this.zzh == 0);
        this.zzd = zzmcVar;
        this.zzh = 1;
        zzx(z, z2);
        zzF(zzamVarArr, zzwaVar, j2, j3, zzukVar);
        zzX(j2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public /* synthetic */ void zzs() {
    }

    @Override // com.google.android.gms.internal.ads.zzlu
    public void zzt(int i, @Nullable Object obj) throws zzit {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzu(int i, zzov zzovVar, zzeg zzegVar) {
        this.zze = i;
        this.zzf = zzovVar;
        this.zzg = zzegVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzv() throws IOException {
        zzwa zzwaVar = this.zzi;
        Objects.requireNonNull(zzwaVar);
        zzwaVar.zzd();
    }

    protected void zzw() {
        throw null;
    }

    protected void zzx(boolean z, boolean z2) throws zzit {
    }

    protected void zzy(long j, boolean z) throws zzit {
        throw null;
    }

    protected void zzz() {
    }
}
