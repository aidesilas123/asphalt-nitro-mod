package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class YX implements InterfaceC06971v {
    public static byte[] A03;
    public C07775a A00;
    public YA A01;
    public final NativeAdBase.MediaCacheFlag A02;

    static {
        A03();
    }

    public YX(C07775a c07775a, YA ya, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = c07775a;
        this.A01 = ya;
        this.A02 = mediaCacheFlag;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{59, 52, 33, 60, 35, 48, 100, Ascii.DEL, 122, Ascii.DEL, 126, 102, Ascii.DEL};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06971v
    public final void ABH(JG jg) {
        C1129Jz.A00(new C1488Ya(this, jg));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06971v
    public final void ACD(List<C1581ah> list) {
        C6Q c6q = new C6Q(this.A01);
        String strA02 = A02(6, 7, 70);
        for (C1581ah c1581ah : list) {
            if (A02(6, 7, 70).equals(strA02)) {
                strA02 = c1581ah.A0G();
            }
            if (this.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (c1581ah.A0E().A0G() != null) {
                    c6q.A0b(new C6O(c1581ah.A0E().A0G().getUrl(), c1581ah.A0E().A0G().getHeight(), c1581ah.A0E().A0G().getWidth(), c1581ah.A0G(), A02(0, 6, 2)));
                }
                if (c1581ah.A0E().A0F() != null) {
                    c6q.A0b(new C6O(c1581ah.A0E().A0F().getUrl(), c1581ah.A0E().A0F().getHeight(), c1581ah.A0E().A0F().getWidth(), c1581ah.A0G(), A02(0, 6, 2)));
                }
                if (!TextUtils.isEmpty(c1581ah.A0E().A0d())) {
                    c6q.A0a(new C6M(c1581ah.A0E().A0d(), c1581ah.A0G(), A02(0, 6, 2), c1581ah.A0E().A0A()));
                }
            }
        }
        c6q.A0W(new YY(this, list), new C6J(strA02, A02(0, 6, 2)));
    }
}
