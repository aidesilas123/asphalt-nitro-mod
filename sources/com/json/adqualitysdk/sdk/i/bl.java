package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.fyber.Fyber;
import com.fyber.ads.internal.Offer;
import com.fyber.ads.ofw.OfferWallActivity;
import com.json.adqualitysdk.sdk.i.az;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bl extends az {
    private static char[] t = {43269, 51429, 27295, 36027, 11853, 55862, 48064, 6561, 65409, 23927, 13173, 37154, 30476, 54509, 43759, 2220, 61080, 19556, 8796, 32802, 26140, 51184, 39799, 64164, 22727, 48807, 7182, 29238, 53324, 13928, 38302, 60397, 18883, 45029, 3347, 25449, 49481, 10083, 34451, 58613, 31477, 55551, 15902, 39994, 62028, 20554, 47005, 5567, 27614, 51664, 12051, 36131, 58207, 16739, 41117, 1759, 25843, 51641, 43087, 2606, 60430, 20216};
    private static long u = -9188233669959654945L;
    private static int v = 0;
    private static int w = 1;

    public bl(String str) {
        super(str);
    }

    private static String k(int i, int i2, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) t[i2 + i3]) ^ (((long) i3) * u)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        int i = w + 107;
        v = i % 128;
        int i2 = i % 2;
        return map;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    final Class mo384(String str) {
        byte b = -1;
        switch (str.hashCode()) {
            case -2030618966:
                if (str.equals(k(35 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), 22 - (ViewConfiguration.getJumpTapTimeout() >> 16), (char) (39700 - Color.argb(0, 0, 0, 0))).intern())) {
                    int i = v + 21;
                    w = i % 128;
                    b = i % 2 == 0 ? (byte) 4 : (byte) 2;
                }
                break;
            case 68348604:
                if (str.equals(k((Process.myPid() >> 22) + 5, KeyEvent.getDeadChar(0, 0), (char) (43331 - (ViewConfiguration.getWindowTouchSlop() >> 8))).intern())) {
                    b = 0;
                }
                break;
            case 76098108:
                if (str.equals(k((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 5, Color.red(0) + 57, (char) (51701 - ((byte) KeyEvent.getModifierMetaStateMask()))).intern())) {
                    int i2 = w + 3;
                    v = i2 % 128;
                    int i3 = i2 % 2;
                    b = 3;
                }
                break;
            case 701989717:
                if (str.equals(k((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 16, 5 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), (char) (55928 - ExpandableListView.getPackedPositionChild(0L))).intern())) {
                    b = 1;
                }
                break;
        }
        if (b == 0) {
            return Fyber.class;
        }
        if (b == 1 || b == 2) {
            return OfferWallActivity.class;
        }
        if (b != 3) {
            return null;
        }
        int i4 = w + 7;
        v = i4 % 128;
        int i5 = i4 % 2;
        return Offer.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = w + 111;
        v = i % 128;
        int i2 = i % 2;
        String str = Fyber.RELEASE_VERSION_STRING;
        int i3 = v + 97;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return str;
        }
        throw null;
    }
}
