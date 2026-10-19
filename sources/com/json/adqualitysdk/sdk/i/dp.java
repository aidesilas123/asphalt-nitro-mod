package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class dp {
    private static char[] a = {'\"'};
    private static char b = 1;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5559d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f5560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5562g;
    private boolean h;

    public dp(Object obj) {
        this.f5560e = obj;
    }

    private static String a(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
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
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
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

    public final String toString() {
        if (!(this.f5560e instanceof String)) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f5560e);
            String string = sb.toString();
            int i = f5559d + 77;
            c = i % 128;
            if (i % 2 != 0) {
                throw null;
            }
            return string;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(a((byte) (68 - ImageFormat.getBitsPerPixel(0)), "g", 1 - KeyEvent.getDeadChar(0, 0)).intern());
        sb2.append(this.f5560e);
        sb2.append(a((byte) (69 - View.MeasureSpec.getMode(0)), "g", -TextUtils.lastIndexOf("", '0', 0)).intern());
        String string2 = sb2.toString();
        int i2 = c + 29;
        f5559d = i2 % 128;
        if ((i2 % 2 == 0 ? 'S' : (char) 1) == 1) {
            return string2;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final dp m671() {
        int i = f5559d;
        int i2 = i + 9;
        c = i2 % 128;
        int i3 = i2 % 2;
        this.f5562g = true;
        int i4 = i + 95;
        c = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 21 : 'O') == 'O') {
            return this;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final dp m672() {
        int i = c + 49;
        f5559d = i % 128;
        if (i % 2 != 0) {
            this.h = true;
        } else {
            this.h = false;
        }
        return this;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final boolean m673() {
        int i = f5559d;
        int i2 = i + 45;
        c = i2 % 128;
        int i3 = i2 % 2;
        boolean z = this.h;
        int i4 = i + 99;
        c = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return z;
        }
        int i5 = 86 / 0;
        return z;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Object m674() {
        int i = f5559d;
        int i2 = i + 9;
        c = i2 % 128;
        int i3 = i2 % 2;
        Object obj = this.f5560e;
        int i4 = i + 49;
        c = i4 % 128;
        int i5 = i4 % 2;
        return obj;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m675() {
        int i = c + 117;
        int i2 = i % 128;
        f5559d = i2;
        if (!(i % 2 != 0)) {
            throw null;
        }
        boolean z = this.f5562g;
        int i3 = i2 + 35;
        c = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return z;
        }
        int i4 = 75 / 0;
        return z;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final dp m676(boolean z) {
        int i = f5559d + 55;
        c = i % 128;
        if ((i % 2 != 0 ? '@' : (char) 29) == 29) {
            this.f5561f = z;
            return this;
        }
        this.f5561f = z;
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean m677() {
        int i = f5559d;
        int i2 = i + 65;
        c = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        boolean z = this.f5561f;
        int i3 = i + 57;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            return z;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean m678() {
        Object obj = this.f5560e;
        if (obj == null) {
            int i = c + 63;
            f5559d = i % 128;
            int i2 = i % 2;
            return false;
        }
        if (obj instanceof Boolean) {
            int i3 = c + 109;
            f5559d = i3 % 128;
            int i4 = i3 % 2;
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return !(((Integer) obj).intValue() == 0);
        }
        if (!(obj instanceof Long)) {
            if (!(obj instanceof Double)) {
                return ((obj instanceof String) && TextUtils.isEmpty((String) obj)) ? false : true;
            }
            return ((((Double) obj).doubleValue() > 0.0d ? 1 : (((Double) obj).doubleValue() == 0.0d ? 0 : -1)) != 0 ? ']' : '$') != '$';
        }
        if ((((Long) obj).longValue() != 0 ? 'U' : ';') != 'U') {
            return false;
        }
        int i5 = f5559d;
        int i6 = i5 + 39;
        c = i6 % 128;
        boolean z = (i6 % 2 != 0 ? ')' : '6') != ')';
        int i7 = i5 + 73;
        c = i7 % 128;
        if (i7 % 2 == 0) {
            return z;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        if ((r5.f5560e instanceof java.lang.Integer ? false : true) != true) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        if ((r5.f5560e instanceof java.lang.Integer) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
    
        r1 = r1 + 21;
        com.json.adqualitysdk.sdk.i.dp.f5559d = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        if ((r1 % 2) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:
    
        return (java.lang.Integer) r5.f5560e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        r0 = (java.lang.Integer) r5.f5560e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003b, code lost:
    
        r0 = r5.f5560e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
    
        if ((r0 instanceof java.lang.Long) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0043, code lost:
    
        r1 = '%';
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0046, code lost:
    
        r1 = '(';
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0048, code lost:
    
        if (r1 == '%') goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
    
        if ((r0 instanceof java.lang.Double) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0050, code lost:
    
        return (java.lang.Double) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0054, code lost:
    
        return (java.lang.Long) r0;
     */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Number m679() {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.dp.f5559d
            int r0 = r0 + 85
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.dp.c = r1
            int r0 = r0 % 2
            r2 = 0
            if (r0 == 0) goto L1f
            java.lang.Object r0 = r5.f5560e
            boolean r0 = r0 instanceof java.lang.Integer
            r3 = 34
            r4 = 0
            int r3 = r3 / r4
            r3 = 1
            if (r0 == 0) goto L19
            goto L1a
        L19:
            r4 = 1
        L1a:
            if (r4 == r3) goto L3b
            goto L25
        L1d:
            r0 = move-exception
            throw r0
        L1f:
            java.lang.Object r0 = r5.f5560e
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 == 0) goto L3b
        L25:
            int r1 = r1 + 21
            int r0 = r1 % 128
            com.json.adqualitysdk.sdk.i.dp.f5559d = r0
            int r1 = r1 % 2
            if (r1 == 0) goto L34
            java.lang.Object r0 = r5.f5560e
            java.lang.Integer r0 = (java.lang.Integer) r0
            return r0
        L34:
            java.lang.Object r0 = r5.f5560e
            java.lang.Integer r0 = (java.lang.Integer) r0
            throw r2     // Catch: java.lang.Throwable -> L39
        L39:
            r0 = move-exception
            throw r0
        L3b:
            java.lang.Object r0 = r5.f5560e
            boolean r1 = r0 instanceof java.lang.Long
            r3 = 37
            if (r1 == 0) goto L46
            r1 = 37
            goto L48
        L46:
            r1 = 40
        L48:
            if (r1 == r3) goto L52
            boolean r1 = r0 instanceof java.lang.Double
            if (r1 == 0) goto L51
            java.lang.Double r0 = (java.lang.Double) r0
            return r0
        L51:
            return r2
        L52:
            java.lang.Long r0 = (java.lang.Long) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.dp.m679():java.lang.Number");
    }
}
