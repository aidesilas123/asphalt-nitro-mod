package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaio {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean zza(zzacf zzacfVar) throws IOException {
        return zzc(zzacfVar, true, false);
    }

    public static boolean zzb(zzacf zzacfVar, boolean z) throws IOException {
        return zzc(zzacfVar, false, false);
    }

    private static boolean zzc(zzacf zzacfVar, boolean z, boolean z2) throws IOException {
        boolean z3;
        boolean z4;
        long jZzd = zzacfVar.zzd();
        long j = -1;
        long j2 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (jZzd != -1 && jZzd <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j2 = jZzd;
        }
        zzfj zzfjVar = new zzfj(64);
        int i = (int) j2;
        int i2 = 0;
        boolean z5 = false;
        while (i2 < i) {
            zzfjVar.zzD(8);
            if (!zzacfVar.zzm(zzfjVar.zzI(), 0, 8, true)) {
                break;
            }
            long jZzt = zzfjVar.zzt();
            int iZzf = zzfjVar.zzf();
            int i3 = 16;
            if (jZzt == 1) {
                zzacfVar.zzh(zzfjVar.zzI(), 8, 8);
                zzfjVar.zzF(16);
                jZzt = zzfjVar.zzs();
            } else {
                if (jZzt == 0) {
                    long jZzd2 = zzacfVar.zzd();
                    if (jZzd2 != j) {
                        jZzt = (jZzd2 - zzacfVar.zze()) + 8;
                    }
                }
                i3 = 8;
            }
            long j3 = i3;
            if (jZzt < j3) {
                return false;
            }
            i2 += i3;
            if (iZzf == 1836019574) {
                i += (int) jZzt;
                if (jZzd != -1 && i > jZzd) {
                    i = (int) jZzd;
                }
            } else {
                if (iZzf == 1836019558 || iZzf == 1836475768) {
                    z3 = true;
                    break;
                }
                z5 |= !(iZzf != 1835295092);
                long j4 = jZzd;
                long j5 = jZzt;
                if ((((long) i2) + jZzt) - j3 >= i) {
                    break;
                }
                int i4 = (int) (j5 - j3);
                i2 += i4;
                if (iZzf == 1718909296) {
                    if (i4 < 8) {
                        return false;
                    }
                    zzfjVar.zzD(i4);
                    zzacfVar.zzh(zzfjVar.zzI(), 0, i4);
                    int i5 = i4 >> 2;
                    for (int i6 = 0; i6 < i5; i6++) {
                        if (i6 != 1) {
                            int iZzf2 = zzfjVar.zzf();
                            if ((iZzf2 >>> 8) != 3368816) {
                                if (iZzf2 == 1751476579) {
                                    iZzf2 = 1751476579;
                                }
                                int[] iArr = zza;
                                for (int i7 = 0; i7 < 29; i7++) {
                                    if (iArr[i7] != iZzf2) {
                                    }
                                }
                            }
                            z4 = true;
                            break;
                        }
                        zzfjVar.zzH(4);
                    }
                    z4 = z5;
                    if (!z4) {
                        return false;
                    }
                    z5 = z4;
                } else if (i4 != 0) {
                    zzacfVar.zzg(i4);
                }
                jZzd = j4;
            }
            j = -1;
        }
        z3 = false;
        return z5 && z == z3;
    }
}
