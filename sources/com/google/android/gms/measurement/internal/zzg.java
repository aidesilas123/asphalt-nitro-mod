package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzg {
    private long zzA;
    private long zzB;

    @Nullable
    private String zzC;
    private boolean zzD;
    private long zzE;
    private long zzF;
    private final zzgi zza;
    private final String zzb;

    @Nullable
    private String zzc;

    @Nullable
    private String zzd;

    @Nullable
    private String zze;

    @Nullable
    private String zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    @Nullable
    private String zzj;
    private long zzk;

    @Nullable
    private String zzl;
    private long zzm;
    private long zzn;
    private boolean zzo;
    private long zzp;
    private boolean zzq;

    @Nullable
    private String zzr;

    @Nullable
    private Boolean zzs;
    private long zzt;

    @Nullable
    private List zzu;

    @Nullable
    private String zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    @WorkerThread
    zzg(zzgi zzgiVar, String str) {
        Preconditions.checkNotNull(zzgiVar);
        Preconditions.checkNotEmpty(str);
        this.zza = zzgiVar;
        this.zzb = str;
        zzgiVar.zzaA().zzg();
    }

    @Nullable
    @WorkerThread
    public final String zzA() {
        this.zza.zzaA().zzg();
        return this.zze;
    }

    @Nullable
    @WorkerThread
    public final String zzB() {
        this.zza.zzaA().zzg();
        return this.zzv;
    }

    @Nullable
    @WorkerThread
    public final List zzC() {
        this.zza.zzaA().zzg();
        return this.zzu;
    }

    @WorkerThread
    public final void zzD() {
        this.zza.zzaA().zzg();
        this.zzD = false;
    }

    @WorkerThread
    public final void zzE() {
        this.zza.zzaA().zzg();
        long j = this.zzg + 1;
        if (j > 2147483647L) {
            this.zza.zzaz().zzk().zzb("Bundle index overflow. appId", zzey.zzn(this.zzb));
            j = 0;
        }
        this.zzD = true;
        this.zzg = j;
    }

    @WorkerThread
    public final void zzF(@Nullable String str) {
        this.zza.zzaA().zzg();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzD |= true ^ zzlp.zzal(this.zzr, str);
        this.zzr = str;
    }

    @WorkerThread
    public final void zzG(boolean z) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzq != z;
        this.zzq = z;
    }

    @WorkerThread
    public final void zzH(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzp != j;
        this.zzp = j;
    }

    @WorkerThread
    public final void zzI(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zzc, str);
        this.zzc = str;
    }

    @WorkerThread
    public final void zzJ(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zzl, str);
        this.zzl = str;
    }

    @WorkerThread
    public final void zzK(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zzj, str);
        this.zzj = str;
    }

    @WorkerThread
    public final void zzL(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzk != j;
        this.zzk = j;
    }

    @WorkerThread
    public final void zzM(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzE != j;
        this.zzE = j;
    }

    @WorkerThread
    public final void zzN(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzz != j;
        this.zzz = j;
    }

    @WorkerThread
    public final void zzO(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzA != j;
        this.zzA = j;
    }

    @WorkerThread
    public final void zzP(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzy != j;
        this.zzy = j;
    }

    @WorkerThread
    public final void zzQ(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzx != j;
        this.zzx = j;
    }

    @WorkerThread
    public final void zzR(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzB != j;
        this.zzB = j;
    }

    @WorkerThread
    public final void zzS(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzw != j;
        this.zzw = j;
    }

    @WorkerThread
    public final void zzT(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzn != j;
        this.zzn = j;
    }

    @WorkerThread
    public final void zzU(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzt != j;
        this.zzt = j;
    }

    @WorkerThread
    public final void zzV(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzF != j;
        this.zzF = j;
    }

    @WorkerThread
    public final void zzW(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zzf, str);
        this.zzf = str;
    }

    @WorkerThread
    public final void zzX(@Nullable String str) {
        this.zza.zzaA().zzg();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzD |= true ^ zzlp.zzal(this.zzd, str);
        this.zzd = str;
    }

    @WorkerThread
    public final void zzY(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzm != j;
        this.zzm = j;
    }

    @WorkerThread
    public final void zzZ(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zzC, str);
        this.zzC = str;
    }

    @WorkerThread
    public final long zza() {
        this.zza.zzaA().zzg();
        return this.zzp;
    }

    @WorkerThread
    public final void zzaa(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzi != j;
        this.zzi = j;
    }

    @WorkerThread
    public final void zzab(long j) {
        Preconditions.checkArgument(j >= 0);
        this.zza.zzaA().zzg();
        this.zzD = (this.zzg != j) | this.zzD;
        this.zzg = j;
    }

    @WorkerThread
    public final void zzac(long j) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzh != j;
        this.zzh = j;
    }

    @WorkerThread
    public final void zzad(boolean z) {
        this.zza.zzaA().zzg();
        this.zzD |= this.zzo != z;
        this.zzo = z;
    }

    @WorkerThread
    public final void zzae(@Nullable Boolean bool) {
        this.zza.zzaA().zzg();
        boolean z = this.zzD;
        Boolean bool2 = this.zzs;
        int i = zzlp.zza;
        this.zzD = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.zzs = bool;
    }

    @WorkerThread
    public final void zzaf(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zze, str);
        this.zze = str;
    }

    @WorkerThread
    public final void zzag(@Nullable List list) {
        this.zza.zzaA().zzg();
        List list2 = this.zzu;
        int i = zzlp.zza;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.zzD = true;
        this.zzu = list != null ? new ArrayList(list) : null;
    }

    @WorkerThread
    public final void zzah(@Nullable String str) {
        this.zza.zzaA().zzg();
        this.zzD |= !zzlp.zzal(this.zzv, str);
        this.zzv = str;
    }

    @WorkerThread
    public final boolean zzai() {
        this.zza.zzaA().zzg();
        return this.zzq;
    }

    @WorkerThread
    public final boolean zzaj() {
        this.zza.zzaA().zzg();
        return this.zzo;
    }

    @WorkerThread
    public final boolean zzak() {
        this.zza.zzaA().zzg();
        return this.zzD;
    }

    @WorkerThread
    public final long zzb() {
        this.zza.zzaA().zzg();
        return this.zzk;
    }

    @WorkerThread
    public final long zzc() {
        this.zza.zzaA().zzg();
        return this.zzE;
    }

    @WorkerThread
    public final long zzd() {
        this.zza.zzaA().zzg();
        return this.zzz;
    }

    @WorkerThread
    public final long zze() {
        this.zza.zzaA().zzg();
        return this.zzA;
    }

    @WorkerThread
    public final long zzf() {
        this.zza.zzaA().zzg();
        return this.zzy;
    }

    @WorkerThread
    public final long zzg() {
        this.zza.zzaA().zzg();
        return this.zzx;
    }

    @WorkerThread
    public final long zzh() {
        this.zza.zzaA().zzg();
        return this.zzB;
    }

    @WorkerThread
    public final long zzi() {
        this.zza.zzaA().zzg();
        return this.zzw;
    }

    @WorkerThread
    public final long zzj() {
        this.zza.zzaA().zzg();
        return this.zzn;
    }

    @WorkerThread
    public final long zzk() {
        this.zza.zzaA().zzg();
        return this.zzt;
    }

    @WorkerThread
    public final long zzl() {
        this.zza.zzaA().zzg();
        return this.zzF;
    }

    @WorkerThread
    public final long zzm() {
        this.zza.zzaA().zzg();
        return this.zzm;
    }

    @WorkerThread
    public final long zzn() {
        this.zza.zzaA().zzg();
        return this.zzi;
    }

    @WorkerThread
    public final long zzo() {
        this.zza.zzaA().zzg();
        return this.zzg;
    }

    @WorkerThread
    public final long zzp() {
        this.zza.zzaA().zzg();
        return this.zzh;
    }

    @Nullable
    @WorkerThread
    public final Boolean zzq() {
        this.zza.zzaA().zzg();
        return this.zzs;
    }

    @Nullable
    @WorkerThread
    public final String zzr() {
        this.zza.zzaA().zzg();
        return this.zzr;
    }

    @Nullable
    @WorkerThread
    public final String zzs() {
        this.zza.zzaA().zzg();
        String str = this.zzC;
        zzZ(null);
        return str;
    }

    @WorkerThread
    public final String zzt() {
        this.zza.zzaA().zzg();
        return this.zzb;
    }

    @Nullable
    @WorkerThread
    public final String zzu() {
        this.zza.zzaA().zzg();
        return this.zzc;
    }

    @Nullable
    @WorkerThread
    public final String zzv() {
        this.zza.zzaA().zzg();
        return this.zzl;
    }

    @Nullable
    @WorkerThread
    public final String zzw() {
        this.zza.zzaA().zzg();
        return this.zzj;
    }

    @Nullable
    @WorkerThread
    public final String zzx() {
        this.zza.zzaA().zzg();
        return this.zzf;
    }

    @Nullable
    @WorkerThread
    public final String zzy() {
        this.zza.zzaA().zzg();
        return this.zzd;
    }

    @Nullable
    @WorkerThread
    public final String zzz() {
        this.zza.zzaA().zzg();
        return this.zzC;
    }
}
