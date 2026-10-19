package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.az;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.json.mediationsdk.impressionData.ImpressionDataListener;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class bn extends az {
    private static long t = -6277948158407650661L;
    private static char u = 42782;
    private static char v = 29885;
    private static char w = 45155;
    private static char x = 37949;
    private static int y = 0;
    private static int z = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bn.k((ImpressionData) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bn.u((IronSourceBannerLayout) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bn.q((ImpressionDataListener) list.get(0));
            return null;
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bn.l((ImpressionDataListener) list.get(0));
            return null;
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bn.v((Placement) list.get(0));
        }
    }

    public bn(String str) {
        super(str);
    }

    static /* synthetic */ JSONObject k(ImpressionData impressionData) {
        int i = y + 49;
        z = i % 128;
        int i2 = i % 2;
        JSONObject jSONObjectP = p(impressionData);
        int i3 = z + 91;
        y = i3 % 128;
        int i4 = i3 % 2;
        return jSONObjectP;
    }

    static /* synthetic */ void l(ImpressionDataListener impressionDataListener) {
        int i = y + 53;
        z = i % 128;
        boolean z2 = i % 2 == 0;
        s(impressionDataListener);
        if (z2) {
            throw null;
        }
        int i2 = y + 45;
        z = i2 % 128;
        int i3 = i2 % 2;
    }

    private static String m(IronSourceBannerLayout ironSourceBannerLayout) {
        int i = y + 119;
        z = i % 128;
        int i2 = i % 2;
        String placementName = ironSourceBannerLayout.getPlacementName();
        int i3 = z + 71;
        y = i3 % 128;
        if (i3 % 2 == 0) {
            return placementName;
        }
        throw null;
    }

    private static String n(Placement placement) {
        if ((placement != null ? '^' : '\'') == '\'') {
            int i = y + 125;
            z = i % 128;
            int i2 = i % 2;
            return null;
        }
        int i3 = z + 69;
        y = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 16 : '\t') == '\t') {
            return placement.getPlacementName();
        }
        placement.getPlacementName();
        throw null;
    }

    private static String o(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ t);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private static JSONObject p(ImpressionData impressionData) {
        int i = z + 13;
        y = i % 128;
        if ((i % 2 != 0 ? (char) 5 : 'G') != 'G') {
            impressionData.getAllData();
            throw null;
        }
        JSONObject allData = impressionData.getAllData();
        int i2 = y + 67;
        z = i2 % 128;
        if (i2 % 2 != 0) {
            return allData;
        }
        int i3 = 54 / 0;
        return allData;
    }

    static /* synthetic */ void q(ImpressionDataListener impressionDataListener) {
        int i = y + 69;
        z = i % 128;
        boolean z2 = i % 2 == 0;
        t(impressionDataListener);
        if (z2) {
            throw null;
        }
        int i2 = y + 85;
        z = i2 % 128;
        int i3 = i2 % 2;
    }

    private static String r(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + w)) ^ ((cArr3[0] >>> 5) + x)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + u)) ^ ((cArr3[1] >>> 5) + v)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    private static void s(ImpressionDataListener impressionDataListener) {
        int i = z + 41;
        y = i % 128;
        char c2 = i % 2 != 0 ? 'P' : '$';
        IronSource.addImpressionDataListener(impressionDataListener);
        if (c2 == '$') {
        } else {
            throw null;
        }
    }

    private static void t(ImpressionDataListener impressionDataListener) {
        int i = z + 21;
        y = i % 128;
        int i2 = i % 2;
        IronSource.removeImpressionDataListener(impressionDataListener);
        int i3 = z + 53;
        y = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ String u(IronSourceBannerLayout ironSourceBannerLayout) {
        int i = y + 105;
        z = i % 128;
        int i2 = i % 2;
        String strM = m(ironSourceBannerLayout);
        int i3 = y + 13;
        z = i3 % 128;
        int i4 = i3 % 2;
        return strM;
    }

    static /* synthetic */ String v(Placement placement) {
        int i = z + 27;
        y = i % 128;
        int i2 = i % 2;
        String strN = n(placement);
        int i3 = z + 121;
        y = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return strN;
        }
        int i4 = 98 / 0;
        return strN;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(o("勼➳롵ബ蟃\u187b\ued36查\uf89e䵋쟷墠ⵉꘓ㣀赽", 30030 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern(), new e());
        map.put(o("勼\uf203ጕ뀮턎瘄霛㐕唁免ᬘ렽\ud928縷鼹㰘崧\ue237̲ꀹ섲昿蝋\u2454䕭\uea4fୄꡑ", 41213 - View.resolveSize(0, 0)).intern(), new b());
        map.put(o("勼嗙岡䞧乪焨砃惯毐\u12b7ᕴ᱙ܡฤ㛘㦦₊⭆퉖픑\uddf9", 1830 - ExpandableListView.getPackedPositionChild(0L)).intern(), new a());
        map.put(o("勺ꝼ맹뉛蓺饤鏻\ue46bﻰ\uf373여\ude55탑╸㿐あ\u0acaὤᇄ橑糓煁䮷尻嚡", KeyEvent.getDeadChar(0, 0) + 62851).intern(), new d());
        map.put(r("㴮㋐歅黕䀪\uaa3bፙ\uf334炨\u200c颚㛔\udb4b榛㪵㹎\uf2c0\ude5bⲺ겷襞ᮒ⺣侥瓜苧㝀늬", TextUtils.getOffsetBefore("", 0) + 28).intern(), new c());
        int i = z + 15;
        y = i % 128;
        int i2 = i % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0394  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo384(java.lang.String r17) {
        /*
            Method dump skipped, instruction units count: 1166
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bn.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = z + 39;
        y = i % 128;
        if ((i % 2 != 0 ? 'U' : (char) 7) == 7) {
            return IronSourceUtils.getSDKVersion();
        }
        IronSourceUtils.getSDKVersion();
        throw null;
    }
}
