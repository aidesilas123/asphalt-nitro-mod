package com.google.android.gms.internal.ads;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzvt {
    private final zzfj zza = new zzfj(32);
    private zzvs zzb;
    private zzvs zzc;
    private zzvs zzd;
    private long zze;
    private final zzyn zzf;

    public zzvt(zzyn zzynVar) {
        this.zzf = zzynVar;
        zzvs zzvsVar = new zzvs(0L, 65536);
        this.zzb = zzvsVar;
        this.zzc = zzvsVar;
        this.zzd = zzvsVar;
    }

    private final int zzi(int i) {
        zzvs zzvsVar = this.zzd;
        if (zzvsVar.zzc == null) {
            zzyg zzygVarZzb = this.zzf.zzb();
            zzvs zzvsVar2 = new zzvs(this.zzd.zzb, 65536);
            zzvsVar.zzc = zzygVarZzb;
            zzvsVar.zzd = zzvsVar2;
        }
        return Math.min(i, (int) (this.zzd.zzb - this.zze));
    }

    private static zzvs zzj(zzvs zzvsVar, long j) {
        while (j >= zzvsVar.zzb) {
            zzvsVar = zzvsVar.zzd;
        }
        return zzvsVar;
    }

    private static zzvs zzk(zzvs zzvsVar, long j, ByteBuffer byteBuffer, int i) {
        zzvs zzvsVarZzj = zzj(zzvsVar, j);
        while (i > 0) {
            int iMin = Math.min(i, (int) (zzvsVarZzj.zzb - j));
            byteBuffer.put(zzvsVarZzj.zzc.zza, zzvsVarZzj.zza(j), iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == zzvsVarZzj.zzb) {
                zzvsVarZzj = zzvsVarZzj.zzd;
            }
        }
        return zzvsVarZzj;
    }

    private static zzvs zzl(zzvs zzvsVar, long j, byte[] bArr, int i) {
        zzvs zzvsVarZzj = zzj(zzvsVar, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (zzvsVarZzj.zzb - j));
            System.arraycopy(zzvsVarZzj.zzc.zza, zzvsVarZzj.zza(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == zzvsVarZzj.zzb) {
                zzvsVarZzj = zzvsVarZzj.zzd;
            }
        }
        return zzvsVarZzj;
    }

    private static zzvs zzm(zzvs zzvsVar, zzib zzibVar, zzvv zzvvVar, zzfj zzfjVar) {
        zzvs zzvsVarZzl;
        int iZzp;
        if (zzibVar.zzk()) {
            long j = zzvvVar.zzb;
            zzfjVar.zzD(1);
            zzvs zzvsVarZzl2 = zzl(zzvsVar, j, zzfjVar.zzI(), 1);
            long j2 = j + 1;
            byte b = zzfjVar.zzI()[0];
            int i = b & 128;
            int i2 = b & Ascii.DEL;
            zzhy zzhyVar = zzibVar.zzb;
            byte[] bArr = zzhyVar.zza;
            if (bArr == null) {
                zzhyVar.zza = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            boolean z = i != 0;
            zzvsVarZzl = zzl(zzvsVarZzl2, j2, zzhyVar.zza, i2);
            long j3 = j2 + ((long) i2);
            if (z) {
                zzfjVar.zzD(2);
                zzvsVarZzl = zzl(zzvsVarZzl, j3, zzfjVar.zzI(), 2);
                j3 += 2;
                iZzp = zzfjVar.zzp();
            } else {
                iZzp = 1;
            }
            int[] iArr = zzhyVar.zzd;
            if (iArr == null || iArr.length < iZzp) {
                iArr = new int[iZzp];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = zzhyVar.zze;
            if (iArr3 == null || iArr3.length < iZzp) {
                iArr3 = new int[iZzp];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i3 = iZzp * 6;
                zzfjVar.zzD(i3);
                zzvsVarZzl = zzl(zzvsVarZzl, j3, zzfjVar.zzI(), i3);
                j3 += (long) i3;
                zzfjVar.zzG(0);
                for (int i4 = 0; i4 < iZzp; i4++) {
                    iArr2[i4] = zzfjVar.zzp();
                    iArr4[i4] = zzfjVar.zzo();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = zzvvVar.zza - ((int) (j3 - zzvvVar.zzb));
            }
            zzadj zzadjVar = zzvvVar.zzc;
            int i5 = zzfs.zza;
            zzhyVar.zzc(iZzp, iArr2, iArr4, zzadjVar.zzb, zzhyVar.zza, zzadjVar.zza, zzadjVar.zzc, zzadjVar.zzd);
            long j4 = zzvvVar.zzb;
            int i6 = (int) (j3 - j4);
            zzvvVar.zzb = j4 + ((long) i6);
            zzvvVar.zza -= i6;
        } else {
            zzvsVarZzl = zzvsVar;
        }
        if (!zzibVar.zze()) {
            zzibVar.zzi(zzvvVar.zza);
            return zzk(zzvsVarZzl, zzvvVar.zzb, zzibVar.zzc, zzvvVar.zza);
        }
        zzfjVar.zzD(4);
        zzvs zzvsVarZzl3 = zzl(zzvsVarZzl, zzvvVar.zzb, zzfjVar.zzI(), 4);
        int iZzo = zzfjVar.zzo();
        zzvvVar.zzb += 4;
        zzvvVar.zza -= 4;
        zzibVar.zzi(iZzo);
        zzvs zzvsVarZzk = zzk(zzvsVarZzl3, zzvvVar.zzb, zzibVar.zzc, iZzo);
        zzvvVar.zzb += (long) iZzo;
        int i7 = zzvvVar.zza - iZzo;
        zzvvVar.zza = i7;
        ByteBuffer byteBuffer = zzibVar.zzf;
        if (byteBuffer == null || byteBuffer.capacity() < i7) {
            zzibVar.zzf = ByteBuffer.allocate(i7);
        } else {
            zzibVar.zzf.clear();
        }
        return zzk(zzvsVarZzk, zzvvVar.zzb, zzibVar.zzf, zzvvVar.zza);
    }

    private final void zzn(int i) {
        long j = this.zze + ((long) i);
        this.zze = j;
        zzvs zzvsVar = this.zzd;
        if (j == zzvsVar.zzb) {
            this.zzd = zzvsVar.zzd;
        }
    }

    public final int zza(zzt zztVar, int i, boolean z) throws IOException {
        int iZzi = zzi(i);
        zzvs zzvsVar = this.zzd;
        int iZza = zztVar.zza(zzvsVar.zzc.zza, zzvsVar.zza(this.zze), iZzi);
        if (iZza != -1) {
            zzn(iZza);
            return iZza;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public final long zzb() {
        return this.zze;
    }

    public final void zzc(long j) {
        zzvs zzvsVar;
        if (j != -1) {
            while (true) {
                zzvsVar = this.zzb;
                if (j < zzvsVar.zzb) {
                    break;
                }
                this.zzf.zzc(zzvsVar.zzc);
                this.zzb = this.zzb.zzb();
            }
            if (this.zzc.zza < zzvsVar.zza) {
                this.zzc = zzvsVar;
            }
        }
    }

    public final void zzd(zzib zzibVar, zzvv zzvvVar) {
        zzm(this.zzc, zzibVar, zzvvVar, this.zza);
    }

    public final void zze(zzib zzibVar, zzvv zzvvVar) {
        this.zzc = zzm(this.zzc, zzibVar, zzvvVar, this.zza);
    }

    public final void zzf() {
        zzvs zzvsVar = this.zzb;
        if (zzvsVar.zzc != null) {
            this.zzf.zzd(zzvsVar);
            zzvsVar.zzb();
        }
        this.zzb.zze(0L, 65536);
        zzvs zzvsVar2 = this.zzb;
        this.zzc = zzvsVar2;
        this.zzd = zzvsVar2;
        this.zze = 0L;
        this.zzf.zzg();
    }

    public final void zzg() {
        this.zzc = this.zzb;
    }

    public final void zzh(zzfj zzfjVar, int i) {
        while (i > 0) {
            int iZzi = zzi(i);
            zzvs zzvsVar = this.zzd;
            zzfjVar.zzC(zzvsVar.zzc.zza, zzvsVar.zza(this.zze), iZzi);
            i -= iZzi;
            zzn(iZzi);
        }
    }
}
