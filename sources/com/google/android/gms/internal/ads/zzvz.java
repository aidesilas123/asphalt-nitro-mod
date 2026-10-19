package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.drive.DriveFile;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzvz implements zzadk {
    private boolean zzB;

    @Nullable
    private zzrs zzC;
    private final zzvt zza;

    @Nullable
    private final zzrr zzd;

    @Nullable
    private final zzrl zze;

    @Nullable
    private zzvy zzf;

    @Nullable
    private zzam zzg;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private boolean zzv;

    @Nullable
    private zzam zzy;

    @Nullable
    private zzam zzz;
    private final zzvv zzb = new zzvv();
    private int zzh = 1000;
    private long[] zzi = new long[1000];
    private long[] zzj = new long[1000];
    private long[] zzm = new long[1000];
    private int[] zzl = new int[1000];
    private int[] zzk = new int[1000];
    private zzadj[] zzn = new zzadj[1000];
    private final zzwg zzc = new zzwg(new zzej() { // from class: com.google.android.gms.internal.ads.zzvu
    });
    private long zzs = Long.MIN_VALUE;
    private long zzt = Long.MIN_VALUE;
    private long zzu = Long.MIN_VALUE;
    private boolean zzx = true;
    private boolean zzw = true;
    private boolean zzA = true;

    protected zzvz(zzyn zzynVar, @Nullable zzrr zzrrVar, @Nullable zzrl zzrlVar) {
        this.zzd = zzrrVar;
        this.zze = zzrlVar;
        this.zza = new zzvt(zzynVar);
    }

    private final int zzB(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.zzm[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.zzl[i] & 1) != 0) {
                i3 = i4;
                if (j2 == j) {
                    break;
                }
            }
            i++;
            if (i == this.zzh) {
                i = 0;
            }
        }
        return i3;
    }

    private final int zzC(int i) {
        int i2 = this.zzq + i;
        int i3 = this.zzh;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private final synchronized int zzD(zzkv zzkvVar, zzib zzibVar, boolean z, boolean z2, zzvv zzvvVar) {
        zzibVar.zzd = false;
        if (!zzL()) {
            if (!z2 && !this.zzv) {
                zzam zzamVar = this.zzz;
                if (zzamVar == null || (!z && zzamVar == this.zzg)) {
                    return -3;
                }
                zzI(zzamVar, zzkvVar);
                return -5;
            }
            zzibVar.zzc(4);
            zzibVar.zze = Long.MIN_VALUE;
            return -4;
        }
        zzam zzamVar2 = ((zzvx) this.zzc.zza(this.zzp + this.zzr)).zza;
        if (!z && zzamVar2 == this.zzg) {
            int iZzC = zzC(this.zzr);
            if (!zzM(iZzC)) {
                zzibVar.zzd = true;
                return -3;
            }
            zzibVar.zzc(this.zzl[iZzC]);
            if (this.zzr == this.zzo - 1 && (z2 || this.zzv)) {
                zzibVar.zza(DriveFile.MODE_WRITE_ONLY);
            }
            long j = this.zzm[iZzC];
            zzibVar.zze = j;
            if (j < this.zzs) {
                zzibVar.zza(Integer.MIN_VALUE);
            }
            zzvvVar.zza = this.zzk[iZzC];
            zzvvVar.zzb = this.zzj[iZzC];
            zzvvVar.zzc = this.zzn[iZzC];
            return -4;
        }
        zzI(zzamVar2, zzkvVar);
        return -5;
    }

    private final synchronized long zzE(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.zzo;
        if (i2 != 0) {
            long[] jArr = this.zzm;
            int i3 = this.zzq;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.zzr) != i2) {
                    i2 = i + 1;
                }
                int iZzB = zzB(i3, i2, j, false);
                if (iZzB != -1) {
                    return zzG(iZzB);
                }
            }
        }
        return -1L;
    }

    private final synchronized long zzF() {
        int i = this.zzo;
        if (i == 0) {
            return -1L;
        }
        return zzG(i);
    }

    @GuardedBy("this")
    private final long zzG(int i) {
        long j = this.zzt;
        long jMax = Long.MIN_VALUE;
        if (i != 0) {
            int iZzC = zzC(i - 1);
            for (int i2 = 0; i2 < i; i2++) {
                jMax = Math.max(jMax, this.zzm[iZzC]);
                if ((this.zzl[iZzC] & 1) != 0) {
                    break;
                }
                iZzC--;
                if (iZzC == -1) {
                    iZzC = this.zzh - 1;
                }
            }
        }
        this.zzt = Math.max(j, jMax);
        this.zzo -= i;
        int i3 = this.zzp + i;
        this.zzp = i3;
        int i4 = this.zzq + i;
        this.zzq = i4;
        int i5 = this.zzh;
        if (i4 >= i5) {
            this.zzq = i4 - i5;
        }
        int i6 = this.zzr - i;
        this.zzr = i6;
        if (i6 < 0) {
            this.zzr = 0;
        }
        this.zzc.zze(i3);
        if (this.zzo != 0) {
            return this.zzj[this.zzq];
        }
        int i7 = this.zzq;
        if (i7 == 0) {
            i7 = this.zzh;
        }
        int i8 = i7 - 1;
        return this.zzj[i8] + ((long) this.zzk[i8]);
    }

    private final synchronized void zzH(long j, int i, long j2, int i2, @Nullable zzadj zzadjVar) {
        int i3 = this.zzo;
        if (i3 > 0) {
            int iZzC = zzC(i3 - 1);
            zzef.zzd(this.zzj[iZzC] + ((long) this.zzk[iZzC]) <= j2);
        }
        this.zzv = (536870912 & i) != 0;
        this.zzu = Math.max(this.zzu, j);
        int iZzC2 = zzC(this.zzo);
        this.zzm[iZzC2] = j;
        this.zzj[iZzC2] = j2;
        this.zzk[iZzC2] = i2;
        this.zzl[iZzC2] = i;
        this.zzn[iZzC2] = zzadjVar;
        this.zzi[iZzC2] = 0;
        if (this.zzc.zzf() || !((zzvx) this.zzc.zzb()).zza.equals(this.zzz)) {
            zzam zzamVar = this.zzz;
            Objects.requireNonNull(zzamVar);
            this.zzc.zzc(this.zzp + this.zzo, new zzvx(zzamVar, zzrq.zzb, null));
        }
        int i4 = this.zzo + 1;
        this.zzo = i4;
        int i5 = this.zzh;
        if (i4 == i5) {
            int i6 = i5 + 1000;
            long[] jArr = new long[i6];
            long[] jArr2 = new long[i6];
            long[] jArr3 = new long[i6];
            int[] iArr = new int[i6];
            int[] iArr2 = new int[i6];
            zzadj[] zzadjVarArr = new zzadj[i6];
            int i7 = this.zzq;
            int i8 = i5 - i7;
            System.arraycopy(this.zzj, i7, jArr2, 0, i8);
            System.arraycopy(this.zzm, this.zzq, jArr3, 0, i8);
            System.arraycopy(this.zzl, this.zzq, iArr, 0, i8);
            System.arraycopy(this.zzk, this.zzq, iArr2, 0, i8);
            System.arraycopy(this.zzn, this.zzq, zzadjVarArr, 0, i8);
            System.arraycopy(this.zzi, this.zzq, jArr, 0, i8);
            int i9 = this.zzq;
            System.arraycopy(this.zzj, 0, jArr2, i8, i9);
            System.arraycopy(this.zzm, 0, jArr3, i8, i9);
            System.arraycopy(this.zzl, 0, iArr, i8, i9);
            System.arraycopy(this.zzk, 0, iArr2, i8, i9);
            System.arraycopy(this.zzn, 0, zzadjVarArr, i8, i9);
            System.arraycopy(this.zzi, 0, jArr, i8, i9);
            this.zzj = jArr2;
            this.zzm = jArr3;
            this.zzl = iArr;
            this.zzk = iArr2;
            this.zzn = zzadjVarArr;
            this.zzi = jArr;
            this.zzq = 0;
            this.zzh = i6;
        }
    }

    private final void zzI(zzam zzamVar, zzkv zzkvVar) {
        zzam zzamVar2 = this.zzg;
        zzad zzadVar = zzamVar2 == null ? null : zzamVar2.zzp;
        this.zzg = zzamVar;
        zzad zzadVar2 = zzamVar.zzp;
        zzkvVar.zza = zzamVar.zzc(this.zzd.zza(zzamVar));
        zzkvVar.zzb = this.zzC;
        if (zzamVar2 == null || !zzfs.zzF(zzadVar, zzadVar2)) {
            zzrs zzrsVar = zzamVar.zzp != null ? new zzrs(new zzrj(new zzru(1), 6001)) : null;
            this.zzC = zzrsVar;
            zzkvVar.zzb = zzrsVar;
        }
    }

    private final void zzJ() {
        if (this.zzC != null) {
            this.zzC = null;
            this.zzg = null;
        }
    }

    private final synchronized void zzK() {
        this.zzr = 0;
        this.zza.zzg();
    }

    private final boolean zzL() {
        return this.zzr != this.zzo;
    }

    private final boolean zzM(int i) {
        if (this.zzC != null) {
            return (this.zzl[i] & 1073741824) != 0 ? false : false;
        }
        return true;
    }

    private final synchronized boolean zzN(zzam zzamVar) {
        this.zzx = false;
        if (zzfs.zzF(zzamVar, this.zzz)) {
            return false;
        }
        if (this.zzc.zzf() || !((zzvx) this.zzc.zzb()).zza.equals(zzamVar)) {
            this.zzz = zzamVar;
        } else {
            this.zzz = ((zzvx) this.zzc.zzb()).zza;
        }
        boolean z = this.zzA;
        zzam zzamVar2 = this.zzz;
        this.zzA = z & zzce.zze(zzamVar2.zzm, zzamVar2.zzj);
        this.zzB = false;
        return true;
    }

    static /* synthetic */ void zzm(zzvx zzvxVar) {
        zzrq zzrqVar = zzvxVar.zzb;
        int i = zzrp.zza;
    }

    public final synchronized boolean zzA(long j, boolean z) {
        int iZzB;
        zzK();
        int i = this.zzr;
        int iZzC = zzC(i);
        if (zzL() && j >= this.zzm[iZzC]) {
            if (j > this.zzu) {
                if (z) {
                    z = true;
                }
            }
            if (this.zzA) {
                iZzB = this.zzo - i;
                int i2 = 0;
                while (true) {
                    if (i2 < iZzB) {
                        if (this.zzm[iZzC] >= j) {
                            iZzB = i2;
                            break;
                        }
                        iZzC++;
                        if (iZzC == this.zzh) {
                            iZzC = 0;
                        }
                        i2++;
                    } else if (!z) {
                        iZzB = -1;
                    }
                }
            } else {
                iZzB = zzB(iZzC, this.zzo - i, j, true);
            }
            if (iZzB != -1) {
                this.zzs = j;
                this.zzr += iZzB;
                return true;
            }
        }
        return false;
    }

    public final int zza() {
        return this.zzp;
    }

    public final int zzb() {
        return this.zzp + this.zzr;
    }

    public final synchronized int zzc(long j, boolean z) {
        int i = this.zzr;
        int iZzC = zzC(i);
        if (zzL() && j >= this.zzm[iZzC]) {
            if (j > this.zzu && z) {
                return this.zzo - i;
            }
            int iZzB = zzB(iZzC, this.zzo - i, j, true);
            if (iZzB == -1) {
                return 0;
            }
            return iZzB;
        }
        return 0;
    }

    public final int zzd() {
        return this.zzp + this.zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        if (r9 != 0) goto L19;
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zze(com.google.android.gms.internal.ads.zzkv r9, com.google.android.gms.internal.ads.zzib r10, int r11, boolean r12) {
        /*
            r8 = this;
            r0 = r11 & 2
            r1 = 1
            if (r0 == 0) goto L7
            r5 = 1
            goto L9
        L7:
            r0 = 0
            r5 = 0
        L9:
            com.google.android.gms.internal.ads.zzvv r7 = r8.zzb
            r2 = r8
            r3 = r9
            r4 = r10
            r6 = r12
            int r9 = r2.zzD(r3, r4, r5, r6, r7)
            r12 = -4
            if (r9 != r12) goto L3e
            boolean r9 = r10.zzf()
            if (r9 != 0) goto L3d
            r9 = r11 & 1
            r11 = r11 & 4
            if (r11 != 0) goto L34
            if (r9 == 0) goto L2c
            com.google.android.gms.internal.ads.zzvt r9 = r8.zza
            com.google.android.gms.internal.ads.zzvv r11 = r8.zzb
            r9.zzd(r10, r11)
            goto L3d
        L2c:
            com.google.android.gms.internal.ads.zzvt r9 = r8.zza
            com.google.android.gms.internal.ads.zzvv r11 = r8.zzb
            r9.zze(r10, r11)
            goto L37
        L34:
            if (r9 == 0) goto L37
            goto L3d
        L37:
            int r9 = r8.zzr
            int r9 = r9 + r1
            r8.zzr = r9
            return r12
        L3d:
            r9 = -4
        L3e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvz.zze(com.google.android.gms.internal.ads.zzkv, com.google.android.gms.internal.ads.zzib, int, boolean):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final /* synthetic */ int zzf(zzt zztVar, int i, boolean z) {
        return zzadi.zza(this, zztVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final int zzg(zzt zztVar, int i, boolean z, int i2) throws IOException {
        return this.zza.zza(zztVar, i, z);
    }

    public final synchronized long zzh() {
        return this.zzu;
    }

    @Nullable
    public final synchronized zzam zzi() {
        if (this.zzx) {
            return null;
        }
        return this.zzz;
    }

    public final void zzj(long j, boolean z, boolean z2) {
        this.zza.zzc(zzE(j, false, z2));
    }

    public final void zzk() {
        this.zza.zzc(zzF());
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final void zzl(zzam zzamVar) {
        this.zzy = zzamVar;
        boolean zZzN = zzN(zzamVar);
        zzvy zzvyVar = this.zzf;
        if (zzvyVar == null || !zZzN) {
            return;
        }
        zzvyVar.zzM(zzamVar);
    }

    @CallSuper
    public final void zzn() throws IOException {
        zzrs zzrsVar = this.zzC;
        if (zzrsVar != null) {
            throw zzrsVar.zza();
        }
    }

    @CallSuper
    public final void zzo() {
        zzk();
        zzJ();
    }

    @CallSuper
    public final void zzp() {
        zzq(true);
        zzJ();
    }

    @CallSuper
    public final void zzq(boolean z) {
        this.zza.zzf();
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzw = true;
        this.zzs = Long.MIN_VALUE;
        this.zzt = Long.MIN_VALUE;
        this.zzu = Long.MIN_VALUE;
        this.zzv = false;
        this.zzc.zzd();
        if (z) {
            this.zzy = null;
            this.zzz = null;
            this.zzx = true;
            this.zzA = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final /* synthetic */ void zzr(zzfj zzfjVar, int i) {
        zzadi.zzb(this, zzfjVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final void zzs(zzfj zzfjVar, int i, int i2) {
        this.zza.zzh(zzfjVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final void zzt(long j, int i, int i2, int i3, @Nullable zzadj zzadjVar) {
        if (this.zzw) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.zzw = false;
            }
        }
        if (this.zzA) {
            if (j < this.zzs) {
                return;
            }
            if ((i & 1) == 0) {
                if (!this.zzB) {
                    zzez.zzf("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.zzz)));
                    this.zzB = true;
                }
                i |= 1;
            }
        }
        zzH(j, i, (this.zza.zzb() - ((long) i2)) - ((long) i3), i2, zzadjVar);
    }

    public final void zzu(long j) {
        this.zzs = j;
    }

    public final void zzv(@Nullable zzvy zzvyVar) {
        this.zzf = zzvyVar;
    }

    public final synchronized void zzw(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.zzr + i <= this.zzo) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzef.zzd(z);
        this.zzr += i;
    }

    public final synchronized boolean zzx() {
        return this.zzv;
    }

    @CallSuper
    public final synchronized boolean zzy(boolean z) {
        boolean z2 = true;
        if (zzL()) {
            if (((zzvx) this.zzc.zza(this.zzp + this.zzr)).zza != this.zzg) {
                return true;
            }
            return zzM(zzC(this.zzr));
        }
        if (!z && !this.zzv) {
            zzam zzamVar = this.zzz;
            if (zzamVar == null) {
                z2 = false;
            } else if (zzamVar == this.zzg) {
                return false;
            }
        }
        return z2;
    }

    public final synchronized boolean zzz(int i) {
        boolean z;
        zzK();
        int i2 = this.zzp;
        if (i < i2 || i > this.zzo + i2) {
            z = false;
        } else {
            this.zzs = Long.MIN_VALUE;
            this.zzr = i - i2;
            z = true;
        }
        return z;
    }
}
