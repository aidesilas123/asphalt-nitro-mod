package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.google.android.gms.ads.MobileAds;
import com.json.adqualitysdk.sdk.i.bb;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class fw implements gd {
    private static int a = 802714798;
    private static int b = 116;
    private static int c = 323636915;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5643d = {-80, Ascii.FF, 32, -33, -6, 0, 4, -16, 33, Ascii.FS, -72, Ascii.FF, 0, 48, -72, 5, 5, 58, -55, -8, -7, -2, Ascii.CR, -11, Ascii.SO, 48, -54, -6, 6, -5, 3, Ascii.VT, 58, -62, -3, Ascii.SI, -100, -82, 95, 84, 94, 111, -31, 92, 94, -90, 76, -93, -86, 93, -94, 81, -113, -125, 118, -111, 60, -51, -58, -52, -78, -122, 119, -86, 84, 112, -119, 121, -114, -126, -128, -89, 52, -128, -116, -68, 52, -119, -119, -74, 69, 116, 117, 114, -127, 121, -126, -68, 70, 118, -118, 119, -113, -121, -74, 78, 113, -125};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5644e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5645f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5646g = 1;

    private static boolean a() {
        try {
            if ((Prode.m219() ? (char) 4 : '>') == '>') {
                Class.forName(b((-116) - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (-323636817) - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (byte) (((byte) KeyEvent.getModifierMetaStateMask()) - 112), (short) TextUtils.indexOf("", "", 0, 0), (-802714737) - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern());
                return true;
            }
            int i = f5645f + 83;
            int i2 = i % 128;
            f5646g = i2;
            int i3 = i % 2;
            int i4 = i2 + 33;
            f5645f = i4 % 128;
            int i5 = i4 % 2;
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static String b(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = b;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5643d;
                i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5644e[a + i3] + i4);
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
                    byte[] bArr2 = f5643d;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5644e;
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

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = f5646g;
        int i2 = i + 31;
        f5645f = i2 % 128;
        if ((i2 % 2 != 0 ? '\"' : '[') == '\"') {
            throw null;
        }
        int i3 = i + 55;
        f5645f = i3 % 128;
        int i4 = i3 % 2;
        return MobileAds.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = f5645f + 51;
        f5646g = i % 128;
        String strIntern = (!(i % 2 == 0) ? b(ExpandableListView.getPackedPositionType(0L) - 117, (ViewConfiguration.getScrollDefaultDelay() >> 16) - 323636816, (byte) ((ViewConfiguration.getEdgeSlop() >> 16) + 3), (short) KeyEvent.normalizeMetaState(0), (-802714798) - TextUtils.getOffsetAfter("", 0)) : b(10 << ExpandableListView.getPackedPositionType(1L), (-323636816) << (ViewConfiguration.getScrollDefaultDelay() + 60), (byte) (4 >>> (ViewConfiguration.getEdgeSlop() % 44)), (short) KeyEvent.normalizeMetaState(1), (-802714798) << TextUtils.getOffsetAfter("", 1))).intern();
        int i2 = f5646g + 77;
        f5645f = i2 % 128;
        if ((i2 % 2 != 0 ? '-' : 'L') != '-') {
            return strIntern;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(b((-117) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), TextUtils.getTrimmedLength("") - 323636816, (byte) (93 - TextUtils.getTrimmedLength("")), (short) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1), View.getDefaultSize(0, 0) - 802714762).intern(), b((-117) - (ViewConfiguration.getMaximumFlingVelocity() >> 16), (-323636861) - ExpandableListView.getPackedPositionChild(0L), (byte) ((Process.myPid() >> 22) - 127), (short) View.resolveSizeAndState(0, 0, 0), 35766 - AndroidCharacter.getMirror('0')).intern());
        int i = f5646g + 97;
        f5645f = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        int i = f5645f + 75;
        f5646g = i % 128;
        if (i % 2 == 0) {
            a();
            throw null;
        }
        if (!a()) {
            return new bb(b(TextUtils.lastIndexOf("", '0', 0, 0) - 116, KeyEvent.getDeadChar(0, 0) - 323636818, (byte) ((-49) - ((Process.getThreadPriority(0) + 20) >> 6)), (short) ExpandableListView.getPackedPositionType(0L), Drawable.resolveOpacity(0, 0) - 802714743).intern());
        }
        bb.c cVar = new bb.c(b((ViewConfiguration.getScrollDefaultDelay() >> 16) - 117, (-323636818) - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (byte) (Color.argb(0, 0, 0, 0) - 49), (short) ((-1) - Process.getGidForName("")), (-802714743) - (ViewConfiguration.getEdgeSlop() >> 16)).intern());
        int i2 = f5646g + 19;
        f5645f = i2 % 128;
        int i3 = i2 % 2;
        return cVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int absoluteGravity;
        int packedPositionGroup;
        byte b2;
        short tapTimeout;
        int mode;
        int i = f5646g + 63;
        f5645f = i % 128;
        if (i % 2 == 0) {
            absoluteGravity = (-117) - Gravity.getAbsoluteGravity(0, 0);
            packedPositionGroup = ExpandableListView.getPackedPositionGroup(0L) - 323636818;
            b2 = (byte) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) - 50);
            tapTimeout = (short) (ViewConfiguration.getTapTimeout() >> 16);
            mode = (-802714743) - View.MeasureSpec.getMode(0);
        } else {
            absoluteGravity = Gravity.getAbsoluteGravity(0, 0) * 58;
            packedPositionGroup = ExpandableListView.getPackedPositionGroup(1L) * (-323636818);
            b2 = (byte) (83 >> (SystemClock.uptimeMillis() > 1L ? 1 : (SystemClock.uptimeMillis() == 1L ? 0 : -1)));
            tapTimeout = (short) (ViewConfiguration.getTapTimeout() - 116);
            mode = (-802714743) % View.MeasureSpec.getMode(0);
        }
        return b(absoluteGravity, packedPositionGroup, b2, tapTimeout, mode).intern();
    }
}
