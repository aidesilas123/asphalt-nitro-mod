package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class CW {
    public static String[] A0D = {"0vhu5jxS", "Yr1jkp10QbCUuCnawnVg6DyED3T", "sHPBJpa0rClOKB4ts4mek83zSMf", "023O0ZSY", "oXq1fAkWHKLdk2C1T6ZzlQ7WbkpG5dco", "r27coonoikndR5VwsgZJDPH1Xbh3nrzE", "wA4WoZs0OtPlvEvglX5psUeQApq37N8U", "1wN1LzZhcL4LE4gXrEEsM7fopE3lhqwu"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public InterfaceC0922Bc A06;
    public InterfaceC0930Bm A07;
    public CT A08;
    public CV A09;
    public boolean A0A;
    public boolean A0B;
    public final CR A0C = new CR();

    private int A00(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        boolean zA0A = true;
        while (zA0A) {
            if (!this.A0C.A05(interfaceC0921Bb)) {
                this.A01 = 3;
                return -1;
            }
            this.A03 = interfaceC0921Bb.A7a() - this.A04;
            zA0A = A0A(this.A0C.A02(), this.A04, this.A09);
            if (zA0A) {
                this.A04 = interfaceC0921Bb.A7a();
            }
        }
        this.A00 = this.A09.A00.A0C;
        if (!this.A0A) {
            this.A07.A5j(this.A09.A00);
            this.A0A = true;
        }
        if (this.A09.A01 != null) {
            this.A08 = this.A09.A01;
        } else if (interfaceC0921Bb.A7B() == -1) {
            this.A08 = new WU();
        } else {
            CS csA01 = this.A0C.A01();
            this.A08 = new C1436Wa(this.A04, interfaceC0921Bb.A7B(), this, csA01.A01 + csA01.A00, csA01.A05);
        }
        this.A09 = null;
        this.A01 = 2;
        this.A0C.A04();
        return 0;
    }

    private int A01(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        long jAEA = this.A08.AEA(interfaceC0921Bb);
        if (jAEA >= 0) {
            c0925Bh.A00 = jAEA;
            return 1;
        }
        if (jAEA < -1) {
            A08(-(2 + jAEA));
        }
        if (!this.A0B) {
            this.A06.AEx(this.A08.A4i());
            this.A0B = true;
        }
        if (this.A03 <= 0 && !this.A0C.A05(interfaceC0921Bb)) {
            this.A01 = 3;
            return -1;
        }
        this.A03 = 0L;
        C1062Hh c1062HhA02 = this.A0C.A02();
        long jA07 = A07(c1062HhA02);
        if (jA07 >= 0) {
            long j = this.A02;
            if (j + jA07 >= this.A05) {
                long jA03 = A03(j);
                this.A07.AEr(c1062HhA02, c1062HhA02.A07());
                this.A07.AEs(jA03, 1, c1062HhA02.A07(), 0, null);
                this.A05 = -1L;
            }
        }
        this.A02 += jA07;
        return 0;
    }

    public final int A02(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        switch (this.A01) {
            case 0:
                return A00(interfaceC0921Bb);
            case 1:
                interfaceC0921Bb.AFe((int) this.A04);
                this.A01 = 2;
                return 0;
            case 2:
                return A01(interfaceC0921Bb, c0925Bh);
            default:
                throw new IllegalStateException();
        }
    }

    public final long A03(long j) {
        return (1000000 * j) / ((long) this.A00);
    }

    public final long A04(long j) {
        return (((long) this.A00) * j) / 1000000;
    }

    public final void A05(long j, long j2) {
        this.A0C.A03();
        if (j != 0) {
            if (this.A01 != 0) {
                this.A05 = this.A08.AFm(j2);
                this.A01 = 2;
                return;
            }
            return;
        }
        boolean z = !this.A0B;
        String[] strArr = A0D;
        if (strArr[6].charAt(24) == strArr[7].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0D;
        strArr2[4] = "k4zvnx9t3uHSh6LLctIVLoh0Ftprjk2l";
        strArr2[5] = "HhnKvAaHZTpmoBA85UMRj52n1m1tHG3b";
        A09(z);
    }

    public final void A06(InterfaceC0922Bc interfaceC0922Bc, InterfaceC0930Bm interfaceC0930Bm) {
        this.A06 = interfaceC0922Bc;
        this.A07 = interfaceC0930Bm;
        A09(true);
    }

    public abstract long A07(C1062Hh c1062Hh);

    public void A08(long j) {
        this.A02 = j;
    }

    public void A09(boolean z) {
        if (z) {
            this.A09 = new CV();
            this.A04 = 0L;
            this.A01 = 0;
        } else {
            this.A01 = 1;
        }
        this.A05 = -1L;
        this.A02 = 0L;
    }

    public abstract boolean A0A(C1062Hh c1062Hh, long j, CV cv) throws InterruptedException, IOException;
}
