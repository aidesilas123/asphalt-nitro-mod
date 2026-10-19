package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1114Jj {
    public static byte[] A07;
    public static final LY A08;
    public static final Executor A09;
    public static final AtomicReference<InterfaceC1118Jn> A0A;
    public long A00;
    public Ji A01;
    public Map<String, String> A02;
    public final C2G A03;
    public final YA A04;
    public final C1115Jk A05;
    public final String A06;

    static {
        A0A();
        LY ly = new LY();
        A08 = ly;
        A09 = Executors.newCachedThreadPool(ly);
        A0A = new AtomicReference<>();
    }

    public C1114Jj(YA ya) {
        this(ya, C2H.A00(ya.A01()));
    }

    public C1114Jj(YA ya, C2G c2g) {
        this.A00 = -1L;
        this.A04 = ya;
        this.A05 = C1115Jk.A00();
        this.A06 = C1119Jo.A01(ya);
        this.A03 = c2g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public U9 A02(long j, C1112Jg c1112Jg) {
        return new U9(this, c1112Jg, j);
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        YA ya = this.A04;
        if (ya == null || !C1309Qz.A0A(ya)) {
            return;
        }
        C08427y c08427y = new C08427y(A05(8, 5, 107));
        c08427y.A03(1);
        this.A04.A07().A9M(A05(86, 7, 111), C08417x.A1w, c08427y);
    }

    public static void A0A() {
        A07 = new byte[]{62, 50, 62, 61, 62, 110, 104, 62, 122, 105, 107, 119, 117, 78, 65, 68, 72, 67, 89, 82, 95, 72, 92, 88, 72, 94, 89, 82, 68, 73, 98, 88, Ascii.VT, 121, 101, 17, Ascii.VT, 100, 101, 10, 108, 99, 102, 102, 10, 88, 79, 73, 79, 67, 92, 79, 78, Ascii.DC4, 53, 122, Ascii.FS, 51, 54, 54, 122, 63, 40, 40, 53, 40, 122, 57, 53, 62, 63, 122, 1, Ascii.DEL, 41, 7, 122, Ascii.DEL, 41, Ascii.SI, Ascii.CR, 6, Ascii.CR, Ascii.SUB, 1, Ascii.VT, 81, 90, 75, 72, 80, 77, 84, 40, 41, 0, 47, 42, 42, Ascii.SO, 41, 41, 45};
    }

    private void A0B(int i, String str) {
        String strA05 = A05(37, 16, 122);
        String strA052 = A05(0, 8, 90);
        String strA053 = A05(93, 10, 22);
        JU.A05(strA053, strA05, strA052);
        JU.A04(strA053, String.format(Locale.US, A05(53, 26, 10), Integer.valueOf(i), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(JG jg) {
        Ji ji = this.A01;
        if (ji != null) {
            ji.ABH(jg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(JG jg) {
        LP.A00(new U7(this, jg));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K(U6 u6) {
        Ji ji = this.A01;
        if (ji != null) {
            ji.AD5(u6);
        }
    }

    private void A0L(U6 u6) {
        C7Y c7yA05;
        LP.A00(new U8(this, u6));
        if (!IP.A22(this.A04) || (c7yA05 = this.A04.A05()) == null) {
            return;
        }
        c7yA05.A5i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0M(String str, long j, C1112Jg c1112Jg) {
        try {
            try {
                C1117Jm c1117JmA06 = this.A05.A06(this.A04, str, j);
                C8F c8fA00 = c1117JmA06.A00();
                if (c8fA00 != null) {
                    IP.A0Q(this.A04).A2S(c8fA00.A09());
                    this.A04.A07().AA1();
                    this.A03.A0N(c8fA00.A06());
                    Jf.A05(c8fA00.A05().A0B(), c1112Jg);
                    C1163Lj.A01(this.A04, A09, c8fA00);
                    C08427y c08427y = new C08427y(A05(30, 7, 123) + C1149Kv.A02());
                    c08427y.A04(1);
                    c08427y.A08(false);
                    this.A04.A07().A9q(A05(79, 7, 56), C08417x.A1W, c08427y);
                }
                switch (C1113Jh.A00[c1117JmA06.A01().ordinal()]) {
                    case 1:
                        U6 u6 = (U6) c1117JmA06;
                        if (c8fA00 != null) {
                            if (c8fA00.A05().A0E()) {
                                Jf.A07(str, c1112Jg);
                            }
                            Map<String, String> map = this.A02;
                            String str2 = map != null ? map.get(A05(13, 17, 93)) : null;
                            if (!TextUtils.isEmpty(c1117JmA06.A02()) && !TextUtils.isEmpty(str2)) {
                                this.A04.A02().AEl(this.A04, str2, c1117JmA06.A02());
                            }
                        }
                        this.A04.A0E().A2s(LM.A01(this.A00));
                        A0L(u6);
                        break;
                    case 2:
                        U5 u5 = (U5) c1117JmA06;
                        String strA04 = u5.A04();
                        AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(u5.A03(), AdErrorType.ERROR_MESSAGE);
                        A0B(u5.A03(), strA04);
                        if (strA04 == null) {
                            strA04 = str;
                        }
                        this.A04.A0E().A2r(LM.A01(this.A00), adErrorTypeAdErrorTypeFromCode.getErrorCode(), strA04, adErrorTypeAdErrorTypeFromCode.isPublicError());
                        A0D(JG.A01(adErrorTypeAdErrorTypeFromCode, strA04));
                        break;
                    default:
                        AdErrorType adErrorType = AdErrorType.UNKNOWN_RESPONSE;
                        this.A04.A0E().A2r(LM.A01(this.A00), adErrorType.getErrorCode(), str, adErrorType.isPublicError());
                        A0D(JG.A01(adErrorType, str));
                        break;
                }
            } catch (Exception e2) {
                e = e2;
                String message = e.getMessage();
                AdErrorType adErrorType2 = AdErrorType.PARSER_FAILURE;
                this.A04.A0E().A2r(LM.A01(this.A00), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
                A0D(JG.A01(adErrorType2, message));
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(String str, long j, C1112Jg c1112Jg) {
        A09.execute(new UA(this, str, j, c1112Jg));
    }

    public final void A0O(C1112Jg c1112Jg) {
        this.A00 = System.currentTimeMillis();
        AnonymousClass86.A0B(this.A04);
        InterfaceC1118Jn interfaceC1118Jn = A0A.get();
        if (interfaceC1118Jn != null) {
            A0N(interfaceC1118Jn.provide(c1112Jg), 10L, c1112Jg);
            return;
        }
        if (!Jf.A08(c1112Jg)) {
            A09.execute(new UB(this, c1112Jg));
            return;
        }
        ExecutorC1154La.A06.execute(new UC(this));
        String strA02 = Jf.A02(c1112Jg);
        if (strA02 != null) {
            this.A04.A0E().AG8();
            A0N(strA02, 0L, c1112Jg);
        } else {
            AdErrorType adErrorType = AdErrorType.LOAD_TOO_FREQUENTLY;
            this.A04.A0E().A2r(LM.A01(this.A00), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage(), adErrorType.isPublicError());
            A0D(JG.A01(adErrorType, null));
        }
    }

    public final void A0P(Ji ji) {
        this.A01 = ji;
    }
}
