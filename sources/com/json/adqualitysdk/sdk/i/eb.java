package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public abstract class eb extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char[] f5595e = {'[', ']', '\\', '^'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static char f5596f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5597g = 0;
    private static int h = 1;
    private dx i;
    private dx j;

    eb(dx dxVar, dx dxVar2, Cdo cdo) {
        super(cdo);
        this.i = dxVar;
        this.j = dxVar2;
    }

    private static String c(byte b, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = f5595e;
            char c = f5596f;
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
                        g.f59 = g.f58 / c;
                        g.f55 = g.f58 % c;
                        g.f61 = g.f62 / c;
                        g.f57 = g.f62 % c;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c) - 1) % c;
                            g.f61 = ((g.f61 + c) - 1) % c;
                            int i3 = (g.f59 * c) + g.f55;
                            int i4 = (g.f61 * c) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c) - 1) % c;
                            g.f57 = ((g.f57 + c) - 1) % c;
                            int i6 = (g.f59 * c) + g.f55;
                            int i7 = (g.f61 * c) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c) + g.f57;
                            int i10 = (g.f61 * c) + g.f55;
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

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0045, code lost:
    
        if ((r6.i != null ? 'F' : '.') != 'F') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004e, code lost:
    
        if (r0.equals(r6.i) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0051, code lost:
    
        r0 = r5.j;
        r6 = r6.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0055, code lost:
    
        if (r0 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005b, code lost:
    
        return r0.equals(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005e, code lost:
    
        if (r6 != null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0060, code lost:
    
        r6 = 'E';
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
    
        r6 = '\"';
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
    
        if (r6 == '\"') goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0067, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            int r0 = com.json.adqualitysdk.sdk.i.eb.h
            int r1 = r0 + 87
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.eb.f5597g = r2
            int r1 = r1 % 2
            r1 = 0
            r2 = 1
            if (r5 != r6) goto L10
            r3 = 0
            goto L11
        L10:
            r3 = 1
        L11:
            if (r3 == r2) goto L1e
            int r0 = r0 + 91
            int r6 = r0 % 128
            com.json.adqualitysdk.sdk.i.eb.f5597g = r6
            int r0 = r0 % 2
            if (r0 == 0) goto L1d
        L1d:
            return r2
        L1e:
            if (r6 == 0) goto L68
            java.lang.Class r0 = r5.getClass()
            java.lang.Class r3 = r6.getClass()
            if (r0 == r3) goto L2b
            goto L68
        L2b:
            com.ironsource.adqualitysdk.sdk.i.eb r6 = (com.json.adqualitysdk.sdk.i.eb) r6
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.i
            r3 = 63
            if (r0 == 0) goto L36
            r4 = 63
            goto L38
        L36:
            r4 = 81
        L38:
            if (r4 == r3) goto L48
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r6.i
            r3 = 70
            if (r0 == 0) goto L43
            r0 = 70
            goto L45
        L43:
            r0 = 46
        L45:
            if (r0 == r3) goto L50
            goto L51
        L48:
            com.ironsource.adqualitysdk.sdk.i.dx r3 = r6.i
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L51
        L50:
            return r1
        L51:
            com.ironsource.adqualitysdk.sdk.i.dx r0 = r5.j
            com.ironsource.adqualitysdk.sdk.i.dx r6 = r6.j
            if (r0 == 0) goto L5c
            boolean r6 = r0.equals(r6)
            return r6
        L5c:
            r0 = 34
            if (r6 != 0) goto L63
            r6 = 69
            goto L65
        L63:
            r6 = 34
        L65:
            if (r6 == r0) goto L68
            return r2
        L68:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.eb.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int iHashCode;
        dx dxVar = this.i;
        int iHashCode2 = 0;
        if ((dxVar != null ? '*' : 'H') != 'H') {
            iHashCode = dxVar.hashCode();
        } else {
            int i = f5597g + 39;
            h = i % 128;
            int i2 = i % 2;
            iHashCode = 0;
        }
        int i3 = iHashCode * 31;
        dx dxVar2 = this.j;
        if ((dxVar2 != null ? 'I' : '-') == 'I') {
            int i4 = f5597g + 1;
            h = i4 % 128;
            int i5 = i4 % 2;
            iHashCode2 = dxVar2.hashCode();
            int i6 = f5597g + 87;
            h = i6 % 128;
            int i7 = i6 % 2;
        }
        return i3 + iHashCode2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(m707().toString());
        sb.append(c((byte) ((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 77), "©", (ViewConfiguration.getDoubleTapTimeout() >> 16) + 1).intern());
        sb.append(m706().toString());
        sb.append(c((byte) (61 - ((byte) KeyEvent.getModifierMetaStateMask())), "\u009b", 1 - TextUtils.getOffsetAfter("", 0)).intern());
        String string = sb.toString();
        int i = h + 9;
        f5597g = i % 128;
        if ((i % 2 != 0 ? '\"' : 'N') != '\"') {
            return string;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    final dx m706() {
        int i = h;
        int i2 = i + 77;
        f5597g = i2 % 128;
        int i3 = i2 % 2;
        dx dxVar = this.j;
        int i4 = i + 25;
        f5597g = i4 % 128;
        if (i4 % 2 == 0) {
            return dxVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    final dx m707() {
        int i = h + 53;
        f5597g = i % 128;
        if ((i % 2 != 0 ? 'a' : 'S') != 'a') {
            return this.i;
        }
        throw null;
    }
}
