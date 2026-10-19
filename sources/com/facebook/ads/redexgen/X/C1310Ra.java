package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ra, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1310Ra extends K8 {
    public static String[] A04 = {"pUIboC8CwdUMtM1tPR8iEtPz8p", "ladzvmq", "gZiIZXhhpFNWaRiPv", "vQtAVDGFp8M", "7j30UYRlUEXcM4Kd2wK", "XchzO9Mtzl1GyvdPdWlZd1J0iwZmFx3H", "VTwPVxpRcW0", "YPnzN72MuP4y3lnuBhqZ0NoSyY"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ RX A02;
    public final /* synthetic */ QY A03;

    public C1310Ra(RX rx, QY qy, int i, int i2) {
        this.A02 = rx;
        this.A03 = qy;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        if (this.A03 == QY.A07) {
            this.A02.A0L(EnumC1093Im.A0q);
            this.A02.A0A.A0E().A34();
            this.A02.A0B.A02(RX.A0C());
            return;
        }
        if (this.A03 == QY.A03) {
            this.A02.A0L(EnumC1093Im.A0l);
            this.A02.A03 = true;
            this.A02.A0B.A02(RX.A0G);
            this.A02.A0K(this.A00);
            return;
        }
        QY qy = this.A03;
        QY qy2 = QY.A06;
        String[] strArr = A04;
        if (strArr[0].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A04[5] = "Wlqb3PCyph61UkVVxo7ng7VZa1hYfmo4";
        if (qy == qy2) {
            this.A02.A0L(EnumC1093Im.A0k);
            this.A02.A0A.A0E().A2w();
            this.A02.A03 = true;
            this.A02.A07.removeCallbacksAndMessages(null);
            C8Z c8z = this.A02.A0B;
            int i = this.A01;
            c8z.A02(new AnonymousClass75(i, i));
            this.A02.A0K(this.A01);
            return;
        }
        if (this.A03 == QY.A0A) {
            if (IP.A1X(this.A02.A0A)) {
                this.A02.A0A.A0A().ADW();
            }
            this.A02.A0L(EnumC1093Im.A0o);
            this.A02.A0A.A0E().A3B();
            this.A02.A0B.A02(RX.A0H);
            this.A02.A07.removeCallbacksAndMessages(null);
            this.A02.A0H();
            return;
        }
        if (this.A03 == QY.A05) {
            this.A02.A0L(EnumC1093Im.A0n);
            this.A02.A0A.A0E().A30();
            C8Z c8z2 = this.A02.A0B;
            final int i2 = this.A00;
            c8z2.A02(new P7(i2) { // from class: com.facebook.ads.redexgen.X.72
            });
            this.A02.A07.removeCallbacksAndMessages(null);
            this.A02.A0K(this.A00);
            return;
        }
        if (this.A03 == QY.A04) {
            this.A02.A0L(EnumC1093Im.A0m);
            this.A02.A0A.A0E().A2x();
            this.A02.A0B.A02(RX.A0K);
            this.A02.A07.removeCallbacksAndMessages(null);
            return;
        }
        if (this.A03 == QY.A09) {
            this.A02.A0L(EnumC1093Im.A0k);
            this.A02.A0A.A0E().A36();
            this.A02.A03 = true;
            this.A02.A07.removeCallbacksAndMessages(null);
            this.A02.A0B.A02(new AnonymousClass75(this.A00, this.A01));
            this.A02.A0K(this.A00);
        }
    }
}
