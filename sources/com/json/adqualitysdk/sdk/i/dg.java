package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class dg {
    private static int a = -767063802;
    private static int b = 61;
    private static int c = -200731006;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5521d = {-57, -97, -99, 111, -55, -70, -72, 106, -65, 76, -55, Ascii.VT, 1, -30, Ascii.FS, -4, -51, -96, 82, 91, -91, 93, -93, 91, -65, -84, -51, -78, 78, -73, -68, -100, 112, -83, 67, 76, -47, -77, 79, -66, -79, -96, 106, 66, -84, 66, -83, 74, 67, 80};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5522e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5523f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5524g = 1;
    private String h;
    private ISAdQualityAdType i;
    private JSONObject j;
    private List<String> k;
    private String l;
    private String m;

    public dg(JSONObject jSONObject) {
        this.i = ISAdQualityAdType.UNKNOWN;
        this.h = dq.m680(jSONObject.optString(a((-62) - (ViewConfiguration.getWindowTouchSlop() >> 8), (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 200731122, (byte) (TextUtils.indexOf("", "") + 106), (short) TextUtils.indexOf("", ""), 767063802 - View.MeasureSpec.makeMeasureSpec(0, 0)).intern()));
        String strM680 = dq.m680(jSONObject.optString(a((-61) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 200731103, (byte) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 79), (short) (1 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), 767063807 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern()));
        if (!TextUtils.isEmpty(strM680)) {
            this.i = ISAdQualityAdType.fromInt(Integer.parseInt(strM680));
        }
        this.j = jSONObject.optJSONObject(a((-62) - ExpandableListView.getPackedPositionType(0L), 200731118 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (byte) (TextUtils.getOffsetBefore("", 0) + 13), (short) (ViewConfiguration.getTouchSlop() >> 8), View.MeasureSpec.getMode(0) + 767063812).intern());
        this.k = ju.m953(jSONObject, a((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 63, 200731102 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (byte) ((ViewConfiguration.getJumpTapTimeout() >> 16) - 82), (short) (ViewConfiguration.getPressedStateDuration() >> 16), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 767063818).intern(), new ArrayList());
        this.l = dq.m680(jSONObject.optString(a((-61) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), 200731123 - ((byte) KeyEvent.getModifierMetaStateMask()), (byte) ((ViewConfiguration.getTouchSlop() >> 8) - 65), (short) ExpandableListView.getPackedPositionType(0L), MotionEvent.axisFromString("") + 767063829).intern()));
        this.m = dq.m680(jSONObject.optString(a((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) - 62, 200731124 - ImageFormat.getBitsPerPixel(0), (byte) (TextUtils.lastIndexOf("", '0', 0) - 65), (short) KeyEvent.normalizeMetaState(0), 767063838 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern()));
    }

    private static String a(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = b;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5521d;
                i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5522e[a + i3] + i4);
            }
            if (i5 > 0) {
                n.f136 = ((i3 + i5) - 2) + a + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i2 + c);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i5) {
                    byte[] bArr2 = f5521d;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5522e;
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i7] + s)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final String m633() {
        int i = f5523f + 97;
        int i2 = i % 128;
        f5524g = i2;
        int i3 = i % 2;
        String str = this.m;
        int i4 = i2 + 65;
        f5523f = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final List<String> m634() {
        List<String> list;
        int i = f5523f + 47;
        int i2 = i % 128;
        f5524g = i2;
        if (!(i % 2 == 0)) {
            list = this.k;
        } else {
            list = this.k;
            int i3 = 11 / 0;
        }
        int i4 = i2 + 9;
        f5523f = i4 % 128;
        int i5 = i4 % 2;
        return list;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m635() {
        int i = f5524g;
        int i2 = i + 73;
        f5523f = i2 % 128;
        int i3 = i2 % 2;
        String str = this.h;
        int i4 = i + 35;
        f5523f = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m636() {
        int i = f5523f + 93;
        int i2 = i % 128;
        f5524g = i2;
        int i3 = i % 2;
        JSONObject jSONObject = this.j;
        int i4 = i2 + 35;
        f5523f = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return jSONObject;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ISAdQualityAdType m637() {
        int i = f5523f;
        int i2 = i + 57;
        f5524g = i2 % 128;
        int i3 = i2 % 2;
        ISAdQualityAdType iSAdQualityAdType = this.i;
        int i4 = i + 11;
        f5524g = i4 % 128;
        int i5 = i4 % 2;
        return iSAdQualityAdType;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m638() {
        int i = f5523f + 67;
        f5524g = i % 128;
        if (i % 2 != 0) {
            return this.l;
        }
        throw null;
    }
}
