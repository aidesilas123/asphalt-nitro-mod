package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Eo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0993Eo extends AbstractC1547a9 {
    public static byte[] A00;
    public static String[] A01 = {"d7tLiGkqyLa7cKOkED7RtvmpIXZH8d0b", "LmA4T64r6T9e", "1EBtOKlPck0twYp3ElEJQmg3d", "uhXcdOUibAChEZNBNQuPqKRIQ2", "Z", "LV0o53GlcsqgEYK9Pr4EwymnJShooL9b", "NLZosIPt4DzrQXhRsvqwWEHVFOTX5bDJ", "MQasnwh7q"};

    static {
        A03();
    }

    public C0993Eo(YA ya, C06931r c06931r) {
        super(ya, c06931r);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 52);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A01(long j) {
        HashMap map = new HashMap();
        map.put(A00(36, 5, 104), String.valueOf(System.currentTimeMillis() - j));
        return map;
    }

    public static void A03() {
        A00 = new byte[]{77, 72, Ascii.FF, 69, 95, Ascii.FF, 66, 67, 88, Ascii.FF, 94, 73, 77, 72, 85, Ascii.FF, 67, 94, Ascii.FF, 77, 64, 94, 73, 77, 72, 85, Ascii.FF, 72, 69, 95, 92, 64, 77, 85, 73, 72, 56, 57, 48, 61, 37};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(List<String> list, Map<String, String> map) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A01[0] = "jDIZMq7wlAdnEmkEGDRuOyHBIh8qxobs";
            if (!zHasNext) {
                return;
            }
            new R1(this.A0B, map).execute(it.next());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0L() {
        C1581ah c1581ah = (C1581ah) this.A01;
        if (!c1581ah.A0T()) {
            throw new IllegalStateException(A00(0, 36, 24));
        }
        if (this.A06 != null) {
            this.A06.A0B(c1581ah);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0N(InterfaceC06640o interfaceC06640o, C8F c8f, C8D c8d, C06941s c06941s) {
        C1581ah c1581ah = (C1581ah) interfaceC06640o;
        long jCurrentTimeMillis = System.currentTimeMillis();
        C1543a5 c1543a5 = new C1543a5(this, c06941s, c1581ah, jCurrentTimeMillis, c8d);
        A0E().postDelayed(c1543a5, c8f.A05().A05());
        c1581ah.A0L(this.A0B, new C1542a4(this, c1543a5, jCurrentTimeMillis, c8d), this.A08, c06941s, UJ.A0K());
    }
}
