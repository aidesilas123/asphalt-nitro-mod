package com.applovin.exoplayer2.e.e;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class e {
    private final y uO = new y(8);
    private int yM;

    private long B(i iVar) throws IOException {
        int i = 0;
        iVar.c(this.uO.hO(), 0, 1);
        int i2 = this.uO.hO()[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        iVar.c(this.uO.hO(), 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.uO.hO()[i] & 255) + (i5 << 8);
        }
        this.yM += i4 + 1;
        return i5;
    }

    public boolean a(i iVar) throws IOException {
        long jMo28if = iVar.mo28if();
        long j = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        if (jMo28if != -1 && jMo28if <= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            j = jMo28if;
        }
        int i = (int) j;
        iVar.c(this.uO.hO(), 0, 4);
        long jPv = this.uO.pv();
        this.yM = 4;
        while (jPv != 440786851) {
            int i2 = this.yM + 1;
            this.yM = i2;
            if (i2 == i) {
                return false;
            }
            iVar.c(this.uO.hO(), 0, 1);
            jPv = ((jPv << 8) & (-256)) | ((long) (this.uO.hO()[0] & 255));
        }
        long jB = B(iVar);
        long j2 = this.yM;
        if (jB == Long.MIN_VALUE) {
            return false;
        }
        if (jMo28if != -1 && j2 + jB >= jMo28if) {
            return false;
        }
        while (true) {
            int i3 = this.yM;
            long j3 = j2 + jB;
            if (i3 >= j3) {
                return ((long) i3) == j3;
            }
            if (B(iVar) == Long.MIN_VALUE) {
                return false;
            }
            long jB2 = B(iVar);
            if (jB2 < 0 || jB2 > 2147483647L) {
                break;
            }
            if (jB2 != 0) {
                int i4 = (int) jB2;
                iVar.bI(i4);
                this.yM += i4;
            }
        }
        return false;
    }
}
