package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaia {
    private static final byte[] zza;

    static {
        int i = zzfs.zza;
        zza = "OpusHead".getBytes(zzftl.zzc);
    }

    @Nullable
    public static zzcb zza(zzahq zzahqVar) {
        zzfw zzfwVar;
        zzahr zzahrVarZzb = zzahqVar.zzb(1751411826);
        zzahr zzahrVarZzb2 = zzahqVar.zzb(1801812339);
        zzahr zzahrVarZzb3 = zzahqVar.zzb(1768715124);
        if (zzahrVarZzb != null && zzahrVarZzb2 != null && zzahrVarZzb3 != null && zzg(zzahrVarZzb.zza) == 1835299937) {
            zzfj zzfjVar = zzahrVarZzb2.zza;
            zzfjVar.zzG(12);
            int iZzf = zzfjVar.zzf();
            String[] strArr = new String[iZzf];
            for (int i = 0; i < iZzf; i++) {
                int iZzf2 = zzfjVar.zzf();
                zzfjVar.zzH(4);
                strArr[i] = zzfjVar.zzy(iZzf2 - 8, zzftl.zzc);
            }
            zzfj zzfjVar2 = zzahrVarZzb3.zza;
            zzfjVar2.zzG(8);
            ArrayList arrayList = new ArrayList();
            while (zzfjVar2.zza() > 8) {
                int iZzc = zzfjVar2.zzc() + zzfjVar2.zzf();
                int iZzf3 = zzfjVar2.zzf() - 1;
                if (iZzf3 < 0 || iZzf3 >= iZzf) {
                    zzez.zzf("AtomParsers", "Skipped metadata with unknown key index: " + iZzf3);
                } else {
                    String str = strArr[iZzf3];
                    int i2 = zzaih.zzb;
                    while (true) {
                        int iZzc2 = zzfjVar2.zzc();
                        if (iZzc2 >= iZzc) {
                            zzfwVar = null;
                            break;
                        }
                        int iZzf4 = zzfjVar2.zzf();
                        if (zzfjVar2.zzf() == 1684108385) {
                            int iZzf5 = zzfjVar2.zzf();
                            int iZzf6 = zzfjVar2.zzf();
                            int i3 = iZzf4 - 16;
                            byte[] bArr = new byte[i3];
                            zzfjVar2.zzC(bArr, 0, i3);
                            zzfwVar = new zzfw(str, bArr, iZzf6, iZzf5);
                            break;
                        }
                        zzfjVar2.zzG(iZzc2 + iZzf4);
                    }
                    if (zzfwVar != null) {
                        arrayList.add(zzfwVar);
                    }
                }
                zzfjVar2.zzG(iZzc);
            }
            if (!arrayList.isEmpty()) {
                return new zzcb(arrayList);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzcb zzb(com.google.android.gms.internal.ads.zzahr r14) {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaia.zzb(com.google.android.gms.internal.ads.zzahr):com.google.android.gms.internal.ads.zzcb");
    }

    public static zzgc zzc(zzfj zzfjVar) {
        long jZzs;
        long jZzs2;
        zzfjVar.zzG(8);
        if (zzahs.zze(zzfjVar.zzf()) == 0) {
            jZzs = zzfjVar.zzt();
            jZzs2 = zzfjVar.zzt();
        } else {
            jZzs = zzfjVar.zzs();
            jZzs2 = zzfjVar.zzs();
        }
        return new zzgc(jZzs, jZzs2, zzfjVar.zzt());
    }

    /* JADX WARN: Removed duplicated region for block: B:313:0x0621  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x098b  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0993  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0997  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0a03 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List zzd(com.google.android.gms.internal.ads.zzahq r58, com.google.android.gms.internal.ads.zzacu r59, long r60, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzad r62, boolean r63, boolean r64, com.google.android.gms.internal.ads.zzftn r65) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 2573
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaia.zzd(com.google.android.gms.internal.ads.zzahq, com.google.android.gms.internal.ads.zzacu, long, com.google.android.gms.internal.ads.zzad, boolean, boolean, com.google.android.gms.internal.ads.zzftn):java.util.List");
    }

    public static void zze(zzfj zzfjVar) {
        int iZzc = zzfjVar.zzc();
        zzfjVar.zzH(4);
        if (zzfjVar.zzf() != 1751411826) {
            iZzc += 4;
        }
        zzfjVar.zzG(iZzc);
    }

    private static int zzf(zzfj zzfjVar) {
        int iZzl = zzfjVar.zzl();
        int i = iZzl & 127;
        while ((iZzl & 128) == 128) {
            iZzl = zzfjVar.zzl();
            i = (i << 7) | (iZzl & 127);
        }
        return i;
    }

    private static int zzg(zzfj zzfjVar) {
        zzfjVar.zzG(16);
        return zzfjVar.zzf();
    }

    @Nullable
    private static Pair zzh(zzfj zzfjVar, int i, int i2) throws zzcf {
        Integer num;
        zzaiq zzaiqVar;
        Pair pairCreate;
        int i3;
        int i4;
        byte[] bArr;
        int iZzc = zzfjVar.zzc();
        while (iZzc - i < i2) {
            zzfjVar.zzG(iZzc);
            int iZzf = zzfjVar.zzf();
            zzaci.zzb(iZzf > 0, "childAtomSize must be positive");
            if (zzfjVar.zzf() == 1936289382) {
                int i5 = iZzc + 8;
                int i6 = -1;
                int i7 = 0;
                String strZzy = null;
                Integer numValueOf = null;
                while (i5 - iZzc < iZzf) {
                    zzfjVar.zzG(i5);
                    int iZzf2 = zzfjVar.zzf();
                    int iZzf3 = zzfjVar.zzf();
                    if (iZzf3 == 1718775137) {
                        numValueOf = Integer.valueOf(zzfjVar.zzf());
                    } else if (iZzf3 == 1935894637) {
                        zzfjVar.zzH(4);
                        strZzy = zzfjVar.zzy(4, zzftl.zzc);
                    } else if (iZzf3 == 1935894633) {
                        i6 = i5;
                        i7 = iZzf2;
                    }
                    i5 += iZzf2;
                }
                if (C.CENC_TYPE_cenc.equals(strZzy) || C.CENC_TYPE_cbc1.equals(strZzy) || C.CENC_TYPE_cens.equals(strZzy) || C.CENC_TYPE_cbcs.equals(strZzy)) {
                    zzaci.zzb(numValueOf != null, "frma atom is mandatory");
                    zzaci.zzb(i6 != -1, "schi atom is mandatory");
                    int i8 = i6 + 8;
                    while (true) {
                        if (i8 - i6 >= i7) {
                            num = numValueOf;
                            zzaiqVar = null;
                            break;
                        }
                        zzfjVar.zzG(i8);
                        int iZzf4 = zzfjVar.zzf();
                        if (zzfjVar.zzf() == 1952804451) {
                            int iZze = zzahs.zze(zzfjVar.zzf());
                            zzfjVar.zzH(1);
                            if (iZze == 0) {
                                zzfjVar.zzH(1);
                                i3 = 0;
                                i4 = 0;
                            } else {
                                int iZzl = zzfjVar.zzl();
                                int i9 = (iZzl & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                                i3 = iZzl & 15;
                                i4 = i9;
                            }
                            boolean z = zzfjVar.zzl() == 1;
                            int iZzl2 = zzfjVar.zzl();
                            byte[] bArr2 = new byte[16];
                            zzfjVar.zzC(bArr2, 0, 16);
                            if (z && iZzl2 == 0) {
                                int iZzl3 = zzfjVar.zzl();
                                byte[] bArr3 = new byte[iZzl3];
                                zzfjVar.zzC(bArr3, 0, iZzl3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            num = numValueOf;
                            zzaiqVar = new zzaiq(z, strZzy, iZzl2, bArr2, i4, i3, bArr);
                        } else {
                            i8 += iZzf4;
                        }
                    }
                    zzaci.zzb(zzaiqVar != null, "tenc atom is mandatory");
                    int i10 = zzfs.zza;
                    pairCreate = Pair.create(num, zzaiqVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            iZzc += iZzf;
        }
        return null;
    }

    @Nullable
    private static zzcb zzi(zzfj zzfjVar) {
        short sZzz = zzfjVar.zzz();
        zzfjVar.zzH(2);
        String strZzy = zzfjVar.zzy(sZzz, zzftl.zzc);
        int iMax = Math.max(strZzy.lastIndexOf(43), strZzy.lastIndexOf(45));
        try {
            return new zzcb(C.TIME_UNSET, new zzfz(Float.parseFloat(strZzy.substring(0, iMax)), Float.parseFloat(strZzy.substring(iMax, strZzy.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }

    private static zzahu zzj(zzfj zzfjVar, int i) {
        zzfjVar.zzG(i + 12);
        zzfjVar.zzH(1);
        zzf(zzfjVar);
        zzfjVar.zzH(2);
        int iZzl = zzfjVar.zzl();
        if ((iZzl & 128) != 0) {
            zzfjVar.zzH(2);
        }
        if ((iZzl & 64) != 0) {
            zzfjVar.zzH(zzfjVar.zzl());
        }
        if ((iZzl & 32) != 0) {
            zzfjVar.zzH(2);
        }
        zzfjVar.zzH(1);
        zzf(zzfjVar);
        String strZzd = zzce.zzd(zzfjVar.zzl());
        if (MimeTypes.AUDIO_MPEG.equals(strZzd) || MimeTypes.AUDIO_DTS.equals(strZzd) || MimeTypes.AUDIO_DTS_HD.equals(strZzd)) {
            return new zzahu(strZzd, null, -1L, -1L);
        }
        zzfjVar.zzH(4);
        long jZzt = zzfjVar.zzt();
        long jZzt2 = zzfjVar.zzt();
        zzfjVar.zzH(1);
        int iZzf = zzf(zzfjVar);
        byte[] bArr = new byte[iZzf];
        zzfjVar.zzC(bArr, 0, iZzf);
        return new zzahu(strZzd, bArr, jZzt2 <= 0 ? -1L : jZzt2, jZzt > 0 ? jZzt : -1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0274 A[ADDED_TO_REGION, LOOP:12: B:102:0x0274->B:106:0x027e, LOOP_START, PHI: r16
      0x0274: PHI (r16v6 int) = (r16v2 int), (r16v7 int) binds: [B:101:0x0272, B:106:0x027e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0262 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0191  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzais zzk(com.google.android.gms.internal.ads.zzaip r40, com.google.android.gms.internal.ads.zzahq r41, com.google.android.gms.internal.ads.zzacu r42) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 1508
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaia.zzk(com.google.android.gms.internal.ads.zzaip, com.google.android.gms.internal.ads.zzahq, com.google.android.gms.internal.ads.zzacu):com.google.android.gms.internal.ads.zzais");
    }

    private static ByteBuffer zzl() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void zzm(com.google.android.gms.internal.ads.zzfj r26, int r27, int r28, int r29, int r30, java.lang.String r31, boolean r32, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzad r33, com.google.android.gms.internal.ads.zzahw r34, int r35) throws com.google.android.gms.internal.ads.zzcf {
        /*
            Method dump skipped, instruction units count: 1214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaia.zzm(com.google.android.gms.internal.ads.zzfj, int, int, int, int, java.lang.String, boolean, com.google.android.gms.internal.ads.zzad, com.google.android.gms.internal.ads.zzahw, int):void");
    }
}
