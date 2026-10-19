package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class au {
    private static int a = 425941776;
    private static int b = 49;
    private static int c = -676277602;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5256d = {-11, -9, 5, -8, 17, 2, -23, 19, -17, 7, Ascii.CR, 1, 8, 3, 7, 3, -2, 3, -8, -1, 44, -34, -7, 10, 1, -18, 10, 37, -46, 3, -5, 17, -2, -9, 0, -1, 44, -7, 10, 1, -18, 10, 37, -32, -8, -9, 6, 7, -11, 83, -78, 5, 73, -82, 3, -3, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5257e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5258f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5259g = 1;
    private a h;
    private List<String> i;

    enum a {
        f16,
        f15,
        f17,
        f18;

        private static long b = 0;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5260d = 1;

        static {
            e();
            int i = f5260d + 99;
            c = i % 128;
            int i2 = i % 2;
        }

        private static String a(String str, int i) {
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
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ b);
                        h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        static void e() {
            b = 7013562569969660928L;
        }

        public static a valueOf(String str) {
            int i = f5260d + 67;
            c = i % 128;
            if (!(i % 2 != 0)) {
                return (a) Enum.valueOf(a.class, str);
            }
            Enum.valueOf(a.class, str);
            throw null;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static a[] valuesCustom() {
            int i = c + 75;
            f5260d = i % 128;
            if (i % 2 != 0) {
                return (a[]) values().clone();
            }
            int i2 = 20 / 0;
            return (a[]) values().clone();
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[a.valuesCustom().length];
            a = iArr;
            try {
                iArr[a.f16.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.f18.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[a.f17.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[a.f15.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public au(JSONObject jSONObject) {
        this.h = b(jSONObject.optString(a((-45) - KeyEvent.keyCodeFromString(""), 659500502 - Color.rgb(0, 0, 0), (byte) (ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0)), (short) KeyEvent.normalizeMetaState(0), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) - 425941777).intern()));
        this.i = c(jSONObject.optString(a((ViewConfiguration.getEdgeSlop() >> 16) - 47, 676277719 - ((byte) KeyEvent.getModifierMetaStateMask()), (byte) (ViewConfiguration.getTapTimeout() >> 16), (short) View.resolveSize(0, 0), (-425941773) - Color.red(0)).intern()));
    }

    private static String a(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = b;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5256d;
                i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5257e[a + i3] + i4);
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
                    byte[] bArr2 = f5256d;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5257e;
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

    private static a b(String str) {
        byte b2 = -1;
        int iHashCode = str.hashCode();
        if (iHashCode != 92611485) {
            if (iHashCode == 93621297) {
                if (!(str.equals(a((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + (-43), Drawable.resolveOpacity(0, 0) + 676277700, (byte) (Process.myTid() >> 22), (short) (ViewConfiguration.getDoubleTapTimeout() >> 16), (-425941765) - MotionEvent.axisFromString("")).intern()) ? false : true)) {
                    int i = f5258f + 83;
                    f5259g = i % 128;
                    int i2 = i % 2;
                    b2 = 2;
                }
            } else if (iHashCode == 96946943) {
                if ((str.equals(a((-45) - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (ViewConfiguration.getFadingEdgeLength() >> 16) + 676277703, (byte) KeyEvent.getDeadChar(0, 0), (short) ExpandableListView.getPackedPositionType(0L), (-425941773) - ((byte) KeyEvent.getModifierMetaStateMask())).intern()) ? (char) 25 : '@') == 25) {
                    b2 = 0;
                }
            }
        } else if (str.equals(a((-44) - (ViewConfiguration.getScrollBarFadeDuration() >> 16), View.MeasureSpec.getMode(0) + 676277699, (byte) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (short) (Process.myPid() >> 22), (-425941768) - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern())) {
            b2 = 1;
        }
        if (b2 == 0) {
            return a.f18;
        }
        if (b2 == 1) {
            return a.f15;
        }
        if (b2 == 2) {
            return a.f17;
        }
        a aVar = a.f16;
        int i3 = f5258f + 11;
        f5259g = i3 % 128;
        int i4 = i3 % 2;
        return aVar;
    }

    private static List<String> c(String str) {
        ArrayList arrayList = new ArrayList();
        if (!(!TextUtils.isEmpty(str))) {
            return arrayList;
        }
        int i = f5259g + 53;
        f5258f = i % 128;
        int i2 = i % 2;
        List<String> listAsList = Arrays.asList(str.split(a(TextUtils.indexOf("", "", 0) - 48, Gravity.getAbsoluteGravity(0, 0) + 676277646, (byte) ((-1) - ImageFormat.getBitsPerPixel(0)), (short) (ViewConfiguration.getKeyRepeatTimeout() >> 16), View.combineMeasuredStates(0, 0) - 425941760).intern()));
        int i3 = f5258f + 87;
        f5259g = i3 % 128;
        int i4 = i3 % 2;
        return listAsList;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final boolean m360(String str) {
        int i;
        int i2 = f5258f + 71;
        f5259g = i2 % 128;
        int i3 = i2 % 2;
        try {
            i = b.a[this.h.ordinal()];
        } catch (Exception e2) {
            jy.m987(a((-27) - (ViewConfiguration.getTapTimeout() >> 16), Color.argb(0, 0, 0, 0) + 676277669, (byte) (Process.myPid() >> 22), (short) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), (-425941760) - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern(), a((-28) - TextUtils.indexOf((CharSequence) "", '0', 0, 0), 676277671 - TextUtils.indexOf("", "", 0, 0), (byte) KeyEvent.normalizeMetaState(0), (short) (ViewConfiguration.getKeyRepeatTimeout() >> 16), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) - 425941739).intern(), (Throwable) e2, false);
        }
        if (i == 1) {
            int i4 = f5259g + 93;
            f5258f = i4 % 128;
            int i5 = i4 % 2;
            return true;
        }
        if (i == 2) {
            return this.i.contains(str);
        }
        if (i != 3) {
            if (i != 4) {
            }
            return false;
        }
        if (this.i.size() > 0) {
            return jz.m1000(str, this.i.get(0)) < 0;
        }
        if (this.i.size() > 0) {
            int i6 = f5258f + 121;
            f5259g = i6 % 128;
            if (i6 % 2 == 0) {
                if (jz.m1000(str, this.i.get(1)) >= 0) {
                }
            }
            return (jz.m1000(str, this.i.get(0)) >= 0 ? '4' : (char) 31) != 31;
        }
        return false;
    }
}
