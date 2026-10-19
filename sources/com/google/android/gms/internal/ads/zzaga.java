package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaga {
    public static final zzafy zza = new zzafy() { // from class: com.google.android.gms.internal.ads.zzafx
    };

    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.google.android.gms.internal.ads.zzcb zza(byte[] r11, int r12, com.google.android.gms.internal.ads.zzafy r13, com.google.android.gms.internal.ads.zzafb r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaga.zza(byte[], int, com.google.android.gms.internal.ads.zzafy, com.google.android.gms.internal.ads.zzafb):com.google.android.gms.internal.ads.zzcb");
    }

    private static int zzb(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int zzc(byte[] bArr, int i, int i2) {
        int iZzd = zzd(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iZzd;
        }
        while (true) {
            int length = bArr.length;
            if (iZzd >= length - 1) {
                return length;
            }
            int i3 = iZzd + 1;
            if ((iZzd - i) % 2 == 0 && bArr[i3] == 0) {
                return iZzd;
            }
            iZzd = zzd(bArr, i3);
        }
    }

    private static int zzd(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i >= length) {
                return length;
            }
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
    }

    private static int zze(zzfj zzfjVar, int i) {
        byte[] bArrZzI = zzfjVar.zzI();
        int iZzc = zzfjVar.zzc();
        int i2 = iZzc;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iZzc + i) {
                return i;
            }
            if ((bArrZzI[i2] & 255) == 255 && bArrZzI[i3] == 0) {
                System.arraycopy(bArrZzI, i2 + 2, bArrZzI, i3, (i - (i2 - iZzc)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0280 A[Catch: all -> 0x0518, TryCatch #0 {all -> 0x0518, blocks: (B:222:0x04f3, B:123:0x0217, B:139:0x026e, B:141:0x0280, B:148:0x02c1, B:145:0x02a2, B:147:0x02bb, B:160:0x0303, B:169:0x034a, B:172:0x037f, B:175:0x0390, B:176:0x0398, B:178:0x039e, B:180:0x03a5, B:181:0x03a9, B:188:0x03cb, B:192:0x03f8, B:194:0x0402, B:195:0x0435, B:196:0x0441, B:198:0x0447, B:200:0x044e, B:201:0x0452, B:205:0x0467, B:214:0x0492, B:216:0x04bc, B:217:0x04cb, B:220:0x04e2), top: B:234:0x00f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02a2 A[Catch: all -> 0x0518, TryCatch #0 {all -> 0x0518, blocks: (B:222:0x04f3, B:123:0x0217, B:139:0x026e, B:141:0x0280, B:148:0x02c1, B:145:0x02a2, B:147:0x02bb, B:160:0x0303, B:169:0x034a, B:172:0x037f, B:175:0x0390, B:176:0x0398, B:178:0x039e, B:180:0x03a5, B:181:0x03a9, B:188:0x03cb, B:192:0x03f8, B:194:0x0402, B:195:0x0435, B:196:0x0441, B:198:0x0447, B:200:0x044e, B:201:0x0452, B:205:0x0467, B:214:0x0492, B:216:0x04bc, B:217:0x04cb, B:220:0x04e2), top: B:234:0x00f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04f3 A[Catch: all -> 0x0518, TRY_LEAVE, TryCatch #0 {all -> 0x0518, blocks: (B:222:0x04f3, B:123:0x0217, B:139:0x026e, B:141:0x0280, B:148:0x02c1, B:145:0x02a2, B:147:0x02bb, B:160:0x0303, B:169:0x034a, B:172:0x037f, B:175:0x0390, B:176:0x0398, B:178:0x039e, B:180:0x03a5, B:181:0x03a9, B:188:0x03cb, B:192:0x03f8, B:194:0x0402, B:195:0x0435, B:196:0x0441, B:198:0x0447, B:200:0x044e, B:201:0x0452, B:205:0x0467, B:214:0x0492, B:216:0x04bc, B:217:0x04cb, B:220:0x04e2), top: B:234:0x00f4 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.google.android.gms.internal.ads.zzagb zzf(int r35, com.google.android.gms.internal.ads.zzfj r36, boolean r37, int r38, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzafy r39) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaga.zzf(int, com.google.android.gms.internal.ads.zzfj, boolean, int, com.google.android.gms.internal.ads.zzafy):com.google.android.gms.internal.ads.zzagb");
    }

    private static zzfwu zzg(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return zzfwu.zzm("");
        }
        zzfwr zzfwrVar = new zzfwr();
        int iZzc = zzc(bArr, i2, i);
        while (i2 < iZzc) {
            zzfwrVar.zzf(new String(bArr, i2, iZzc - i2, zzj(i)));
            i2 = zzb(i) + iZzc;
            iZzc = zzc(bArr, i2, i);
        }
        zzfwu zzfwuVarZzi = zzfwrVar.zzi();
        return zzfwuVarZzi.isEmpty() ? zzfwu.zzm("") : zzfwuVarZzi;
    }

    private static String zzh(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, charset);
    }

    private static String zzi(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static Charset zzj(int i) {
        return i != 1 ? i != 2 ? i != 3 ? zzftl.zzb : zzftl.zzc : zzftl.zzd : zzftl.zzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0069 A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0008, B:7:0x0015, B:18:0x003d, B:21:0x0047, B:23:0x0069, B:27:0x006f, B:39:0x0089, B:40:0x008b, B:43:0x0091, B:46:0x009b, B:29:0x0079, B:33:0x0080, B:8:0x0022), top: B:53:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0089 A[Catch: all -> 0x00a5, TryCatch #0 {all -> 0x00a5, blocks: (B:3:0x0008, B:7:0x0015, B:18:0x003d, B:21:0x0047, B:23:0x0069, B:27:0x006f, B:39:0x0089, B:40:0x008b, B:43:0x0091, B:46:0x009b, B:29:0x0079, B:33:0x0080, B:8:0x0022), top: B:53:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean zzk(com.google.android.gms.internal.ads.zzfj r21, int r22, int r23, boolean r24) {
        /*
            r1 = r21
            r0 = r22
            int r2 = r21.zzc()
        L8:
            int r3 = r21.zza()     // Catch: java.lang.Throwable -> La5
            r4 = 1
            r5 = 0
            r6 = r23
            if (r3 < r6) goto La1
            r3 = 3
            if (r0 < r3) goto L22
            int r7 = r21.zzf()     // Catch: java.lang.Throwable -> La5
            long r8 = r21.zzt()     // Catch: java.lang.Throwable -> La5
            int r10 = r21.zzp()     // Catch: java.lang.Throwable -> La5
            goto L2c
        L22:
            int r7 = r21.zzn()     // Catch: java.lang.Throwable -> La5
            int r8 = r21.zzn()     // Catch: java.lang.Throwable -> La5
            long r8 = (long) r8     // Catch: java.lang.Throwable -> La5
            r10 = 0
        L2c:
            r11 = 0
            if (r7 != 0) goto L38
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L38
            if (r10 != 0) goto L38
            goto La1
        L38:
            r7 = 4
            if (r0 != r7) goto L67
            if (r24 != 0) goto L67
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L47
        L45:
            r4 = 0
            goto La1
        L47:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            r17 = 16
            long r17 = r8 >> r17
            r19 = 24
            long r8 = r8 >> r19
            long r15 = r15 & r11
            long r11 = r17 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 14
            long r11 = r11 << r15
            long r11 = r11 | r13
            r13 = 21
            long r8 = r8 << r13
            long r8 = r8 | r11
        L67:
            if (r0 != r7) goto L77
            r3 = r10 & 64
            if (r3 == 0) goto L6e
            goto L6f
        L6e:
            r4 = 0
        L6f:
            r3 = r10 & 1
            r20 = r4
            r4 = r3
            r3 = r20
            goto L87
        L77:
            if (r0 != r3) goto L85
            r3 = r10 & 32
            if (r3 == 0) goto L7f
            r3 = 1
            goto L80
        L7f:
            r3 = 0
        L80:
            r7 = r10 & 128(0x80, float:1.8E-43)
            if (r7 == 0) goto L86
            goto L87
        L85:
            r3 = 0
        L86:
            r4 = 0
        L87:
            if (r4 == 0) goto L8b
            int r3 = r3 + 4
        L8b:
            long r3 = (long) r3     // Catch: java.lang.Throwable -> La5
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L91
            goto L45
        L91:
            int r3 = r21.zza()     // Catch: java.lang.Throwable -> La5
            long r3 = (long) r3     // Catch: java.lang.Throwable -> La5
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto L9b
            goto L45
        L9b:
            int r3 = (int) r8     // Catch: java.lang.Throwable -> La5
            r1.zzH(r3)     // Catch: java.lang.Throwable -> La5
            goto L8
        La1:
            r1.zzG(r2)
            return r4
        La5:
            r0 = move-exception
            r1.zzG(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaga.zzk(com.google.android.gms.internal.ads.zzfj, int, int, boolean):boolean");
    }

    private static byte[] zzl(byte[] bArr, int i, int i2) {
        return i2 <= i ? zzfs.zzf : Arrays.copyOfRange(bArr, i, i2);
    }
}
