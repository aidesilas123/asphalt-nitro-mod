package com.applovin.exoplayer2.e.g;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class j {
    private static final int[] AO = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean L(com.applovin.exoplayer2.e.i iVar) throws IOException {
        return a(iVar, true, false);
    }

    private static boolean a(com.applovin.exoplayer2.e.i iVar, boolean z, boolean z2) throws IOException {
        boolean z3;
        long jMo28if = iVar.mo28if();
        long j = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        long j2 = -1;
        if (jMo28if != -1 && jMo28if <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j = jMo28if;
        }
        int i = (int) j;
        y yVar = new y(64);
        boolean z4 = false;
        int i2 = 0;
        boolean z5 = false;
        while (i2 < i) {
            yVar.U(8);
            if (!iVar.b(yVar.hO(), z4 ? 1 : 0, 8, true)) {
                break;
            }
            long jPv = yVar.pv();
            int iPx = yVar.px();
            int i3 = 16;
            if (jPv == 1) {
                iVar.c(yVar.hO(), 8, 8);
                yVar.fA(16);
                jPv = yVar.pz();
            } else {
                if (jPv == 0) {
                    long jMo28if2 = iVar.mo28if();
                    if (jMo28if2 != j2) {
                        jPv = (jMo28if2 - iVar.id()) + ((long) 8);
                    }
                }
                i3 = 8;
            }
            long j3 = i3;
            if (jPv < j3) {
                return z4;
            }
            i2 += i3;
            if (iPx == 1836019574) {
                i += (int) jPv;
                if (jMo28if != -1 && i > jMo28if) {
                    i = (int) jMo28if;
                }
                j2 = -1;
            } else {
                if (iPx == 1836019558 || iPx == 1836475768) {
                    z3 = true;
                    break;
                }
                long j4 = jMo28if;
                if ((((long) i2) + jPv) - j3 >= i) {
                    break;
                }
                int i4 = (int) (jPv - j3);
                i2 += i4;
                if (iPx == 1718909296) {
                    if (i4 < 8) {
                        return false;
                    }
                    yVar.U(i4);
                    iVar.c(yVar.hO(), 0, i4);
                    int i5 = i4 / 4;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= i5) {
                            break;
                        }
                        if (i6 == 1) {
                            yVar.fz(4);
                        } else if (k(yVar.px(), z2)) {
                            z5 = true;
                            break;
                        }
                        i6++;
                    }
                    if (!z5) {
                        return false;
                    }
                } else if (i4 != 0) {
                    iVar.bI(i4);
                }
                jMo28if = j4;
                j2 = -1;
                z4 = false;
            }
        }
        z3 = false;
        return z5 && z == z3;
    }

    public static boolean e(com.applovin.exoplayer2.e.i iVar, boolean z) throws IOException {
        return a(iVar, false, z);
    }

    private static boolean k(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : AO) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }
}
