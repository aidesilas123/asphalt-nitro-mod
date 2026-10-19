package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1346Sk extends AbstractC1227Nv {
    public static byte[] A00;
    public static String[] A01 = {"tJRtfPKHoy7gQ0Hrrag4OkVDHQvHpM6e", "ntrk62ddU7J9c8B2GtO4dhepCrAVPpDV", "iQ54QNqjdD5kyZO2OLG", "4R7BJQoUCBFINf313UyvxR7fWPUp11Dk", "Ad2P", "mQFjJcGEaXO3GAoxmnr0yBCCZwtlhd6p", "65xONPI2i6gPpcf6kW2ve41HMoO1k057", "z69fhWo2iasYfVs3h6jnYZwontL4UpVs"};

    static {
        A0D();
    }

    public AbstractC1346Sk(C1231Nz c1231Nz, boolean z) {
        super(c1231Nz, z);
        if (IP.A0z(c1231Nz.A05())) {
            if (c1231Nz.A08() != null) {
                c1231Nz.A08().setCTAClickListener(getCtaButton());
            }
            getTitleDescContainer().setCTAClickListener(getCtaButton());
        }
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 94);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0D() {
        A00 = new byte[]{43, 46, 46, 47, 62, 43, 51, 54, 61};
    }

    public final void A12() {
        if (!IP.A0z(this.A06.A05()) || this.A06.A08() == null) {
            return;
        }
        this.A06.A08().setCTAClickListener(getCtaButton());
    }

    public abstract void A13();

    public abstract void A14();

    public abstract void A15();

    public abstract boolean A16();

    public abstract boolean A17();

    public void setAdDetailsClickListener(NR nr) {
        if (!IP.A0z(this.A06.A05()) || nr == null) {
            return;
        }
        T3 ctaButton = getCtaButton();
        if (A01[1].charAt(21) != 'h') {
            throw new RuntimeException();
        }
        A01[3] = "am5A0dIgunRuJRLaM18rzwVTPisxqXDR";
        nr.setOnClickListener(C1225Nt.A03(ctaButton, A0C(0, 9, 108)));
    }

    public void setupNativeCtaExtension(PC pc) {
    }
}
