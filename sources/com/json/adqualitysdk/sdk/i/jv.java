package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class jv {

    public interface a {
        /* JADX INFO: renamed from: ﾒ */
        void mo572(Object obj, Method method, Object[] objArr);
    }

    static class b implements InvocationHandler {
        private static int a = 1927439372;
        private static int b = 34;
        private static int c = -1191624564;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static byte[] f5939d = {-118, -122, -100, -126, -61, -120, -112, -92, 101, 36, 107, 121, 108, 113, 96, -77, Ascii.EM, 123, 109, 99, 109, 84, -100, 83, 117, -73, Ascii.GS, 94, 100, 95, 112, 123, -81, Ascii.DC2, 117, 99, 120, -109, 77, 95, -92, 94, -96, 88, -88, -95, 84, -29, Ascii.DC2, 81, 83, 80, -97, -84, -32, 5, -86, 84, -89, -124, 121, -18, 126, -13, -48, -62, -47, -54, -35, -120, 121, -48, 116, 68, 19, -58, Ascii.DEL, -48, 114, -57, -47, -52, 125, -128, 60, Ascii.FF, -52, -128, -48, -123, 118, -57, 62, Ascii.ETB, -126, -56, -123, -104, -112, -106, -103, -94, -104, -115, 122, -71, -103, -89, -123, -87, -107, -116, -102, 119, -56, -119, -102, 0, 0, 0, 0, 0, 0, 0};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static short[] f5940e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5941f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5942g = 1;
        private Object h;
        private a i;

        b(Object obj, a aVar) {
            this.h = obj;
            this.i = aVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x006f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.lang.Object a(java.lang.reflect.Method r14) {
            /*
                r13 = this;
                r0 = 1
                r1 = 0
                if (r14 == 0) goto L6
                r2 = 1
                goto L7
            L6:
                r2 = 0
            L7:
                r3 = 0
                if (r2 == 0) goto L86
                java.lang.String r14 = r14.getName()
                int r2 = r14.hashCode()
                r4 = 1622498214(0x60b55ba6, float:1.0454577E20)
                r5 = -1
                if (r2 == r4) goto L19
                goto L6f
            L19:
                float r2 = android.media.AudioTrack.getMinVolume()
                r4 = 44
                r6 = 0
                r7 = 49
                int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
                int r2 = r2 + (-14)
                r8 = 1191624667(0x4706bfdb, float:34495.855)
                int r9 = android.view.ViewConfiguration.getScrollBarFadeDuration()
                int r9 = r9 >> 16
                int r9 = r9 + r8
                int r8 = android.graphics.Color.argb(r1, r1, r1, r1)
                int r8 = (-1) - r8
                byte r8 = (byte) r8
                int r10 = android.view.View.resolveSizeAndState(r1, r1, r1)
                int r10 = r10 + 103
                short r10 = (short) r10
                r11 = -1927439273(0xffffffff8d1d9c57, float:-4.8567547E-31)
                float r12 = android.view.ViewConfiguration.getScrollFriction()
                int r6 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
                int r11 = r11 - r6
                java.lang.String r2 = d(r2, r9, r8, r10, r11)
                java.lang.String r2 = r2.intern()
                boolean r14 = r14.equals(r2)
                if (r14 == 0) goto L59
                r14 = 49
                goto L5b
            L59:
                r14 = 44
            L5b:
                if (r14 == r4) goto L6f
                int r14 = com.ironsource.adqualitysdk.sdk.i.jv.b.f5941f
                int r14 = r14 + 63
                int r2 = r14 % 128
                com.ironsource.adqualitysdk.sdk.i.jv.b.f5942g = r2
                int r14 = r14 % 2
                if (r14 != 0) goto L6c
                r14 = 95
                goto L70
            L6c:
                r14 = 49
                goto L70
            L6f:
                r1 = -1
            L70:
                if (r1 == 0) goto L73
                goto L86
            L73:
                java.lang.Object r14 = r13.c()
                int r1 = com.ironsource.adqualitysdk.sdk.i.jv.b.f5942g
                int r1 = r1 + r0
                int r0 = r1 % 128
                com.ironsource.adqualitysdk.sdk.i.jv.b.f5941f = r0
                int r1 = r1 % 2
                if (r1 != 0) goto L83
                return r14
            L83:
                throw r3     // Catch: java.lang.Throwable -> L84
            L84:
                r14 = move-exception
                throw r14
            L86:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.jv.b.a(java.lang.reflect.Method):java.lang.Object");
        }

        private static Object[] b(Object[] objArr) {
            int i;
            if (objArr != null) {
                try {
                    ArrayList arrayList = new ArrayList();
                    int length = objArr.length;
                    int i2 = 0;
                    while (true) {
                        if ((i2 < length ? 'V' : (char) 22) == 22) {
                            return arrayList.toArray();
                        }
                        Object obj = objArr[i2];
                        if (Proxy.isProxyClass(obj.getClass())) {
                            int i3 = f5942g + 79;
                            f5941f = i3 % 128;
                            int i4 = i3 % 2;
                            arrayList.add(Proxy.getInvocationHandler(obj));
                            i = f5942g + 107;
                        } else {
                            arrayList.add(obj);
                            i = f5942g + 99;
                        }
                        f5941f = i % 128;
                        int i5 = i % 2;
                        i2++;
                    }
                } catch (Throwable th) {
                    jy.m987(d((-23) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), TextUtils.getOffsetBefore("", 0) + 1191624644, (byte) (ExpandableListView.getPackedPositionType(0L) - 14), (short) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 108), (-1927439372) - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), d(KeyEvent.normalizeMetaState(0) - 5, Process.getGidForName("") + 1191624634, (byte) (TextUtils.indexOf((CharSequence) "", '0', 0) + 96), (short) ((ViewConfiguration.getTouchSlop() >> 8) - 38), (-1927439302) - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), th, true);
                }
            }
            return objArr;
        }

        private Object c() {
            int i = f5941f + 73;
            f5942g = i % 128;
            if (i % 2 != 0) {
                return this.h;
            }
            throw null;
        }

        private static String d(int i, int i2, byte b2, short s, int i3) {
            String string;
            synchronized (n.f132) {
                StringBuilder sb = new StringBuilder();
                int i4 = b;
                int i5 = i + i4;
                boolean z = i5 == -1;
                if (z) {
                    byte[] bArr = f5939d;
                    i5 = bArr != null ? (byte) (bArr[a + i3] + i4) : (short) (f5940e[a + i3] + i4);
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
                        byte[] bArr2 = f5939d;
                        if (bArr2 != null) {
                            int i6 = n.f136;
                            n.f136 = i6 - 1;
                            n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                        } else {
                            short[] sArr = f5940e;
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

        private static boolean e(Method method) {
            int i = f5942g + 115;
            f5941f = i % 128;
            if (i % 2 != 0) {
                method.getName().hashCode();
                throw null;
            }
            String name = method.getName();
            byte b2 = -1;
            if (name.hashCode() == 1622498214) {
                if (!(!name.equals(d((-14) - (ViewConfiguration.getTapTimeout() >> 16), 1191624667 - ((Process.getThreadPriority(0) + 20) >> 6), (byte) ((-1) - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), (short) (103 - (ViewConfiguration.getTouchSlop() >> 8)), (-1927439274) - (ViewConfiguration.getScrollBarSize() >> 8)).intern()))) {
                    int i2 = f5942g + 65;
                    f5941f = i2 % 128;
                    int i3 = i2 % 2;
                    b2 = 0;
                }
            }
            return b2 == 0;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            int i = f5942g + 57;
            f5941f = i % 128;
            if (i % 2 != 0) {
                e(method);
                throw null;
            }
            if (e(method)) {
                int i2 = f5941f + 43;
                f5942g = i2 % 128;
                try {
                    if (i2 % 2 != 0) {
                        return a(method);
                    }
                    int i3 = 73 / 0;
                    return a(method);
                } catch (Throwable th) {
                    String strIntern = d((-24) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), KeyEvent.keyCodeFromString("") + 1191624644, (byte) ((-14) - TextUtils.getOffsetAfter("", 0)), (short) (107 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))), (ViewConfiguration.getMaximumFlingVelocity() >> 16) - 1927439372).intern();
                    StringBuilder sb = new StringBuilder();
                    sb.append(d((ViewConfiguration.getLongPressTimeout() >> 16) - 4, Color.blue(0) + 1191624633, (byte) ((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) - 117), (short) (18 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), (ViewConfiguration.getEdgeSlop() >> 16) - 1927439363).intern());
                    sb.append(method.getName());
                    jy.m987(strIntern, sb.toString(), th, true);
                    return null;
                }
            }
            try {
                this.i.mo572(obj, method, objArr);
            } catch (Throwable th2) {
                String strIntern2 = d((-24) - (KeyEvent.getMaxKeyCode() >> 16), (ViewConfiguration.getEdgeSlop() >> 16) + 1191624644, (byte) ((Process.myTid() >> 22) - 14), (short) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 106), TextUtils.getOffsetAfter("", 0) - 1927439372).intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(d((-12) - ExpandableListView.getPackedPositionChild(0L), 1191624633 - (ViewConfiguration.getEdgeSlop() >> 16), (byte) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) - 88), (short) (1 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)), (-1927439334) - Color.red(0)).intern());
                Object obj2 = this.h;
                sb2.append(obj2 != null ? obj2.toString() : d(View.MeasureSpec.getSize(0) - 30, TextUtils.lastIndexOf("", '0', 0) + 1191624675, (byte) ((-62) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), (short) (Color.alpha(0) + 72), View.resolveSize(0, 0) - 1927439312).intern());
                sb2.append(d(Color.rgb(0, 0, 0) + 16777190, KeyEvent.normalizeMetaState(0) + 1191624596, (byte) ((-10) - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), (short) (48 - Gravity.getAbsoluteGravity(0, 0)), View.combineMeasuredStates(0, 0) - 1927439309).intern());
                sb2.append(method.getName());
                jy.m987(strIntern2, sb2.toString(), th2, true);
            }
            Object obj3 = this.h;
            if (!(obj3 != null)) {
                if (Object.class.equals(method.getDeclaringClass()) ? false : true) {
                    return null;
                }
                return method.invoke(this, b(objArr));
            }
            Object objInvoke = method.invoke(obj3, objArr);
            int i4 = f5942g + 97;
            f5941f = i4 % 128;
            if (i4 % 2 == 0) {
                return objInvoke;
            }
            int i5 = 10 / 0;
            return objInvoke;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m965(Class<?> cls, Object obj, a aVar) {
        return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls, gy.class}, new b(obj, aVar));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m966(Object obj) {
        return obj != null && Proxy.isProxyClass(obj.getClass()) && (obj instanceof gy);
    }
}
