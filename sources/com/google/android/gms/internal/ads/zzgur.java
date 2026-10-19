package com.google.android.gms.internal.ads;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzgur {
    static int zza(byte[] bArr, int i, zzguq zzguqVar) throws zzgwy {
        int iZzh = zzh(bArr, i, zzguqVar);
        int i2 = zzguqVar.zza;
        if (i2 < 0) {
            throw zzgwy.zzf();
        }
        if (i2 > bArr.length - iZzh) {
            throw zzgwy.zzj();
        }
        if (i2 == 0) {
            zzguqVar.zzc = zzgve.zzb;
            return iZzh;
        }
        zzguqVar.zzc = zzgve.zzv(bArr, iZzh, i2);
        return iZzh + i2;
    }

    static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    static int zzc(zzgyp zzgypVar, byte[] bArr, int i, int i2, int i3, zzguq zzguqVar) throws IOException {
        Object objZze = zzgypVar.zze();
        int iZzl = zzl(objZze, zzgypVar, bArr, i, i2, i3, zzguqVar);
        zzgypVar.zzf(objZze);
        zzguqVar.zzc = objZze;
        return iZzl;
    }

    static int zzd(zzgyp zzgypVar, byte[] bArr, int i, int i2, zzguq zzguqVar) throws IOException {
        Object objZze = zzgypVar.zze();
        int iZzm = zzm(objZze, zzgypVar, bArr, i, i2, zzguqVar);
        zzgypVar.zzf(objZze);
        zzguqVar.zzc = objZze;
        return iZzm;
    }

    static int zze(zzgyp zzgypVar, int i, byte[] bArr, int i2, int i3, zzgwv zzgwvVar, zzguq zzguqVar) throws IOException {
        int iZzd = zzd(zzgypVar, bArr, i2, i3, zzguqVar);
        zzgwvVar.add(zzguqVar.zzc);
        while (iZzd < i3) {
            int iZzh = zzh(bArr, iZzd, zzguqVar);
            if (i != zzguqVar.zza) {
                break;
            }
            iZzd = zzd(zzgypVar, bArr, iZzh, i3, zzguqVar);
            zzgwvVar.add(zzguqVar.zzc);
        }
        return iZzd;
    }

    static int zzf(byte[] bArr, int i, zzgwv zzgwvVar, zzguq zzguqVar) throws IOException {
        zzgwn zzgwnVar = (zzgwn) zzgwvVar;
        int iZzh = zzh(bArr, i, zzguqVar);
        int i2 = zzguqVar.zza + iZzh;
        while (iZzh < i2) {
            iZzh = zzh(bArr, iZzh, zzguqVar);
            zzgwnVar.zzh(zzguqVar.zza);
        }
        if (iZzh == i2) {
            return iZzh;
        }
        throw zzgwy.zzj();
    }

    static int zzg(int i, byte[] bArr, int i2, int i3, zzgzh zzgzhVar, zzguq zzguqVar) throws zzgwy {
        if ((i >>> 3) == 0) {
            throw zzgwy.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iZzk = zzk(bArr, i2, zzguqVar);
            zzgzhVar.zzj(i, Long.valueOf(zzguqVar.zzb));
            return iZzk;
        }
        if (i4 == 1) {
            zzgzhVar.zzj(i, Long.valueOf(zzn(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iZzh = zzh(bArr, i2, zzguqVar);
            int i5 = zzguqVar.zza;
            if (i5 < 0) {
                throw zzgwy.zzf();
            }
            if (i5 > bArr.length - iZzh) {
                throw zzgwy.zzj();
            }
            if (i5 == 0) {
                zzgzhVar.zzj(i, zzgve.zzb);
            } else {
                zzgzhVar.zzj(i, zzgve.zzv(bArr, iZzh, i5));
            }
            return iZzh + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw zzgwy.zzc();
            }
            zzgzhVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzgzh zzgzhVarZzf = zzgzh.zzf();
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int iZzh2 = zzh(bArr, i2, zzguqVar);
            int i8 = zzguqVar.zza;
            i7 = i8;
            if (i8 == i6) {
                i2 = iZzh2;
                break;
            }
            int iZzg = zzg(i7, bArr, iZzh2, i3, zzgzhVarZzf, zzguqVar);
            i7 = i8;
            i2 = iZzg;
        }
        if (i2 > i3 || i7 != i6) {
            throw zzgwy.zzg();
        }
        zzgzhVar.zzj(i, zzgzhVarZzf);
        return i2;
    }

    static int zzh(byte[] bArr, int i, zzguq zzguqVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzi(b, bArr, i2, zzguqVar);
        }
        zzguqVar.zza = b;
        return i2;
    }

    static int zzi(int i, byte[] bArr, int i2, zzguq zzguqVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzguqVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Ascii.DEL) << 7);
        int i6 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzguqVar.zza = i5 | (b2 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b2 & Ascii.DEL) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzguqVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & Ascii.DEL) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzguqVar.zza = i9 | (b4 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b4 & Ascii.DEL) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzguqVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzj(int i, byte[] bArr, int i2, int i3, zzgwv zzgwvVar, zzguq zzguqVar) {
        zzgwn zzgwnVar = (zzgwn) zzgwvVar;
        int iZzh = zzh(bArr, i2, zzguqVar);
        zzgwnVar.zzh(zzguqVar.zza);
        while (iZzh < i3) {
            int iZzh2 = zzh(bArr, iZzh, zzguqVar);
            if (i != zzguqVar.zza) {
                break;
            }
            iZzh = zzh(bArr, iZzh2, zzguqVar);
            zzgwnVar.zzh(zzguqVar.zza);
        }
        return iZzh;
    }

    static int zzk(byte[] bArr, int i, zzguq zzguqVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzguqVar.zzb = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & Ascii.DEL)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & Ascii.DEL)) << i4;
            i3 = i5;
            b = b2;
        }
        zzguqVar.zzb = j2;
        return i3;
    }

    static int zzl(Object obj, zzgyp zzgypVar, byte[] bArr, int i, int i2, int i3, zzguq zzguqVar) throws IOException {
        int iZzc = ((zzgxz) zzgypVar).zzc(obj, bArr, i, i2, i3, zzguqVar);
        zzguqVar.zzc = obj;
        return iZzc;
    }

    static int zzm(Object obj, zzgyp zzgypVar, byte[] bArr, int i, int i2, zzguq zzguqVar) throws IOException {
        int iZzi = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZzi = zzi(i3, bArr, iZzi, zzguqVar);
            i3 = zzguqVar.zza;
        }
        int i4 = iZzi;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzgwy.zzj();
        }
        int i5 = i3 + i4;
        zzgypVar.zzi(obj, bArr, i4, i5, zzguqVar);
        zzguqVar.zzc = obj;
        return i5;
    }

    static long zzn(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }
}
