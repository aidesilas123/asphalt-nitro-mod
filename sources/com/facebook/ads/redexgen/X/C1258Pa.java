package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1258Pa {
    public static byte[] A09;
    public static String[] A0A = {"gG8B5BBzXX0tXn8mAXm3GrlCsmKREgEL", "fszKDaGs6AGUXXOQg2WnNIBtS95Yz1Wh", "pnaE4meNhzrzHKSDh8PgaIlwU76aGgw8", "2ARCPk0NRRRG", "SMbVAXo8eG5PUWUAvoNRrVLTO99Zprm", "yA01QlsAfT3JJVyfy2ZKp77MLzjsBWHz", "Xgpz8alFBhAPNTQJpcXFzk4NTQQyuYWJ", "Svb9BuXOcdwLltO0M440Yd8RGfHrN1wk"};
    public final YA A00;
    public final InterfaceC1086If A01;
    public final RX A02;
    public final AbstractC1233Ob A03;
    public final AbstractC1218Nm A04;
    public final MU A05;
    public final C1330Ru A06;
    public final String A07;
    public final Map<String, String> A08;

    static {
        A08();
    }

    public C1258Pa(YA ya, InterfaceC1086If interfaceC1086If, RX rx, String str, Map<String, String> map) {
        AbstractC1218Nm abstractC1218Nm = new AbstractC1218Nm() { // from class: com.facebook.ads.redexgen.X.7F
            public static String[] A01 = {"m3H5fDZT", "tfUidThth72U8se7Apa4PT2ZGwk9ZGOU", "C7sqCneijRx2oiAJ7jgCjnbvSplD6Hvu", "CUEN1UWJGCJ8qOG4MMTMPK9Ub", "uwIe", "I7QxkSDWYBotgEGySbiUy5NvkBUV0QEh", "dizwBFytggLGpocgnk6CXcKxg", "vsUFvcPPfrfWhSaT8AiBmEZ9b5CjjyAT"};

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass73 anonymousClass73) {
                C1331Rv c1331Rv = new C1331Rv(this.A00.A07, anonymousClass73.A03(), anonymousClass73.A01(), anonymousClass73.A02());
                if (anonymousClass73.A00() >= 0.05d) {
                    c1331Rv.A06(anonymousClass73.A01());
                }
                this.A00.A06.A0C(c1331Rv);
                String[] strArr = A01;
                if (strArr[6].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[2] = "q64iGrGvaw5ijPmr6ZKPys7vT4QnDerr";
                strArr2[5] = "OAtIhinrRl4iSEKbz1e7g3lvuawk4XhB";
            }
        };
        this.A04 = abstractC1218Nm;
        MU mu = new MU() { // from class: com.facebook.ads.redexgen.X.7D
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass72 anonymousClass72) {
                this.A00.A09();
            }
        };
        this.A05 = mu;
        AbstractC1233Ob abstractC1233Ob = new AbstractC1233Ob() { // from class: com.facebook.ads.redexgen.X.7C
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC08448a
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(AnonymousClass75 anonymousClass75) {
                this.A00.A09();
            }
        };
        this.A03 = abstractC1233Ob;
        this.A00 = ya;
        this.A01 = interfaceC1086If;
        this.A07 = str;
        this.A08 = map;
        this.A02 = rx;
        this.A06 = new C1330Ru(str);
        rx.getEventBus().A03(abstractC1218Nm, mu, abstractC1233Ob);
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
        }
        return new String(bArrCopyOfRange);
    }

    private Map<String, String> A07(String str) {
        HashMap map = new HashMap();
        Map<String, String> map2 = this.A08;
        if (map2 != null) {
            map.putAll(map2);
        }
        map.put(A05(0, 6, 56), str);
        return map;
    }

    public static void A08() {
        A09 = new byte[]{62, 42, 57, 53, 61, 43};
    }

    public final void A09() {
        String strA04 = C1330Ru.A04(this.A06.A0B());
        if (strA04 != null) {
            InterfaceC1086If interfaceC1086If = this.A01;
            if (A0A[4].length() == 13) {
                throw new RuntimeException();
            }
            A0A[3] = "qc6G14080U";
            interfaceC1086If.A9f(this.A07, A07(strA04));
        }
    }

    public final void A0A() {
        C1312Rc c1312Rc = new C1312Rc(this);
        if (this.A02.A0l()) {
            LP.A00(c1312Rc);
        } else {
            this.A02.getStateHandler().post(c1312Rc);
        }
    }
}
