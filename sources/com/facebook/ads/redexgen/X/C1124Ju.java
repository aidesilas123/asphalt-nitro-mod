package com.facebook.ads.redexgen.X;

import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ju, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1124Ju implements InterfaceC1268Pk {
    public static String[] A0B = {"82Zz8oCZg8zkkbzw8opl2Yz4CtrF2SDp", "9Qv", "sj5N5SmrmBRQmWue5o8rJw6ys3alFtJa", "lBA7odrZYL425", "CSSBUKaIJSWMhqfJuWGnuyX4cipoTk5I", "IDQP5gLMbSSnC18VVbdsGZXvkzghwpNg", "Yf1MSxzKxHs57zUlY7hI2xykX4pHUq1P", "T3bn0lMwtbok5v0PvXD6574OGDOrX6LS"};
    public View A00;
    public RX A01;
    public EnumC1280Pw A02;
    public boolean A03;
    public final Handler A04;
    public final AbstractC1233Ob A05;
    public final MU A06;
    public final MI A07;
    public final L1 A08;
    public final boolean A09;
    public final boolean A0A;

    public C1124Ju(View view, EnumC1280Pw enumC1280Pw, boolean z) {
        this(view, enumC1280Pw, z, false);
    }

    public C1124Ju(View view, EnumC1280Pw enumC1280Pw, boolean z, boolean z2) {
        this.A06 = new MU() { // from class: com.facebook.ads.redexgen.X.6o
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass72 anonymousClass72) {
                this.A00.A06(1, 0);
            }
        };
        this.A07 = new MI() { // from class: com.facebook.ads.redexgen.X.6n
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(MJ mj) {
                if (this.A00.A03) {
                    if (this.A00.A02 != EnumC1280Pw.A03 && !this.A00.A09) {
                        this.A00.A06(0, 8);
                    } else {
                        this.A00.A02 = null;
                        this.A00.A05();
                    }
                }
            }
        };
        this.A05 = new AbstractC1233Ob() { // from class: com.facebook.ads.redexgen.X.6m
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass75 anonymousClass75) {
                if (this.A00.A02 != EnumC1280Pw.A04) {
                    this.A00.A00.setAlpha(1.0f);
                    this.A00.A00.setVisibility(0);
                }
            }
        };
        this.A08 = new C08106l(this);
        this.A03 = true;
        this.A04 = new Handler();
        this.A09 = z;
        this.A0A = z2;
        A08(view, enumC1280Pw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        this.A00.animate().alpha(0.0f).setDuration(500L).setListener(new C1279Pv(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(int i, int i2) {
        this.A04.removeCallbacksAndMessages(null);
        this.A00.clearAnimation();
        this.A00.setAlpha(i);
        this.A00.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(AnimatorListenerAdapter animatorListenerAdapter) {
        this.A00.setVisibility(0);
        this.A00.animate().alpha(1.0f).setDuration(500L).setListener(animatorListenerAdapter);
    }

    private final void A08(View view, EnumC1280Pw enumC1280Pw) {
        this.A02 = enumC1280Pw;
        this.A00 = view;
        view.clearAnimation();
        if (enumC1280Pw != EnumC1280Pw.A04) {
            this.A00.setAlpha(1.0f);
            this.A00.setVisibility(0);
            return;
        }
        this.A00.setAlpha(0.0f);
        String[] strArr = A0B;
        if (strArr[5].charAt(26) == strArr[0].charAt(26)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0B;
        strArr2[5] = "3OWa54Sl5zOXBo6RskK22JrE4LW5JWKj";
        strArr2[0] = "lt7hksMEFpJVhV2333OBcIopOVPW9bfy";
        this.A00.setVisibility(8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1268Pk
    public final void A9D(RX rx) {
        this.A01 = rx;
        rx.getEventBus().A03(this.A06, this.A07, this.A08, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1268Pk
    public final void AG0(RX rx) {
        A06(1, 0);
        rx.getEventBus().A04(this.A05, this.A08, this.A07, this.A06);
        this.A01 = null;
    }
}
