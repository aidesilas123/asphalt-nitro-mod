package com.json.adqualitysdk.sdk.i;

import android.R;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class fo extends fr {
    private static int a = 1350218088;
    private static int b = 83;
    private static int c = -17105477;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static byte[] f5636d = {-79, 94, -31, Ascii.ESC, -81, -7, -82, -78, -30, 87, -24, Ascii.DC2};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static short[] f5637e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5638f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5639g = 1;
    private List<dx> h;

    public fo(List<dx> list) {
        this.h = list;
    }

    private static String a(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = b;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5636d;
                i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5637e[a + i3] + i4);
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
                    byte[] bArr2 = f5636d;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5637e;
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

    public final String toString() {
        int i = f5638f + 71;
        f5639g = i % 128;
        if ((i % 2 == 0 ? '0' : ';') != ';') {
            throw null;
        }
        if (this.h == null) {
            return a((-16777300) - Color.rgb(0, 0, 0), (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + R.dimen.notification_header_margin_bottom, (byte) ((-7) - (ViewConfiguration.getWindowTouchSlop() >> 8)), (short) (ViewConfiguration.getTapTimeout() >> 16), (-1350218082) - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(a(((Process.getThreadPriority(0) + 20) >> 6) - 84, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + R.dimen.notification_header_icon_size_ambient, (byte) ((-16777232) - Color.rgb(0, 0, 0)), (short) (ViewConfiguration.getEdgeSlop() >> 16), (-1366995304) - Color.rgb(0, 0, 0)).intern());
        sb.append(TextUtils.join(a((-83) - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), R.dimen.notification_2025_action_list_min_height - ImageFormat.getBitsPerPixel(0), (byte) (13 - TextUtils.indexOf("", "", 0, 0)), (short) Gravity.getAbsoluteGravity(0, 0), (-1350218084) - (Process.myTid() >> 22)).intern(), this.h));
        sb.append(a((-83) - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), MotionEvent.axisFromString("") + R.dimen.notification_2025_expand_button_pill_width, (byte) (17 - View.resolveSize(0, 0)), (short) View.combineMeasuredStates(0, 0), (-1350218082) - (ViewConfiguration.getTapTimeout() >> 16)).intern());
        String string = sb.toString();
        int i2 = f5639g + 85;
        f5638f = i2 % 128;
        int i3 = i2 % 2;
        return string;
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public final dp mo714(dr drVar, cj cjVar) {
        int i = f5638f + 123;
        f5639g = i % 128;
        int i2 = i % 2;
        Iterator<dx> it = this.h.iterator();
        while (true) {
            ej ejVarM688 = null;
            if (!it.hasNext()) {
                return new dp(null);
            }
            int i3 = f5639g + 77;
            f5638f = i3 % 128;
            if (i3 % 2 != 0) {
                boolean z = it.next() instanceof ej;
                throw null;
            }
            dx next = it.next();
            if ((next instanceof ej ? 'X' : '2') != '2') {
                ejVarM688 = (ej) next;
            } else if (next instanceof ds) {
                int i4 = f5638f + 1;
                f5639g = i4 % 128;
                int i5 = i4 % 2;
                ejVarM688 = ((ds) next).m688();
            }
            if (ejVarM688 != null) {
                drVar.m684(Arrays.asList(ejVarM688.m712()));
            }
            next.mo687(drVar, cjVar);
        }
    }
}
