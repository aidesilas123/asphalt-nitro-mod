package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ht<T> extends cx implements cg, hp<T> {
    private static char[] h = {230, 228, 243, 213, 224, 235, 244, 242, 232, 197, 227, 194, 238, 226, 237, 204, 239, 207, 241};
    private static int i = 127;
    private static boolean j = true;
    private static boolean k = true;
    private static int l = 0;
    private static int m = 1;
    private Field n;
    private Collection o;
    private Map p;
    private Object q;
    private hp r;

    ht(Field field, Object obj, hp hpVar) {
        this.n = field;
        this.q = obj;
        this.r = hpVar;
    }

    ht(Collection collection, Object obj, hp hpVar) {
        this.o = collection;
        this.q = obj;
        this.r = hpVar;
    }

    ht(Map map, Object obj, hp hpVar) {
        this.p = map;
        this.q = obj;
        this.r = hpVar;
    }

    private hp d() {
        int i2 = m + 111;
        l = i2 % 128;
        if (i2 % 2 == 0) {
            return this.r;
        }
        throw null;
    }

    private Map e() {
        int i2 = m + 67;
        l = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 30 : 'S') != 30) {
            return this.p;
        }
        throw null;
    }

    private Collection f() {
        int i2 = l;
        int i3 = i2 + 5;
        m = i3 % 128;
        if (!(i3 % 2 != 0)) {
            throw null;
        }
        Collection collection = this.o;
        int i4 = i2 + 51;
        m = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 21 : '\r') != 21) {
            return collection;
        }
        int i5 = 15 / 0;
        return collection;
    }

    private boolean g() {
        if ((this.n != null ? '$' : '@') != '$') {
            int i2 = l + 111;
            m = i2 % 128;
            int i3 = i2 % 2;
            return false;
        }
        int i4 = l + 19;
        m = i4 % 128;
        int i5 = i4 % 2;
        return true;
    }

    private static String h(int[] iArr, String str, int i2, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = h;
            int i3 = i;
            if (k) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i4 = k.f130;
                    int i5 = k.f129 - 1;
                    int i6 = k.f130;
                    cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                    k.f130 = i6 + 1;
                }
                return new String(cArr3);
            }
            if (j) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i7 = k.f130;
                    int i8 = k.f129 - 1;
                    int i9 = k.f130;
                    cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                    k.f130 = i9 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i10 = k.f130;
                int i11 = k.f129 - 1;
                int i12 = k.f130;
                cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                k.f130 = i12 + 1;
            }
            return new String(cArr5);
        }
    }

    private void i(T t) {
        int i2 = m + 57;
        l = i2 % 128;
        int i3 = i2 % 2;
        if ((g() ? 'W' : '`') != 'W') {
            return;
        }
        int i4 = l + 101;
        m = i4 % 128;
        int i5 = i4 % 2;
        try {
            this.n.set(this.q, t);
        } catch (Exception unused) {
        }
    }

    private boolean j() {
        int i2 = l;
        int i3 = i2 + 117;
        m = i3 % 128;
        int i4 = i3 % 2;
        if (!(this.p != null)) {
            return false;
        }
        int i5 = i2 + 113;
        m = i5 % 128;
        int i6 = i5 % 2;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        if ((r5.o != null ? 'Y' : '<') != 'Y') goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0027, code lost:
    
        if ((r5.o != null ? 2 : '*') != 2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0029, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002a, code lost:
    
        r1 = r1 + 77;
        com.json.adqualitysdk.sdk.i.ht.l = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
    
        if ((r1 % 2) == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0036, code lost:
    
        r1 = 27 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0037, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003a, code lost:
    
        return true;
     */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean m782() {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.ht.l
            int r0 = r0 + 35
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ht.m = r1
            r2 = 2
            int r0 = r0 % r2
            r3 = 0
            if (r0 != 0) goto L1f
            java.util.Collection r0 = r5.o
            r4 = 4
            int r4 = r4 / r3
            r4 = 89
            if (r0 == 0) goto L18
            r0 = 89
            goto L1a
        L18:
            r0 = 60
        L1a:
            if (r0 == r4) goto L2a
            goto L29
        L1d:
            r0 = move-exception
            throw r0
        L1f:
            java.util.Collection r0 = r5.o
            if (r0 == 0) goto L25
            r0 = 2
            goto L27
        L25:
            r0 = 42
        L27:
            if (r0 == r2) goto L2a
        L29:
            return r3
        L2a:
            r0 = 1
            int r1 = r1 + 77
            int r4 = r1 % 128
            com.json.adqualitysdk.sdk.i.ht.l = r4
            int r1 = r1 % r2
            if (r1 == 0) goto L3a
            r1 = 27
            int r1 = r1 / r3
            return r0
        L38:
            r0 = move-exception
            throw r0
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ht.m782():boolean");
    }

    @Override // com.json.adqualitysdk.sdk.i.hp
    /* JADX INFO: renamed from: ﻐ */
    public final Field mo767() {
        int i2 = l + 25;
        int i3 = i2 % 128;
        m = i3;
        if ((i2 % 2 == 0 ? (char) 25 : '9') == 25) {
            throw null;
        }
        Field field = this.n;
        int i4 = i3 + 57;
        l = i4 % 128;
        if (i4 % 2 == 0) {
            return field;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.hp
    /* JADX INFO: renamed from: ｋ */
    public final T mo768() {
        int i2 = m + 55;
        l = i2 % 128;
        int i3 = i2 % 2;
        if ((g() ? ':' : (char) 30) != ':') {
            if ((m782()) || j()) {
                return (T) this.q;
            }
        } else {
            try {
                T t = (T) this.n.get(this.q);
                int i4 = m + 27;
                l = i4 % 128;
                if (i4 % 2 != 0) {
                    throw null;
                }
                return t;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.json.adqualitysdk.sdk.i.cg
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo388(String str, List<Object> list, ch chVar) {
        byte b = -1;
        switch (str.hashCode()) {
            case -2039060844:
                if (!(!str.equals(h(null, null, 127 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), "\u008f\u008d\u0089\u0083\u008e\u0082\u0086\u0086\u008d\u008c\u0083\u0082\u0081").intern()))) {
                    b = 5;
                }
                break;
            case -1249356250:
                if (str.equals(h(null, null, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 126, "\u0091\u0085\u0090\u0083\u0082\u0081").intern())) {
                    int i2 = m + 13;
                    l = i2 % 128;
                    b = (i2 % 2 != 0 ? (char) 22 : 'D') == 22 ? (byte) 100 : (byte) 7;
                }
                break;
            case 100472786:
                if (str.equals(h(null, null, 126 - TextUtils.indexOf((CharSequence) "", '0', 0), "\u0091\u0085\u0090\u0088\u0089").intern())) {
                    int i3 = l + 21;
                    m = i3 % 128;
                    int i4 = i3 % 2;
                    b = 6;
                }
                break;
            case 429960040:
                if ((str.equals(h(null, null, 126 - TextUtils.lastIndexOf("", '0'), "\u008f\u008d\u0089\u0083\u008e\u0082\u0086\u0086\u008d\u008c\u0088\u0089").intern()) ? '/' : '5') != '5') {
                    int i5 = m + 75;
                    l = i5 % 128;
                    int i6 = i5 % 2;
                    b = 4;
                }
                break;
            case 700591008:
                if (str.equals(h(null, null, 127 - TextUtils.getTrimmedLength(""), "\u0083\u008f\u0082\u0093\u0085\u0092\u0083\u0082\u0081").intern())) {
                    b = 8;
                }
                break;
            case 1406685743:
                if (!(!str.equals(h(null, null, TextUtils.getOffsetBefore("", 0) + 127, "\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0088").intern()))) {
                    int i7 = l + 7;
                    m = i7 % 128;
                    int i8 = i7 % 2;
                    b = 1;
                }
                break;
            case 1953253188:
                if (str.equals(h(null, null, TextUtils.indexOf("", "") + 127, "\u008b\u0086\u0082\u0089\u008a\u0083\u0082\u0081").intern())) {
                    b = 3;
                }
                break;
            case 1967798203:
                if (str.equals(h(null, null, 127 - (ViewConfiguration.getDoubleTapTimeout() >> 16), "\u0082\u0087\u0086\u0085\u0084\u0083\u0082\u0081").intern())) {
                    b = 0;
                }
                break;
            case 2058833392:
                if (str.equals(h(null, null, (ViewConfiguration.getJumpTapTimeout() >> 16) + 127, "\u008b\u0086\u0082\u0089\u008a\u0088\u0089").intern())) {
                    int i9 = m + 117;
                    l = i9 % 128;
                    int i10 = i9 % 2;
                    b = 2;
                }
                break;
        }
        switch (b) {
            case 0:
                return mo768();
            case 1:
                i(cx.m592(list, 0, Object.class));
                return null;
            case 2:
                return Boolean.valueOf(g());
            case 3:
                return mo767();
            case 4:
                return Boolean.valueOf(m782());
            case 5:
                return f();
            case 6:
                return Boolean.valueOf(j());
            case 7:
                return e();
            case 8:
                return d();
            default:
                return null;
        }
    }
}
