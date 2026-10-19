package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzvm implements zzui, zzach, zzys, zzyx, zzvy {
    private static final Map zzb;
    private static final zzam zzc;
    private long zzA;
    private boolean zzB;
    private int zzC;
    private boolean zzD;
    private boolean zzE;
    private int zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private boolean zzJ;
    private int zzK;
    private boolean zzL;
    private boolean zzM;
    private final zzyr zzN;
    private final zzyn zzO;
    private final Uri zzd;
    private final zzgq zze;
    private final zzrr zzf;
    private final zzut zzg;
    private final zzrl zzh;
    private final zzvi zzi;
    private final long zzj;
    private final zzza zzk = new zzza("ProgressiveMediaPeriod");
    private final zzvb zzl;
    private final zzei zzm;
    private final Runnable zzn;
    private final Runnable zzo;
    private final Handler zzp;
    private final boolean zzq;

    @Nullable
    private zzuh zzr;

    @Nullable
    private zzafk zzs;
    private zzvz[] zzt;
    private zzvk[] zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private zzvl zzy;
    private zzade zzz;

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        zzb = Collections.unmodifiableMap(map);
        zzak zzakVar = new zzak();
        zzakVar.zzJ("icy");
        zzakVar.zzU("application/x-icy");
        zzc = zzakVar.zzac();
    }

    public zzvm(Uri uri, zzgq zzgqVar, zzvb zzvbVar, zzrr zzrrVar, zzrl zzrlVar, zzyr zzyrVar, zzut zzutVar, zzvi zzviVar, zzyn zzynVar, @Nullable String str, int i, long j) {
        this.zzd = uri;
        this.zze = zzgqVar;
        this.zzf = zzrrVar;
        this.zzh = zzrlVar;
        this.zzN = zzyrVar;
        this.zzg = zzutVar;
        this.zzi = zzviVar;
        this.zzO = zzynVar;
        this.zzj = i;
        this.zzl = zzvbVar;
        this.zzA = j;
        this.zzq = j != C.TIME_UNSET;
        this.zzm = new zzei(zzeg.zza);
        this.zzn = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvd
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzU();
            }
        };
        this.zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zzve
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzE();
            }
        };
        this.zzp = zzfs.zzw(null);
        this.zzu = new zzvk[0];
        this.zzt = new zzvz[0];
        this.zzI = C.TIME_UNSET;
        this.zzC = 1;
    }

    static /* bridge */ /* synthetic */ void zzC(final zzvm zzvmVar) {
        zzvmVar.zzp.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvc
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzF();
            }
        });
    }

    private final int zzQ() {
        int iZzd = 0;
        for (zzvz zzvzVar : this.zzt) {
            iZzd += zzvzVar.zzd();
        }
        return iZzd;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long zzR(boolean r6) {
        /*
            r5 = this;
            r0 = 0
            r1 = -9223372036854775808
        L3:
            com.google.android.gms.internal.ads.zzvz[] r3 = r5.zzt
            int r4 = r3.length
            if (r0 >= r4) goto L22
            if (r6 != 0) goto L15
            com.google.android.gms.internal.ads.zzvl r4 = r5.zzy
            java.util.Objects.requireNonNull(r4)
            boolean[] r4 = r4.zzc
            boolean r4 = r4[r0]
            if (r4 == 0) goto L1f
        L15:
            r3 = r3[r0]
            long r3 = r3.zzh()
            long r1 = java.lang.Math.max(r1, r3)
        L1f:
            int r0 = r0 + 1
            goto L3
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvm.zzR(boolean):long");
    }

    private final zzadk zzS(zzvk zzvkVar) {
        int length = this.zzt.length;
        for (int i = 0; i < length; i++) {
            if (zzvkVar.equals(this.zzu[i])) {
                return this.zzt[i];
            }
        }
        zzvz zzvzVar = new zzvz(this.zzO, this.zzf, this.zzh);
        zzvzVar.zzv(this);
        int i2 = length + 1;
        zzvk[] zzvkVarArr = (zzvk[]) Arrays.copyOf(this.zzu, i2);
        zzvkVarArr[length] = zzvkVar;
        int i3 = zzfs.zza;
        this.zzu = zzvkVarArr;
        zzvz[] zzvzVarArr = (zzvz[]) Arrays.copyOf(this.zzt, i2);
        zzvzVarArr[length] = zzvzVar;
        this.zzt = zzvzVarArr;
        return zzvzVar;
    }

    private final void zzT() {
        zzef.zzf(this.zzw);
        Objects.requireNonNull(this.zzy);
        Objects.requireNonNull(this.zzz);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzU() {
        int i;
        if (this.zzM || this.zzw || !this.zzv || this.zzz == null) {
            return;
        }
        for (zzvz zzvzVar : this.zzt) {
            if (zzvzVar.zzi() == null) {
                return;
            }
        }
        this.zzm.zzc();
        int length = this.zzt.length;
        zzdc[] zzdcVarArr = new zzdc[length];
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzam zzamVarZzi = this.zzt[i2].zzi();
            Objects.requireNonNull(zzamVarZzi);
            String str = zzamVarZzi.zzm;
            boolean zZzf = zzce.zzf(str);
            boolean z = zZzf || zzce.zzg(str);
            zArr[i2] = z;
            this.zzx = z | this.zzx;
            zzafk zzafkVar = this.zzs;
            if (zzafkVar != null) {
                if (zZzf || this.zzu[i2].zzb) {
                    zzcb zzcbVar = zzamVarZzi.zzk;
                    zzcb zzcbVar2 = zzcbVar == null ? new zzcb(C.TIME_UNSET, zzafkVar) : zzcbVar.zzc(zzafkVar);
                    zzak zzakVarZzb = zzamVarZzi.zzb();
                    zzakVarZzb.zzO(zzcbVar2);
                    zzamVarZzi = zzakVarZzb.zzac();
                }
                if (zZzf && zzamVarZzi.zzg == -1 && zzamVarZzi.zzh == -1 && (i = zzafkVar.zza) != -1) {
                    zzak zzakVarZzb2 = zzamVarZzi.zzb();
                    zzakVarZzb2.zzx(i);
                    zzamVarZzi = zzakVarZzb2.zzac();
                }
            }
            zzdcVarArr[i2] = new zzdc(Integer.toString(i2), zzamVarZzi.zzc(this.zzf.zza(zzamVarZzi)));
        }
        this.zzy = new zzvl(new zzwl(zzdcVarArr), zArr);
        this.zzw = true;
        zzuh zzuhVar = this.zzr;
        Objects.requireNonNull(zzuhVar);
        zzuhVar.zzh(this);
    }

    private final void zzV(int i) {
        zzT();
        zzvl zzvlVar = this.zzy;
        boolean[] zArr = zzvlVar.zzd;
        if (zArr[i]) {
            return;
        }
        zzam zzamVarZzb = zzvlVar.zza.zzb(i).zzb(0);
        this.zzg.zzc(new zzug(1, zzce.zzb(zzamVarZzb.zzm), zzamVarZzb, 0, null, zzfs.zzt(this.zzH), C.TIME_UNSET));
        zArr[i] = true;
    }

    private final void zzW(int i) {
        zzT();
        boolean[] zArr = this.zzy.zzb;
        if (this.zzJ && zArr[i] && !this.zzt[i].zzy(false)) {
            this.zzI = 0L;
            this.zzJ = false;
            this.zzE = true;
            this.zzH = 0L;
            this.zzK = 0;
            for (zzvz zzvzVar : this.zzt) {
                zzvzVar.zzq(false);
            }
            zzuh zzuhVar = this.zzr;
            Objects.requireNonNull(zzuhVar);
            zzuhVar.zzf(this);
        }
    }

    private final void zzX() {
        zzvh zzvhVar = new zzvh(this, this.zzd, this.zze, this.zzl, this, this.zzm);
        if (this.zzw) {
            zzef.zzf(zzY());
            long j = this.zzA;
            if (j != C.TIME_UNSET && this.zzI > j) {
                this.zzL = true;
                this.zzI = C.TIME_UNSET;
                return;
            }
            zzade zzadeVar = this.zzz;
            Objects.requireNonNull(zzadeVar);
            zzvh.zzf(zzvhVar, zzadeVar.zzg(this.zzI).zza.zzc, this.zzI);
            for (zzvz zzvzVar : this.zzt) {
                zzvzVar.zzu(this.zzI);
            }
            this.zzI = C.TIME_UNSET;
        }
        this.zzK = zzQ();
        long jZza = this.zzk.zza(zzvhVar, this, zzyr.zza(this.zzC));
        zzgv zzgvVar = zzvhVar.zzl;
        this.zzg.zzg(new zzub(zzvhVar.zzb, zzgvVar, zzgvVar.zza, Collections.emptyMap(), jZza, 0L, 0L), new zzug(1, -1, null, 0, null, zzfs.zzt(zzvhVar.zzk), zzfs.zzt(this.zzA)));
    }

    private final boolean zzY() {
        return this.zzI != C.TIME_UNSET;
    }

    private final boolean zzZ() {
        return this.zzE || zzY();
    }

    static /* bridge */ /* synthetic */ long zzr(zzvm zzvmVar, boolean z) {
        return zzvmVar.zzR(true);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzD() {
        this.zzv = true;
        this.zzp.post(this.zzn);
    }

    final /* synthetic */ void zzE() {
        if (this.zzM) {
            return;
        }
        zzuh zzuhVar = this.zzr;
        Objects.requireNonNull(zzuhVar);
        zzuhVar.zzf(this);
    }

    final /* synthetic */ void zzF() {
        this.zzG = true;
    }

    final /* synthetic */ void zzG(zzade zzadeVar) {
        this.zzz = this.zzs == null ? zzadeVar : new zzadd(C.TIME_UNSET, 0L);
        if (zzadeVar.zza() == C.TIME_UNSET && this.zzA != C.TIME_UNSET) {
            this.zzz = new zzvg(this, this.zzz);
        }
        this.zzA = this.zzz.zza();
        boolean z = false;
        if (!this.zzG && zzadeVar.zza() == C.TIME_UNSET) {
            z = true;
        }
        this.zzB = z;
        this.zzC = true == z ? 7 : 1;
        this.zzi.zza(this.zzA, zzadeVar.zzh(), this.zzB);
        if (this.zzw) {
            return;
        }
        zzU();
    }

    final void zzH() throws IOException {
        this.zzk.zzi(zzyr.zza(this.zzC));
    }

    final void zzI(int i) throws IOException {
        this.zzt[i].zzn();
        zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* bridge */ /* synthetic */ void zzJ(zzyw zzywVar, long j, long j2, boolean z) {
        zzvh zzvhVar = (zzvh) zzywVar;
        zzhr zzhrVar = zzvhVar.zzd;
        zzub zzubVar = new zzub(zzvhVar.zzb, zzvhVar.zzl, zzhrVar.zzh(), zzhrVar.zzi(), j, j2, zzhrVar.zzg());
        long unused = zzvhVar.zzb;
        this.zzg.zzd(zzubVar, new zzug(1, -1, null, 0, null, zzfs.zzt(zzvhVar.zzk), zzfs.zzt(this.zzA)));
        if (z) {
            return;
        }
        for (zzvz zzvzVar : this.zzt) {
            zzvzVar.zzq(false);
        }
        if (this.zzF > 0) {
            zzuh zzuhVar = this.zzr;
            Objects.requireNonNull(zzuhVar);
            zzuhVar.zzf(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* bridge */ /* synthetic */ void zzK(zzyw zzywVar, long j, long j2) {
        zzade zzadeVar;
        if (this.zzA == C.TIME_UNSET && (zzadeVar = this.zzz) != null) {
            boolean zZzh = zzadeVar.zzh();
            long jZzR = zzR(true);
            long j3 = jZzR == Long.MIN_VALUE ? 0L : jZzR + 10000;
            this.zzA = j3;
            this.zzi.zza(j3, zZzh, this.zzB);
        }
        zzvh zzvhVar = (zzvh) zzywVar;
        zzhr zzhrVar = zzvhVar.zzd;
        zzub zzubVar = new zzub(zzvhVar.zzb, zzvhVar.zzl, zzhrVar.zzh(), zzhrVar.zzi(), j, j2, zzhrVar.zzg());
        long unused = zzvhVar.zzb;
        this.zzg.zze(zzubVar, new zzug(1, -1, null, 0, null, zzfs.zzt(zzvhVar.zzk), zzfs.zzt(this.zzA)));
        this.zzL = true;
        zzuh zzuhVar = this.zzr;
        Objects.requireNonNull(zzuhVar);
        zzuhVar.zzf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzyx
    public final void zzL() {
        for (zzvz zzvzVar : this.zzt) {
            zzvzVar.zzp();
        }
        this.zzl.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzvy
    public final void zzM(zzam zzamVar) {
        this.zzp.post(this.zzn);
    }

    public final void zzN() {
        if (this.zzw) {
            for (zzvz zzvzVar : this.zzt) {
                zzvzVar.zzo();
            }
        }
        this.zzk.zzj(this);
        this.zzp.removeCallbacksAndMessages(null);
        this.zzr = null;
        this.zzM = true;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzO(final zzade zzadeVar) {
        this.zzp.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvf
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzG(zzadeVar);
            }
        });
    }

    final boolean zzP(int i) {
        return !zzZ() && this.zzt[i].zzy(this.zzL);
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zza(long j, zzmd zzmdVar) {
        zzT();
        if (!this.zzz.zzh()) {
            return 0L;
        }
        zzadc zzadcVarZzg = this.zzz.zzg(j);
        zzadf zzadfVar = zzadcVarZzg.zza;
        zzadf zzadfVar2 = zzadcVarZzg.zzb;
        long j2 = zzmdVar.zzf;
        if (j2 == 0) {
            if (zzmdVar.zzg == 0) {
                return j;
            }
            j2 = 0;
        }
        long j3 = zzadfVar.zzb;
        int i = zzfs.zza;
        long j4 = j - j2;
        long j5 = zzmdVar.zzg;
        long j6 = j + j5;
        long j7 = j ^ j6;
        long j8 = j5 ^ j6;
        if (((j ^ j2) & (j ^ j4)) < 0) {
            j4 = Long.MIN_VALUE;
        }
        if ((j7 & j8) < 0) {
            j6 = Long.MAX_VALUE;
        }
        boolean z = j4 <= j3 && j3 <= j6;
        long j9 = zzadfVar2.zzb;
        boolean z2 = j4 <= j9 && j9 <= j6;
        if (z && z2) {
            if (Math.abs(j3 - j) > Math.abs(j9 - j)) {
                return j9;
            }
        } else if (!z) {
            return z2 ? j9 : j4;
        }
        return j3;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final long zzb() {
        long jZzR;
        zzT();
        if (this.zzL || this.zzF == 0) {
            return Long.MIN_VALUE;
        }
        if (zzY()) {
            return this.zzI;
        }
        if (this.zzx) {
            int length = this.zzt.length;
            jZzR = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zzvl zzvlVar = this.zzy;
                if (zzvlVar.zzb[i] && zzvlVar.zzc[i] && !this.zzt[i].zzx()) {
                    jZzR = Math.min(jZzR, this.zzt[i].zzh());
                }
            }
        } else {
            jZzR = Long.MAX_VALUE;
        }
        if (jZzR == Long.MAX_VALUE) {
            jZzR = zzR(false);
        }
        return jZzR == Long.MIN_VALUE ? this.zzH : jZzR;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final long zzd() {
        if (!this.zzE) {
            return C.TIME_UNSET;
        }
        if (!this.zzL && zzQ() <= this.zzK) {
            return C.TIME_UNSET;
        }
        this.zzE = false;
        return this.zzH;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f  */
    @Override // com.google.android.gms.internal.ads.zzui
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zze(long r7) {
        /*
            r6 = this;
            r6.zzT()
            com.google.android.gms.internal.ads.zzvl r0 = r6.zzy
            boolean[] r0 = r0.zzb
            com.google.android.gms.internal.ads.zzade r1 = r6.zzz
            boolean r1 = r1.zzh()
            r2 = 1
            if (r2 == r1) goto L12
            r7 = 0
        L12:
            r1 = 0
            r6.zzE = r1
            r6.zzH = r7
            boolean r2 = r6.zzY()
            if (r2 == 0) goto L20
            r6.zzI = r7
            return r7
        L20:
            int r2 = r6.zzC
            r3 = 7
            if (r2 == r3) goto L4e
            com.google.android.gms.internal.ads.zzvz[] r2 = r6.zzt
            int r2 = r2.length
            r3 = 0
        L29:
            if (r3 >= r2) goto L80
            com.google.android.gms.internal.ads.zzvz[] r4 = r6.zzt
            r4 = r4[r3]
            boolean r5 = r6.zzq
            if (r5 == 0) goto L3c
            int r5 = r4.zza()
            boolean r4 = r4.zzz(r5)
            goto L40
        L3c:
            boolean r4 = r4.zzA(r7, r1)
        L40:
            if (r4 != 0) goto L4b
            boolean r4 = r0[r3]
            if (r4 != 0) goto L4e
            boolean r4 = r6.zzx
            if (r4 != 0) goto L4b
            goto L4e
        L4b:
            int r3 = r3 + 1
            goto L29
        L4e:
            r6.zzJ = r1
            r6.zzI = r7
            r6.zzL = r1
            com.google.android.gms.internal.ads.zzza r0 = r6.zzk
            boolean r2 = r0.zzl()
            if (r2 == 0) goto L6f
            com.google.android.gms.internal.ads.zzvz[] r0 = r6.zzt
            int r2 = r0.length
        L5f:
            if (r1 >= r2) goto L69
            r3 = r0[r1]
            r3.zzk()
            int r1 = r1 + 1
            goto L5f
        L69:
            com.google.android.gms.internal.ads.zzza r0 = r6.zzk
            r0.zzg()
            goto L80
        L6f:
            r0.zzh()
            com.google.android.gms.internal.ads.zzvz[] r0 = r6.zzt
            int r2 = r0.length
            r3 = 0
        L76:
            if (r3 >= r2) goto L80
            r4 = r0[r3]
            r4.zzq(r1)
            int r3 = r3 + 1
            goto L76
        L80:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvm.zze(long):long");
    }

    final int zzf(int i, zzkv zzkvVar, zzib zzibVar, int i2) {
        if (zzZ()) {
            return -3;
        }
        zzV(i);
        int iZze = this.zzt[i].zze(zzkvVar, zzibVar, i2, this.zzL);
        if (iZze == -3) {
            zzW(i);
        }
        return iZze;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004a A[PHI: r12
      0x004a: PHI (r12v1 long) = (r12v0 long), (r12v5 long), (r12v0 long) binds: [B:14:0x003a, B:22:0x0049, B:17:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzui
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long zzg(com.google.android.gms.internal.ads.zzxy[] r8, boolean[] r9, com.google.android.gms.internal.ads.zzwa[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instruction units count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvm.zzg(com.google.android.gms.internal.ads.zzxy[], boolean[], com.google.android.gms.internal.ads.zzwa[], boolean[], long):long");
    }

    final int zzh(int i, long j) {
        if (zzZ()) {
            return 0;
        }
        zzV(i);
        zzvz zzvzVar = this.zzt[i];
        int iZzc = zzvzVar.zzc(j, this.zzL);
        zzvzVar.zzw(iZzc);
        if (iZzc != 0) {
            return iZzc;
        }
        zzW(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final zzwl zzi() {
        zzT();
        return this.zzy.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzj(long j, boolean z) {
        if (this.zzq) {
            return;
        }
        zzT();
        if (zzY()) {
            return;
        }
        boolean[] zArr = this.zzy.zzc;
        int length = this.zzt.length;
        for (int i = 0; i < length; i++) {
            this.zzt[i].zzj(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzk() throws IOException {
        zzH();
        if (this.zzL && !this.zzw) {
            throw zzcf.zza("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzl(zzuh zzuhVar, long j) {
        this.zzr = zzuhVar;
        this.zzm.zze();
        zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final void zzm(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final boolean zzo(zzla zzlaVar) {
        if (this.zzL) {
            return false;
        }
        zzza zzzaVar = this.zzk;
        if (zzzaVar.zzk() || this.zzJ) {
            return false;
        }
        if (this.zzw && this.zzF == 0) {
            return false;
        }
        boolean zZze = this.zzm.zze();
        if (zzzaVar.zzl()) {
            return zZze;
        }
        zzX();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzwc
    public final boolean zzp() {
        return this.zzk.zzl() && this.zzm.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzys
    public final /* bridge */ /* synthetic */ zzyu zzu(zzyw zzywVar, long j, long j2, IOException iOException, int i) {
        long jMin;
        zzyu zzyuVarZzb;
        zzade zzadeVar;
        zzvh zzvhVar = (zzvh) zzywVar;
        zzhr zzhrVar = zzvhVar.zzd;
        zzub zzubVar = new zzub(zzvhVar.zzb, zzvhVar.zzl, zzhrVar.zzh(), zzhrVar.zzi(), j, j2, zzhrVar.zzg());
        long unused = zzvhVar.zzk;
        int i2 = zzfs.zza;
        if ((iOException instanceof zzcf) || (iOException instanceof FileNotFoundException) || (iOException instanceof zzhi) || (iOException instanceof zzyz)) {
            jMin = -9223372036854775807L;
            break;
        }
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof zzgr) && ((zzgr) cause).zza == 2008) {
                jMin = -9223372036854775807L;
                break;
            }
        }
        jMin = Math.min((i - 1) * 1000, 5000);
        if (jMin == C.TIME_UNSET) {
            zzyuVarZzb = zzza.zzd;
        } else {
            int iZzQ = zzQ();
            boolean z = iZzQ > this.zzK;
            if (this.zzG || !((zzadeVar = this.zzz) == null || zzadeVar.zza() == C.TIME_UNSET)) {
                this.zzK = iZzQ;
            } else {
                boolean z2 = this.zzw;
                if (!z2 || zzZ()) {
                    this.zzE = z2;
                    this.zzH = 0L;
                    this.zzK = 0;
                    for (zzvz zzvzVar : this.zzt) {
                        zzvzVar.zzq(false);
                    }
                    zzvh.zzf(zzvhVar, 0L, 0L);
                } else {
                    this.zzJ = true;
                    zzyuVarZzb = zzza.zzc;
                }
            }
            zzyuVarZzb = zzza.zzb(z, jMin);
        }
        boolean zZzc = true ^ zzyuVarZzb.zzc();
        this.zzg.zzf(zzubVar, new zzug(1, -1, null, 0, null, zzfs.zzt(zzvhVar.zzk), zzfs.zzt(this.zzA)), iOException, zZzc);
        if (zZzc) {
            long unused2 = zzvhVar.zzb;
        }
        return zzyuVarZzb;
    }

    final zzadk zzv() {
        return zzS(new zzvk(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final zzadk zzw(int i, int i2) {
        return zzS(new zzvk(i, false));
    }
}
