package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.ISAdQualityDeviceIdType;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ak {
    private static int a = 16;
    private static int b = 0;
    private static int c = 1;
    private ISAdQualityDeviceIdType i;
    private Map<String, String> j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5195d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5196e = a(97 - (KeyEvent.getMaxKeyCode() >> 16), true, 6 - (ViewConfiguration.getTouchSlop() >> 8), (SystemClock.currentThreadTimeMillis() > (-1) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1) ? 0 : -1)) + 6, "\ufff4\u0002\u000e\u0003\ufffe�\u0003").intern();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5197f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5198g = "";
    private boolean h = false;
    private boolean k = false;

    private static String a(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - a);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final void m281() {
        int i = c + 111;
        int i2 = i % 128;
        b = i2;
        int i3 = i % 2;
        this.k = true;
        int i4 = i2 + 21;
        c = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final ISAdQualityDeviceIdType m282() {
        int i = b;
        int i2 = i + 33;
        c = i2 % 128;
        int i3 = i2 % 2;
        ISAdQualityDeviceIdType iSAdQualityDeviceIdType = this.i;
        int i4 = i + 109;
        c = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 30 : ' ') == ' ') {
            return iSAdQualityDeviceIdType;
        }
        int i5 = 22 / 0;
        return iSAdQualityDeviceIdType;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final Map<String, String> m283() {
        int i = b + 125;
        c = i % 128;
        if (!(i % 2 == 0)) {
            return this.j;
        }
        int i2 = 14 / 0;
        return this.j;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final boolean m284() {
        int i = b + 111;
        c = i % 128;
        if (i % 2 != 0) {
            return this.k;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m285() {
        int i = b;
        int i2 = i + 17;
        c = i2 % 128;
        if (!(i2 % 2 != 0)) {
            throw null;
        }
        String str = this.f5195d;
        int i3 = i + 53;
        c = i3 % 128;
        if (i3 % 2 != 0) {
            return str;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m286(ISAdQualityDeviceIdType iSAdQualityDeviceIdType) {
        int i = b + 77;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        this.i = iSAdQualityDeviceIdType;
        int i4 = i2 + 115;
        b = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m287(boolean z) {
        int i = b + 45;
        c = i % 128;
        char c2 = i % 2 == 0 ? '\'' : '!';
        this.h = z;
        if (c2 == '!') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m288(String str) {
        int i = b + 63;
        c = i % 128;
        char c2 = i % 2 == 0 ? 'T' : '@';
        this.f5198g = str;
        if (c2 != '@') {
            int i2 = 3 / 0;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m289(boolean z) {
        int i = c + 79;
        b = i % 128;
        boolean z2 = i % 2 != 0;
        this.f5197f = z;
        if (!z2) {
            return;
        }
        int i2 = 80 / 0;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m290() {
        int i = b + 11;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        boolean z = this.f5197f;
        int i4 = i2 + 57;
        b = i4 % 128;
        if ((i4 % 2 != 0 ? 'S' : '9') != 'S') {
            return z;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m291() {
        int i = c;
        int i2 = i + 39;
        b = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        String str = this.f5198g;
        int i3 = i + 59;
        b = i3 % 128;
        int i4 = i3 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized void m292(String str) {
        int i = c + 91;
        int i2 = i % 128;
        b = i2;
        int i3 = i % 2;
        this.f5196e = str;
        int i4 = i2 + 125;
        c = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 1 : '#') != '#') {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized String m293() {
        String str;
        int i = c;
        int i2 = i + 43;
        b = i2 % 128;
        int i3 = i2 % 2;
        str = this.f5196e;
        int i4 = i + 65;
        b = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m294(String str) {
        int i = b + 17;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        this.f5195d = str;
        int i4 = i2 + 15;
        b = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m295(Map<String, String> map) {
        int i = c;
        int i2 = i + 27;
        b = i2 % 128;
        int i3 = i2 % 2;
        this.j = map;
        int i4 = i + 75;
        b = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m296() {
        int i = b;
        int i2 = i + 93;
        c = i2 % 128;
        int i3 = i2 % 2;
        boolean z = this.h;
        int i4 = i + 35;
        c = i4 % 128;
        int i5 = i4 % 2;
        return z;
    }
}
