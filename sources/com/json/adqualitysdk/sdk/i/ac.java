package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.v;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ac extends v<View> implements View.OnLayoutChangeListener, jh {
    private static char[] r = {'W', 'i', 'n', 'd', 'o', 'w', 'V', 'e', 'A', 'H', 'a', 'l', 'r', 'E', ' ', 's', 't', 'g', 'v', 'f', 'm', ':', 'L', 'y', 'u', 'C', 'h', 'X', 'Y', 'Z', '[', '\\', ']', '^', '_', '`'};
    private static char s = 6;
    private static int t = 0;
    private static int u = 1;
    private Class v;
    private WeakHashMap<View, Boolean> w;
    private c x;

    public class c extends v.e {
        private static int m = 166;
        private static char[] n = {396, 383, 379, 397, 345, 386, 375, 393, 356, 387, 395, 365, 376, 382, 392, 389, 388, 394, 358, 380, 398, 322, 352, 377, 390};
        private static int o = 278;
        private static boolean p = true;
        private static boolean q = true;
        private static int r = 0;
        private static int s = 1;
        private String t;
        private String u;
        private String v;

        public c(ac acVar) {
        }

        public c(ac acVar, JSONObject jSONObject) {
            q(jSONObject.optString(o(266 - Process.getGidForName(""), false, 16 - (ViewConfiguration.getKeyRepeatDelay() >> 16), 23 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), "\u0012\uffde\u0007￼\u000e\u000e￩￼\b\u0000￫\r\u0000\u0001\u0004\u0013\u0012\u0000�\ufff1\u0004\u0000").intern()));
            p(jSONObject.optString(s(null, null, 127 - ExpandableListView.getPackedPositionType(0L), "\u0083\u008a\u0087\u0089\u0088\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern()));
            n(jSONObject.optString(o(TextUtils.lastIndexOf("", '0', 0, 0) + 272, true, 7 - TextUtils.getOffsetAfter("", 0), 15 - TextUtils.lastIndexOf("", '0'), "￭\u000b\u0005￼\t\ufff8\u0007\u000f\u0000�￼\t\uffe7\u000e￼\u0000").intern()));
            m1060(jSONObject.optString(o(268 - (KeyEvent.getMaxKeyCode() >> 16), true, TextUtils.indexOf("", "", 0) + 4, Drawable.resolveOpacity(0, 0) + 10, "\t￮\r\u0004\u000e�\uffff\u0004\b￣").intern()));
            m1059(false);
            m1063(!TextUtils.isEmpty(jSONObject.optString(o((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 268, true, 3 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 9, "\t￮\r\u0004\u000e�\uffff\u0004\b￣").intern())) || jSONObject.optBoolean(o(268 - (ViewConfiguration.getKeyRepeatDelay() >> 16), false, 8 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), 15 - TextUtils.lastIndexOf("", '0'), "\uffff\u0011\uffdd\u0006\u0003\uffff\b\u000e\u000f\r\uffff\ufff1\uffff￼\ufff0\u0003").intern()) || jSONObject.optBoolean(s(null, null, 127 - (ViewConfiguration.getTapTimeout() >> 16), "\u0092\u0091\u0083\u0082\u0086\u0085\u0083\u008a\u0090\u008f\u008e\u0085\u008d\u0083\u008c\u0083\u0088\u008b").intern()));
            m1056(jSONObject.optBoolean(o(268 - View.getDefaultSize(0, 0), false, 7 - MotionEvent.axisFromString(""), (ViewConfiguration.getJumpTapTimeout() >> 16) + 16, "\uffff\u0011\uffdd\u0006\u0003\uffff\b\u000e\u000f\r\uffff\ufff1\uffff￼\ufff0\u0003").intern()));
            m1057(jSONObject.optBoolean(o((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 269, false, 5 - TextUtils.lastIndexOf("", '0', 0), 10 - TextUtils.indexOf("", "", 0, 0), "\u0011\r\u000b\ufffa￣\f\u000e\f\ufffe\uffde").intern()));
            m1062(TextUtils.isEmpty(jSONObject.optString(s(null, null, 126 - TextUtils.indexOf((CharSequence) "", '0'), "\u0095\u0082\u0094\u0083\u008f\u0093\u0086\u008f\u008b").intern())) ? null : Arrays.asList(jSONObject.optString(s(null, null, 127 - ((Process.getThreadPriority(0) + 20) >> 6), "\u0095\u0082\u0094\u0083\u008f\u0093\u0086\u008f\u008b").intern()).split(s(null, null, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 126, "\u0096").intern())));
            m1064(jSONObject.optBoolean(s(null, null, KeyEvent.normalizeMetaState(0) + 127, "\u0092\u0099\u0082\u008f\u0098\u0088\u0087\u0081\u0087\u0097\u0083\u0088\u008b").intern(), true));
            m1065(false);
            m1061(jSONObject.optBoolean(o((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 270, false, 14 - ExpandableListView.getPackedPositionGroup(0L), (ViewConfiguration.getTapTimeout() >> 16) + 27, "\u0011\r\ufffe\u000b\u0007\ufffa\u0005ￛ\u000b\b\u0010\f\ufffe\u000b\b\t\ufffe\u0007ￜ\u0005\u0002￼\u0004\f￢\u0007\uffde").intern()));
            m1055(jSONObject.optBoolean(o(ExpandableListView.getPackedPositionGroup(0L) + 272, true, Color.rgb(0, 0, 0) + 16777227, Color.alpha(0) + 17, "\t\u0004\uffdf\ufffb\u0002\u0006\uffff\n\u0002\u000b\u0003\t\ufffb\ufff9\u0004\ufff7\n").intern()));
            m1054(jSONObject.optBoolean(o(TextUtils.lastIndexOf("", '0', 0, 0) + 271, true, 7 - ((byte) KeyEvent.getModifierMetaStateMask()), TextUtils.getCapsMode("", 0, 0) + 9, "\u000b\u0007￨\u0006\uffe7\b\u0005\u0001\f").intern()));
            m1058(ju.m956(jSONObject.optJSONArray(o(271 - ExpandableListView.getPackedPositionGroup(0L), false, 3 - View.resolveSizeAndState(0, 0, 0), (ViewConfiguration.getFadingEdgeLength() >> 16) + 13, "\u0006\t￼\r\u0000￼\u000e\n￫\u0006￠\ufffe\u0005").intern())));
        }

        static /* synthetic */ String l(c cVar) {
            int i = r + 13;
            int i2 = i % 128;
            s = i2;
            int i3 = i % 2;
            String str = cVar.t;
            int i4 = i2 + 31;
            r = i4 % 128;
            if ((i4 % 2 != 0 ? 'E' : 'B') != 'E') {
                return str;
            }
            throw null;
        }

        static /* synthetic */ String m(c cVar) {
            int i = r + 101;
            s = i % 128;
            char c = i % 2 == 0 ? (char) 6 : (char) 14;
            String str = cVar.v;
            if (c == 6) {
                int i2 = 15 / 0;
            }
            return str;
        }

        private c n(String str) {
            int i = r + 101;
            s = i % 128;
            if (!(i % 2 == 0)) {
                this.v = str;
                return this;
            }
            this.v = str;
            throw null;
        }

        private static String o(int i, boolean z, int i2, int i3, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
                char[] cArr2 = new char[i3];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i4 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i4 >= i3) {
                        break;
                    }
                    com.json.adqualitysdk.sdk.i.c.f37 = cArr[i4];
                    cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i);
                    int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                    cArr2[i5] = (char) (cArr2[i5] - m);
                    com.json.adqualitysdk.sdk.i.c.f36 = i5 + 1;
                }
                if (i2 > 0) {
                    com.json.adqualitysdk.sdk.i.c.f38 = i2;
                    char[] cArr3 = new char[i3];
                    System.arraycopy(cArr2, 0, cArr3, 0, i3);
                    int i6 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                    int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
                }
                if (z) {
                    char[] cArr4 = new char[i3];
                    com.json.adqualitysdk.sdk.i.c.f36 = 0;
                    while (true) {
                        int i8 = com.json.adqualitysdk.sdk.i.c.f36;
                        if (i8 >= i3) {
                            break;
                        }
                        cArr4[i8] = cArr2[(i3 - i8) - 1];
                        com.json.adqualitysdk.sdk.i.c.f36 = i8 + 1;
                    }
                    cArr2 = cArr4;
                }
                str2 = new String(cArr2);
            }
            return str2;
        }

        private c p(String str) {
            int i = s + 49;
            int i2 = i % 128;
            r = i2;
            int i3 = i % 2;
            this.t = str;
            int i4 = i2 + 21;
            s = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        private c q(String str) {
            int i = s + 13;
            int i2 = i % 128;
            r = i2;
            if ((i % 2 != 0 ? (char) 15 : 'N') == 15) {
                this.u = str;
                throw null;
            }
            this.u = str;
            int i3 = i2 + 75;
            s = i3 % 128;
            if (i3 % 2 != 0) {
                return this;
            }
            throw null;
        }

        static /* synthetic */ String r(c cVar) {
            int i = r;
            int i2 = i + 67;
            s = i2 % 128;
            int i3 = i2 % 2;
            String str = cVar.u;
            int i4 = i + 63;
            s = i4 % 128;
            if ((i4 % 2 == 0 ? (char) 7 : 'F') == 'F') {
                return str;
            }
            throw null;
        }

        private static String s(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
            Object bytes = str2;
            if (str2 != null) {
                bytes = str2.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (k.f131) {
                char[] cArr2 = n;
                int i2 = o;
                if (q) {
                    int length = bArr.length;
                    k.f129 = length;
                    char[] cArr3 = new char[length];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i3 = k.f130;
                        int i4 = k.f129 - 1;
                        int i5 = k.f130;
                        cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                        k.f130 = i5 + 1;
                    }
                    return new String(cArr3);
                }
                if (p) {
                    int length2 = cArr.length;
                    k.f129 = length2;
                    char[] cArr4 = new char[length2];
                    k.f130 = 0;
                    while (k.f130 < k.f129) {
                        int i6 = k.f130;
                        int i7 = k.f129 - 1;
                        int i8 = k.f130;
                        cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                        k.f130 = i8 + 1;
                    }
                    return new String(cArr4);
                }
                int length3 = iArr.length;
                k.f129 = length3;
                char[] cArr5 = new char[length3];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i9 = k.f130;
                    int i10 = k.f129 - 1;
                    int i11 = k.f130;
                    cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                    k.f130 = i11 + 1;
                }
                return new String(cArr5);
            }
        }
    }

    ac(JSONObject jSONObject) {
        super(null);
        this.w = new WeakHashMap<>();
        this.x = new c(this);
        m237(jSONObject);
    }

    private View s(View view, Class cls) {
        if (!(!(view instanceof ViewGroup))) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (cls.isAssignableFrom(childAt.getClass())) {
                    int i2 = t + 107;
                    u = i2 % 128;
                    if (i2 % 2 != 0) {
                        return childAt;
                    }
                    throw null;
                }
                View viewS = s(childAt, cls);
                if (viewS != null) {
                    int i3 = u + 65;
                    t = i3 % 128;
                    if (i3 % 2 != 0) {
                        int i4 = 67 / 0;
                    }
                    return viewS;
                }
            }
        }
        return null;
    }

    private void t(View view) {
        if ((!this.w.containsKey(view) ? (char) 14 : '9') == 14) {
            this.w.put(view, Boolean.TRUE);
            k(view, Integer.toHexString(view.hashCode()));
            int i = u + 63;
            t = i % 128;
            int i2 = i % 2;
        }
        int i3 = u + 33;
        t = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 29 : '*') != '*') {
            int i4 = 44 / 0;
        }
    }

    private static String u(byte b, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = r;
            char c2 = s;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    private static View v(View view) {
        int i = t + 99;
        u = i % 128;
        if (i % 2 == 0) {
            int i2 = 91 / 0;
        }
        return view;
    }

    private View w(View view, String str) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        int i = t + 57;
        int i2 = i % 128;
        u = i2;
        if (i % 2 == 0) {
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i3 = i2 + 63;
        t = i3 % 128;
        int i4 = i3 % 2;
        for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
            int i6 = u + 91;
            t = i6 % 128;
            int i7 = i6 % 2;
            View childAt = viewGroup.getChildAt(i5);
            if (!(!childAt.getClass().getName().startsWith(str))) {
                int i8 = t + 53;
                u = i8 % 128;
                int i9 = i8 % 2;
                return childAt;
            }
            View viewW = w(childAt, str);
            if ((viewW != null ? 'T' : '\r') == 'T') {
                int i10 = t + 117;
                u = i10 % 128;
                int i11 = i10 % 2;
                return viewW;
            }
        }
        return null;
    }

    private void x(View view, List<WebView> list) {
        int i = t + 83;
        u = i % 128;
        int i2 = i % 2;
        ka.m1009(view, WebView.class, c.r(this.x), true, false, null, this.x.l, list);
        int i3 = t + 69;
        u = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 19 : (char) 7) != 19) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    private void m236() {
        int i = u + 9;
        t = i % 128;
        int i2 = i % 2;
        jd.m907().m909(this);
        int i3 = t + 83;
        u = i3 % 128;
        int i4 = i3 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final ad f() {
        z zVar = new z();
        int i = t + 53;
        u = i % 128;
        if ((i % 2 == 0 ? (char) 7 : (char) 23) == 23) {
            return zVar;
        }
        int i2 = 5 / 0;
        return zVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final p<WebView, View> m() {
        int i = u + 21;
        int i2 = i % 128;
        t = i2;
        int i3 = i % 2;
        int i4 = i2 + 41;
        u = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return this;
        }
        int i5 = 44 / 0;
        return this;
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final /* synthetic */ View o(View view) {
        int i = u + 65;
        t = i % 128;
        char c2 = i % 2 != 0 ? 'T' : 'D';
        View viewV = v(view);
        if (c2 == 'T') {
            int i2 = 59 / 0;
        }
        int i3 = t + 125;
        u = i3 % 128;
        int i4 = i3 % 2;
        return viewV;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        char c2 = '+';
        int i9 = u + 43;
        t = i9 % 128;
        int i10 = i9 % 2;
        try {
            View viewS = s(view, this.v);
            if (viewS == null) {
                c2 = 'N';
            }
            if (c2 != 'N') {
                t(viewS);
                view.removeOnLayoutChangeListener(this);
                int i11 = t + 65;
                u = i11 % 128;
                int i12 = i11 % 2;
            }
        } catch (Throwable th) {
            jy.m987(u((byte) (25 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\u0000\u000b\u0001\t\u0002\n\u000b\u0003\u0004\u0006\b\u008b", Gravity.getAbsoluteGravity(0, 0) + 19).intern(), u((byte) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 8), "\u000e\r\u0010\u0000\r\u000f\u0002\u0003\u0010\u0002\u0004\u0014\u000b\u0016\u0000\u001c\r\u001c\u001c\b\u0005\u000em", (ViewConfiguration.getScrollBarSize() >> 8) + 23).intern(), th, false);
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.v
    final /* synthetic */ void r(View view, List list) {
        int i = t + 89;
        u = i % 128;
        int i2 = i % 2;
        x(view, list);
        int i3 = u + 75;
        t = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m237(JSONObject jSONObject) {
        c cVar = new c(this, jSONObject);
        q(cVar);
        this.x = cVar;
        try {
            this.v = Class.forName(c.l(cVar));
            int i = u + 75;
            t = i % 128;
            int i2 = i % 2;
            m236();
        } catch (ClassNotFoundException e2) {
            String strIntern = u((byte) (25 - Color.alpha(0)), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\u0000\u000b\u0001\t\u0002\n\u000b\u0003\u0004\u0006\b\u008b", (ViewConfiguration.getPressedStateDuration() >> 16) + 19).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(u((byte) (AndroidCharacter.getMirror('0') + 'I'), "\u000e\r\u0010\u0000\r\u000f\u0007\u0005\u0010\u0011\b\u0001\u0002\u0003\f\u000f\u0016\n\r\b\u0013\u0006\u0004\u000e\u0010\u000f\u0012\r\u0002\u0016\u0099", (ViewConfiguration.getLongPressTimeout() >> 16) + 31).intern());
            sb.append(c.l(cVar));
            sb.append(u((byte) (160 - AndroidCharacter.getMirror('0')), "\u0014\u000f", (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 1).intern());
            sb.append(e2.getLocalizedMessage());
            m.m1019(strIntern, sb.toString());
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m238() {
        int i = t + 59;
        u = i % 128;
        int i2 = i % 2;
        m1070((p) null);
        jd.m907().m908(this);
        int i3 = t + 53;
        u = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001b, code lost:
    
        if ((r0 == null) != true) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
    
        if (r0 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
    
        r5 = com.json.adqualitysdk.sdk.i.ac.u + 17;
        com.json.adqualitysdk.sdk.i.ac.t = r5 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        if ((r5 % 2) == 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        r5 = 28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        r5 = 'b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
    
        if (r5 == 'b') goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        t(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        r5 = 66 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0046, code lost:
    
        t(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        if (android.text.TextUtils.isEmpty(com.ironsource.adqualitysdk.sdk.i.ac.c.m(r4.x)) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        r5 = w(r5, com.ironsource.adqualitysdk.sdk.i.ac.c.m(r4.x));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
    
        if (r5 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.ac.u + 61;
        com.json.adqualitysdk.sdk.i.ac.t = r0 % 128;
        r0 = r0 % 2;
        r5.addOnLayoutChangeListener(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006f, code lost:
    
        if (r0 == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0073, code lost:
    
        r5 = 56 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0077, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:?, code lost:
    
        return;
     */
    @Override // com.json.adqualitysdk.sdk.i.jh
    /* JADX INFO: renamed from: ﻛ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void mo234(android.view.View r5) {
        /*
            r4 = this;
            int r0 = com.json.adqualitysdk.sdk.i.ac.u
            int r0 = r0 + 25
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ac.t = r1
            int r0 = r0 % 2
            r1 = 0
            if (r0 == 0) goto L20
            java.lang.Class r0 = r4.v
            android.view.View r0 = r4.s(r5, r0)
            int r2 = r1 / r1
            r2 = 1
            if (r0 == 0) goto L1a
            r3 = 0
            goto L1b
        L1a:
            r3 = 1
        L1b:
            if (r3 == r2) goto L4a
            goto L28
        L1e:
            r5 = move-exception
            throw r5
        L20:
            java.lang.Class r0 = r4.v
            android.view.View r0 = r4.s(r5, r0)
            if (r0 == 0) goto L4a
        L28:
            int r5 = com.json.adqualitysdk.sdk.i.ac.u
            int r5 = r5 + 17
            int r2 = r5 % 128
            com.json.adqualitysdk.sdk.i.ac.t = r2
            int r5 = r5 % 2
            r2 = 98
            if (r5 == 0) goto L39
            r5 = 28
            goto L3b
        L39:
            r5 = 98
        L3b:
            if (r5 == r2) goto L46
            r4.t(r0)
            r5 = 66
            int r5 = r5 / r1
            goto L49
        L44:
            r5 = move-exception
            throw r5
        L46:
            r4.t(r0)
        L49:
            return
        L4a:
            com.ironsource.adqualitysdk.sdk.i.ac$c r0 = r4.x
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.ac.c.m(r0)
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L77
            com.ironsource.adqualitysdk.sdk.i.ac$c r0 = r4.x
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.ac.c.m(r0)
            android.view.View r5 = r4.w(r5, r0)
            if (r5 == 0) goto L77
            int r0 = com.json.adqualitysdk.sdk.i.ac.u
            int r0 = r0 + 61
            int r2 = r0 % 128
            com.json.adqualitysdk.sdk.i.ac.t = r2
            int r0 = r0 % 2
            r5.addOnLayoutChangeListener(r4)
            if (r0 == 0) goto L77
            r5 = 56
            int r5 = r5 / r1
            goto L77
        L75:
            r5 = move-exception
            throw r5
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ac.mo234(android.view.View):void");
    }

    @Override // com.json.adqualitysdk.sdk.i.jh
    /* JADX INFO: renamed from: ﾒ */
    public final void mo235(View view) {
        int i = u + 59;
        t = i % 128;
        int i2 = i % 2;
        View viewS = s(view, this.v);
        if (!(viewS == null)) {
            if (this.w.remove(viewS) != null) {
                j(view);
            }
        }
        int i3 = u + 53;
        t = i3 % 128;
        if (i3 % 2 == 0) {
        } else {
            throw null;
        }
    }
}
