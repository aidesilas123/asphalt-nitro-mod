package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class YL implements InterfaceC07975u {
    public static byte[] A03;
    public static String[] A04 = {"Yyt8Jrp", "FvQHlihhdkZe9tXm7YLHdG4gIBqm", "h7ITXytSbKbsxwMfZDKdUPEvMsTrizAq", "0TuNzKSIMRKA8K3EzRQL94hbriXTa7QT", "ySuQOOQJHVodSpCznPaDLfXVVxuxvbGA", "XYB8XYCfCTfWBGtKG07Wi1HuHmIQx2qC", "71D0xe3tljOi7f3b0iOVOXaXnoSWhNo4", "dwdYeokke3ChTNA3vTF4hdqHGwVronGN"};
    public final R6 A01;
    public Set<InterfaceC08005x> A00 = new HashSet();
    public final List<InterfaceC07995w> A02 = new ArrayList();

    static {
        A02();
    }

    public YL(InterfaceC1035Ge interfaceC1035Ge) {
        R6 r6A4e = interfaceC1035Ge.A4e(R7.A0B);
        this.A01 = r6A4e;
        r6A4e.A3N(new YM(this));
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 107);
        }
        return new String(bArrCopyOfRange);
    }

    public static Set<InterfaceC08005x> A01(JSONObject jSONObject) {
        YK ykA00;
        HashSet hashSet = new HashSet();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A00(8, 6, 93));
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null || (ykA00 = YK.A00(jSONObjectOptJSONObject)) == null) {
                return null;
            }
            hashSet.add(ykA00);
            if (A04[1].length() == 21) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[6] = "2zeGpFgTpOohtr7xv9EhLTO87hKhrQIZ";
            strArr[3] = "Z45Lb0RXWpRaUi2IX7mXCACeVe5qt7dU";
        }
        return hashSet;
    }

    public static void A02() {
        A03 = new byte[]{-72, -72, -67, Ascii.VT, -46, -72, -67, Ascii.VT, 41, 59, 59, 45, 60, 59};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A03() {
        if (!this.A01.A90()) {
            BuildConfigApi.isDebug();
            return;
        }
        Set<InterfaceC08005x> setA01 = A01(this.A01.A6b());
        if (!this.A00.equals(setA01) && setA01 != null) {
            this.A00 = setA01;
            Iterator<InterfaceC07995w> it = this.A02.iterator();
            while (it.hasNext()) {
                it.next().A3Z();
            }
        }
        if (BuildConfigApi.isDebug()) {
            for (InterfaceC08005x interfaceC08005x : this.A00) {
                String.format(Locale.US, A00(0, 8, 45), interfaceC08005x.A84(), interfaceC08005x.getUrl());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07975u
    public final void A3L(InterfaceC07995w interfaceC07995w) {
        this.A02.add(interfaceC07995w);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07975u
    public final synchronized Set<InterfaceC08005x> A5x() {
        return new HashSet(this.A00);
    }
}
