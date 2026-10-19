package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class U9 implements InterfaceC1292Qi {
    public static byte[] A03;
    public final /* synthetic */ long A00;
    public final /* synthetic */ C1112Jg A01;
    public final /* synthetic */ C1114Jj A02;

    static {
        A01();
    }

    public U9(C1114Jj c1114Jj, C1112Jg c1112Jg, long j) {
        this.A02 = c1114Jj;
        this.A01 = c1112Jg;
        this.A00 = j;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{97, 52, 101, 97, 96, 101, 105, 53, Ascii.DLE, 70, Ascii.DC2, Ascii.RS, 70, Ascii.DLE, 65, 68, 1, Ascii.CAN, 4, 5, Ascii.SO, 51, 40, 46, 59, 63, 34, 36, 37, 113, 107, 108, 90, 77, 73, 90, 77, Ascii.US, 90, 77, 77, 80, 77, Ascii.US, 80, 92, 92, 74, 77, 77, 90, 91, 75, 125, 106, 110, 125, 106, 56, 106, 125, 104, 116, 113, 125, 124, 56, 107, 109, 123, 123, 125, 107, 107, 126, 109, 116, 116, 97, 75, 74, 103, 75, 73, 84, 72, 65, 80, 65, 95, 94, 117, 66, 66, 95, 66};
    }

    private final void A02(C1304Qu c1304Qu) {
        Jf.A06(this.A01);
        try {
            InterfaceC1290Qg interfaceC1290QgA00 = c1304Qu.A00();
            if (interfaceC1290QgA00 != null) {
                String strA64 = interfaceC1290QgA00.A64();
                C1117Jm c1117JmA06 = this.A02.A05.A06(this.A02.A04, strA64, this.A00);
                if (c1117JmA06.A01() == EnumC1116Jl.A03) {
                    U5 u5 = (U5) c1117JmA06;
                    String strA04 = u5.A04();
                    AdErrorType adErrorTypeAdErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(u5.A03(), AdErrorType.ERROR_MESSAGE);
                    if (strA04 != null) {
                        strA64 = strA04;
                    }
                    this.A02.A04.A0E().A2r(LM.A01(this.A02.A00), adErrorTypeAdErrorTypeFromCode.getErrorCode(), strA64, adErrorTypeAdErrorTypeFromCode.isPublicError());
                    this.A02.A0D(JG.A01(adErrorTypeAdErrorTypeFromCode, strA64));
                    return;
                }
            }
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String message = c1304Qu.getMessage();
            this.A02.A04.A0E().A2r(LM.A01(this.A02.A00), adErrorType.getErrorCode(), message, adErrorType.isPublicError());
            this.A02.A0D(JG.A01(adErrorType, message));
        } catch (JSONException e2) {
            AdErrorType adErrorType2 = AdErrorType.NETWORK_ERROR;
            String message2 = c1304Qu.getMessage();
            this.A02.A04.A0E().A2r(LM.A01(this.A02.A00), adErrorType2.getErrorCode(), A00(16, 15, 65) + e2.getMessage(), adErrorType2.isPublicError());
            this.A02.A0D(JG.A01(adErrorType2, message2));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1292Qi
    public final void AAu(InterfaceC1290Qg interfaceC1290Qg) {
        JU.A05(A00(79, 10, 46), A00(52, 27, 18), A00(0, 8, 90));
        if (interfaceC1290Qg != null) {
            String strA64 = interfaceC1290Qg.A64();
            Jf.A06(this.A01);
            this.A02.A0N(strA64, this.A00, this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1292Qi
    public final void ABI(Exception exc) {
        JU.A05(A00(89, 7, 58), A00(31, 21, 53), A00(8, 8, 45));
        if (C1304Qu.class.equals(exc.getClass())) {
            A02((C1304Qu) exc);
            return;
        }
        AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
        String message = exc.getMessage();
        this.A02.A04.A0E().A2r(LM.A01(this.A02.A00), adErrorType.getErrorCode(), message, adErrorType.isPublicError());
        this.A02.A0D(JG.A01(adErrorType, message));
    }
}
