package com.facebook.ads.redexgen.X;

import android.media.AudioTrack;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class AZ {
    public static String[] A06 = {"tMW2fkMpy5HihKk0yN3j3FySApib3JSJ", "DmNw9hS4nxXBj6Mr2INd4L8q1xMEyvKq", "0eqkaL3Dsezuu4pOs0MDPfwpckzWpND4", "49OOFjFtCxl3f3ujLPMCOchIYt8uEQEa", "MWNNllbG7VNHRaURq2pyYfck8pAxQtjw", "ldwZ0eJIezAamtWPjZLM2iroOhc1OYkS", "11ihmkQKk", "Tg3NlfrAQ4uSsG9"};
    public int A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public final AX A05;

    public AZ(AudioTrack audioTrack) {
        if (C1078Hx.A02 >= 19) {
            this.A05 = new AX(audioTrack);
            A05();
        } else {
            this.A05 = null;
            A00(3);
        }
    }

    private void A00(int i) {
        this.A00 = i;
        switch (i) {
            case 0:
                this.A03 = 0L;
                this.A01 = -1L;
                this.A02 = System.nanoTime() / 1000;
                this.A04 = 5000L;
                return;
            case 1:
                this.A04 = 5000L;
                return;
            case 2:
            case 3:
                this.A04 = 10000000L;
                return;
            case 4:
                if (A06[6].length() != 9) {
                    throw new RuntimeException();
                }
                A06[6] = "I3kIT2QQI";
                this.A04 = 500000L;
                return;
            default:
                throw new IllegalStateException();
        }
    }

    public final long A01() {
        AX ax = this.A05;
        if (ax != null) {
            return ax.A00();
        }
        return -1L;
    }

    public final long A02() {
        AX ax = this.A05;
        return ax != null ? ax.A01() : C.TIME_UNSET;
    }

    public final void A03() {
        if (this.A00 == 4) {
            A05();
        }
    }

    public final void A04() {
        A00(4);
    }

    public final void A05() {
        if (this.A05 != null) {
            A00(0);
        }
    }

    public final boolean A06() {
        int i = this.A00;
        return i == 1 || i == 2;
    }

    public final boolean A07() {
        return this.A00 == 2;
    }

    public final boolean A08(long j) {
        AX ax = this.A05;
        if (ax == null || j - this.A03 < this.A04) {
            return false;
        }
        this.A03 = j;
        boolean zA02 = ax.A02();
        switch (this.A00) {
            case 0:
                if (!zA02) {
                    if (j - this.A02 <= 500000) {
                        return zA02;
                    }
                    A00(3);
                    return zA02;
                }
                if (this.A05.A01() < this.A02) {
                    return false;
                }
                this.A01 = this.A05.A00();
                A00(1);
                return zA02;
            case 1:
                if (!zA02) {
                    A05();
                    return zA02;
                }
                if (this.A05.A00() <= this.A01) {
                    return zA02;
                }
                A00(2);
                return zA02;
            case 2:
                if (zA02) {
                    return zA02;
                }
                A05();
                return zA02;
            case 3:
                if (!zA02) {
                    return zA02;
                }
                A05();
                return zA02;
            case 4:
                return zA02;
            default:
                throw new IllegalStateException();
        }
    }
}
