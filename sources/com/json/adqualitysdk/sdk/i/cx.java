package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.b4;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class cx {
    private static int a = 1992050017;
    private static int b = 63;
    private static int c = 921217948;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5505d = {-51, 8, 93, 110, 90, -97, 8, 97, 93, 92, 105, 122, -59, -95, -21, 68};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5506e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5507f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5508g = 1;

    private static String a(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = b;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5505d;
                i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5506e[a + i3] + i4);
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
                    byte[] bArr2 = f5505d;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5506e;
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

    protected static <T> boolean b(List<Object> list, int i, Class<T> cls) {
        int i2 = f5507f + 117;
        f5508g = i2 % 128;
        if ((i2 % 2 == 0 ? '1' : '8') != '8') {
            list.get(i);
            throw null;
        }
        Object obj = list.get(i);
        if (obj != null && !cls.isAssignableFrom(obj.getClass())) {
            return false;
        }
        int i3 = f5507f + 83;
        f5508g = i3 % 128;
        if (i3 % 2 != 0) {
            return true;
        }
        throw null;
    }

    protected static List<Object> c(List<Object> list, int i) {
        List<Object> arrayList = new ArrayList<>();
        if ((list.size() > i ? (char) 16 : (char) 26) != 26) {
            if ((b(list, i, List.class) ? '\t' : b4.R) == '\t') {
                int i2 = f5508g + 81;
                f5507f = i2 % 128;
                if (i2 % 2 != 0) {
                    throw null;
                }
                arrayList = (List) m592(list, i, List.class);
            }
        }
        int i3 = f5507f + 19;
        f5508g = i3 % 128;
        int i4 = i3 % 2;
        return arrayList;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static <T> T m592(List<Object> list, int i, Class<T> cls) {
        int i2 = f5507f + 107;
        f5508g = i2 % 128;
        int i3 = i2 % 2;
        T t = (T) list.get(i);
        if (t != null) {
            int i4 = f5507f + 95;
            f5508g = i4 % 128;
            int i5 = i4 % 2;
            if ((cls.isAssignableFrom(t.getClass()) ? '\"' : 'U') != '\"') {
                StringBuilder sb = new StringBuilder();
                sb.append(a((-63) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), Gravity.getAbsoluteGravity(0, 0) - 921217881, (byte) (AndroidCharacter.getMirror('0') - '0'), (short) (ExpandableListView.getPackedPositionChild(0L) - 91), (Process.myPid() >> 22) - 1992050017).intern());
                sb.append(t.getClass().getName());
                sb.append(a((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 65, (-921217915) - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (byte) (ViewConfiguration.getTapTimeout() >> 16), (short) ((ViewConfiguration.getKeyRepeatDelay() >> 16) + 16), TextUtils.getOffsetBefore("", 0) - 1992050005).intern());
                sb.append(cls.getName());
                throw new ClassCastException(sb.toString());
            }
        }
        return t;
    }
}
