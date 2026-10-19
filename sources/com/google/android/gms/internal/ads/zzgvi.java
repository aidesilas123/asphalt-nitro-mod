package com.google.android.gms.internal.ads;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgvi extends zzgvm {
    private final Iterable zze;
    private final Iterator zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;

    /* synthetic */ zzgvi(Iterable iterable, int i, boolean z, zzgvh zzgvhVar) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zzh = i;
        this.zze = iterable;
        this.zzf = iterable.iterator();
        this.zzl = 0;
        if (i != 0) {
            zzN();
            return;
        }
        this.zzg = zzgww.zze;
        this.zzm = 0L;
        this.zzn = 0L;
        this.zzo = 0L;
    }

    private final int zzJ() {
        return (int) ((((long) (this.zzh - this.zzl)) - this.zzm) + this.zzn);
    }

    private final void zzK() throws zzgwy {
        if (!this.zzf.hasNext()) {
            throw zzgwy.zzj();
        }
        zzN();
    }

    private final void zzL(byte[] bArr, int i, int i2) throws IOException {
        if (i2 > zzJ()) {
            if (i2 > 0) {
                throw zzgwy.zzj();
            }
            return;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.zzo - this.zzm == 0) {
                zzK();
            }
            int iMin = Math.min(i3, (int) (this.zzo - this.zzm));
            long j = iMin;
            zzgzq.zzo(this.zzm, bArr, i2 - i3, j);
            i3 -= iMin;
            this.zzm += j;
        }
    }

    private final void zzM() {
        int i = this.zzh + this.zzi;
        this.zzh = i;
        int i2 = this.zzj;
        if (i <= i2) {
            this.zzi = 0;
            return;
        }
        int i3 = i - i2;
        this.zzi = i3;
        this.zzh = i - i3;
    }

    private final void zzN() {
        ByteBuffer byteBuffer = (ByteBuffer) this.zzf.next();
        this.zzg = byteBuffer;
        this.zzl += (int) (this.zzm - this.zzn);
        long jPosition = byteBuffer.position();
        this.zzm = jPosition;
        this.zzn = jPosition;
        this.zzo = this.zzg.limit();
        long jZze = zzgzq.zze(this.zzg);
        this.zzm += jZze;
        this.zzn += jZze;
        this.zzo += jZze;
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final void zzA(int i) {
        this.zzj = i;
        zzM();
    }

    public final void zzB(int i) throws IOException {
        if (i >= 0) {
            if (i <= (((long) (this.zzh - this.zzl)) - this.zzm) + this.zzn) {
                while (i > 0) {
                    if (this.zzo - this.zzm == 0) {
                        zzK();
                    }
                    int iMin = Math.min(i, (int) (this.zzo - this.zzm));
                    i -= iMin;
                    this.zzm += (long) iMin;
                }
                return;
            }
        }
        if (i >= 0) {
            throw zzgwy.zzj();
        }
        throw zzgwy.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final boolean zzC() throws IOException {
        return (((long) this.zzl) + this.zzm) - this.zzn == ((long) this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final boolean zzD() throws IOException {
        return zzr() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final boolean zzE(int i) throws IOException {
        int iZzm;
        int i2 = i & 7;
        if (i2 == 0) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (zza() >= 0) {
                    return true;
                }
            }
            throw zzgwy.zze();
        }
        if (i2 == 1) {
            zzB(8);
            return true;
        }
        if (i2 == 2) {
            zzB(zzj());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzgwy.zza();
            }
            zzB(4);
            return true;
        }
        do {
            iZzm = zzm();
            if (iZzm == 0) {
                break;
            }
        } while (zzE(iZzm));
        zzz(((i >>> 3) << 3) | 4);
        return true;
    }

    public final byte zza() throws IOException {
        if (this.zzo - this.zzm == 0) {
            zzK();
        }
        long j = this.zzm;
        this.zzm = 1 + j;
        return zzgzq.zza(j);
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final double zzb() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final float zzc() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzd() {
        return (int) ((((long) this.zzl) + this.zzm) - this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zze(int i) throws zzgwy {
        if (i < 0) {
            throw zzgwy.zzf();
        }
        int iZzd = i + zzd();
        int i2 = this.zzj;
        if (iZzd > i2) {
            throw zzgwy.zzj();
        }
        this.zzj = iZzd;
        zzM();
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzf() throws IOException {
        return zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzg() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzh() throws IOException {
        return zzj();
    }

    public final int zzi() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 < 4) {
            int iZza = zza() & 255;
            int iZza2 = (zza() & 255) << 8;
            return iZza | iZza2 | ((zza() & 255) << 16) | ((zza() & 255) << 24);
        }
        this.zzm = 4 + j2;
        int iZza3 = zzgzq.zza(j2) & 255;
        int iZza4 = (zzgzq.zza(1 + j2) & 255) << 8;
        return iZza3 | iZza4 | ((zzgzq.zza(2 + j2) & 255) << 16) | ((zzgzq.zza(j2 + 3) & 255) << 24);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
    
        if (com.google.android.gms.internal.ads.zzgzq.zza(r4) >= 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int zzj() throws java.io.IOException {
        /*
            r10 = this;
            long r0 = r10.zzm
            long r2 = r10.zzo
            int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r4 != 0) goto La
            goto L8c
        La:
            r2 = 1
            long r4 = r0 + r2
            byte r0 = com.google.android.gms.internal.ads.zzgzq.zza(r0)
            if (r0 < 0) goto L1a
            long r4 = r10.zzm
            long r4 = r4 + r2
            r10.zzm = r4
            return r0
        L1a:
            long r6 = r10.zzo
            long r8 = r10.zzm
            long r6 = r6 - r8
            r8 = 10
            int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r1 < 0) goto L8c
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r4)
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L33
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L89
        L33:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r6)
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L42
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L40:
            r6 = r4
            goto L89
        L42:
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r4)
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L52
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L89
        L52:
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r6)
            int r6 = r1 << 28
            r0 = r0 ^ r6
            r6 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r6
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r4)
            if (r1 >= 0) goto L89
            long r4 = r6 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r6)
            if (r1 >= 0) goto L40
            long r6 = r4 + r2
            byte r1 = com.google.android.gms.internal.ads.zzgzq.zza(r4)
            if (r1 < 0) goto L8c
        L89:
            r10.zzm = r6
            return r0
        L8c:
            long r0 = r10.zzs()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgvi.zzj():int");
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzk() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzl() throws IOException {
        return zzgvm.zzF(zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzm() throws IOException {
        if (zzC()) {
            this.zzk = 0;
            return 0;
        }
        int iZzj = zzj();
        this.zzk = iZzj;
        if ((iZzj >>> 3) != 0) {
            return iZzj;
        }
        throw zzgwy.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int zzn() throws IOException {
        return zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final long zzo() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final long zzp() throws IOException {
        return zzr();
    }

    public final long zzq() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 < 8) {
            long jZza = ((long) zza()) & 255;
            long jZza2 = (((long) zza()) & 255) << 8;
            long jZza3 = (((long) zza()) & 255) << 16;
            long jZza4 = (((long) zza()) & 255) << 24;
            long jZza5 = (((long) zza()) & 255) << 32;
            long jZza6 = (((long) zza()) & 255) << 40;
            return jZza | jZza2 | jZza3 | jZza4 | jZza5 | jZza6 | ((((long) zza()) & 255) << 48) | ((((long) zza()) & 255) << 56);
        }
        this.zzm = 8 + j2;
        long jZza7 = ((long) zzgzq.zza(j2)) & 255;
        long jZza8 = (((long) zzgzq.zza(1 + j2)) & 255) << 8;
        long jZza9 = (((long) zzgzq.zza(j2 + 2)) & 255) << 16;
        long jZza10 = (((long) zzgzq.zza(j2 + 3)) & 255) << 24;
        long jZza11 = (((long) zzgzq.zza(4 + j2)) & 255) << 32;
        long jZza12 = (((long) zzgzq.zza(j2 + 5)) & 255) << 40;
        return jZza7 | jZza8 | jZza9 | jZza10 | jZza11 | jZza12 | ((((long) zzgzq.zza(j2 + 6)) & 255) << 48) | ((((long) zzgzq.zza(j2 + 7)) & 255) << 56);
    }

    public final long zzr() throws IOException {
        long jZza;
        long j;
        long j2;
        int i;
        long j3 = this.zzm;
        if (this.zzo != j3) {
            long j4 = j3 + 1;
            byte bZza = zzgzq.zza(j3);
            if (bZza >= 0) {
                this.zzm++;
                return bZza;
            }
            if (this.zzo - this.zzm >= 10) {
                long j5 = j4 + 1;
                int iZza = bZza ^ (zzgzq.zza(j4) << 7);
                if (iZza >= 0) {
                    long j6 = j5 + 1;
                    int iZza2 = iZza ^ (zzgzq.zza(j5) << Ascii.SO);
                    if (iZza2 >= 0) {
                        jZza = iZza2 ^ 16256;
                    } else {
                        j5 = j6 + 1;
                        int iZza3 = iZza2 ^ (zzgzq.zza(j6) << Ascii.NAK);
                        if (iZza3 < 0) {
                            i = iZza3 ^ (-2080896);
                        } else {
                            j6 = j5 + 1;
                            long jZza2 = ((long) iZza3) ^ (((long) zzgzq.zza(j5)) << 28);
                            if (jZza2 < 0) {
                                long j7 = j6 + 1;
                                long jZza3 = jZza2 ^ (((long) zzgzq.zza(j6)) << 35);
                                if (jZza3 < 0) {
                                    j = -34093383808L;
                                } else {
                                    j6 = j7 + 1;
                                    jZza2 = jZza3 ^ (((long) zzgzq.zza(j7)) << 42);
                                    if (jZza2 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        j7 = j6 + 1;
                                        jZza3 = jZza2 ^ (((long) zzgzq.zza(j6)) << 49);
                                        if (jZza3 >= 0) {
                                            j6 = j7 + 1;
                                            jZza = (jZza3 ^ (((long) zzgzq.zza(j7)) << 56)) ^ 71499008037633920L;
                                            if (jZza < 0) {
                                                long j8 = 1 + j6;
                                                if (zzgzq.zza(j6) >= 0) {
                                                    j5 = j8;
                                                }
                                            }
                                            this.zzm = j5;
                                            return jZza;
                                        }
                                        j = -558586000294016L;
                                    }
                                }
                                jZza = jZza3 ^ j;
                                j5 = j7;
                                this.zzm = j5;
                                return jZza;
                            }
                            j2 = 266354560;
                            jZza = jZza2 ^ j2;
                        }
                    }
                    j5 = j6;
                    this.zzm = j5;
                    return jZza;
                }
                i = iZza ^ (-128);
                jZza = i;
                this.zzm = j5;
                return jZza;
            }
        }
        return zzs();
    }

    final long zzs() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZza = zza();
            j |= ((long) (bZza & Ascii.DEL)) << i;
            if ((bZza & 128) == 0) {
                return j;
            }
        }
        throw zzgwy.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final long zzt() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final long zzu() throws IOException {
        return zzgvm.zzG(zzr());
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final long zzv() throws IOException {
        return zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final zzgve zzw() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = iZzj;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[iZzj];
                zzgzq.zzo(j2, bArr, 0L, j3);
                this.zzm += j3;
                return new zzgva(bArr);
            }
        }
        if (iZzj > 0 && iZzj <= zzJ()) {
            byte[] bArr2 = new byte[iZzj];
            zzL(bArr2, 0, iZzj);
            return new zzgva(bArr2);
        }
        if (iZzj == 0) {
            return zzgve.zzb;
        }
        if (iZzj < 0) {
            throw zzgwy.zzf();
        }
        throw zzgwy.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final String zzx() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = iZzj;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[iZzj];
                zzgzq.zzo(j2, bArr, 0L, j3);
                String str = new String(bArr, zzgww.zzb);
                this.zzm += j3;
                return str;
            }
        }
        if (iZzj > 0 && iZzj <= zzJ()) {
            byte[] bArr2 = new byte[iZzj];
            zzL(bArr2, 0, iZzj);
            return new String(bArr2, zzgww.zzb);
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj < 0) {
            throw zzgwy.zzf();
        }
        throw zzgwy.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final String zzy() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = iZzj;
            if (j3 <= j - j2) {
                String strZzg = zzgzv.zzg(this.zzg, (int) (j2 - this.zzn), iZzj);
                this.zzm += j3;
                return strZzg;
            }
        }
        if (iZzj >= 0 && iZzj <= zzJ()) {
            byte[] bArr = new byte[iZzj];
            zzL(bArr, 0, iZzj);
            return zzgzv.zzh(bArr, 0, iZzj);
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj <= 0) {
            throw zzgwy.zzf();
        }
        throw zzgwy.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final void zzz(int i) throws zzgwy {
        if (this.zzk != i) {
            throw zzgwy.zzb();
        }
    }
}
