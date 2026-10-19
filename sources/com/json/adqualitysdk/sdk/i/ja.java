package com.json.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ExpandableListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.hc;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ja {
    private static ja a = null;
    private static long b = -658963480715690330L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5878d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private jh f5879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<RelativeLayout, Object> f5880f = new WeakHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ie f5881g = new ie(-1, -1, -1, -1);

    final class a implements hc.c {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.hc.c
        /* JADX INFO: renamed from: ﾒ */
        public final boolean mo568(hc hcVar, View view, MotionEvent motionEvent) {
            ja.c(ja.this, motionEvent);
            return true;
        }
    }

    final class b implements View.OnLayoutChangeListener {
        private static long a = 4829300122880401584L;
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ViewGroup f5882d;

        b(ViewGroup viewGroup) {
            this.f5882d = viewGroup;
        }

        private static String a(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
                char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(a, cArr, i);
                com.json.adqualitysdk.sdk.i.f.f52 = 4;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.f.f52;
                    if (i2 < cArrM713.length) {
                        com.json.adqualitysdk.sdk.i.f.f53 = i2 - 4;
                        cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * a));
                        com.json.adqualitysdk.sdk.i.f.f52++;
                    } else {
                        str2 = new String(cArrM713, 4, cArrM713.length - 4);
                    }
                }
            }
            return str2;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = b + 57;
            c = i9 % 128;
            int i10 = i9 % 2;
            if (!(r.m1033().m1036())) {
                int i11 = c + 121;
                b = i11 % 128;
                int i12 = i11 % 2;
                try {
                    ja.i(ja.this, this.f5882d, this);
                    return;
                } catch (Throwable th) {
                    jy.m987(a("ᶇ鬝㲱\uea12᷀﯁ﶾ졠鼦码磅亭ᡲ﵎塀췎閮玞略䀧ᛩ\uf0c8\uf0a3응逢生珧䖫\u0d64\uea48", (-1) - TextUtils.indexOf((CharSequence) "", '0')).intern(), a("፵ᾼ಼昍ጰ罾춮䑲采ﳬ䣵슳ᛕ秣쨲䇑魔\uf735䕳차᠁瑏살䭼黛\uf1ab䏹", (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) - 1).intern(), th, false);
                }
            }
            int i13 = b + 33;
            c = i13 % 128;
            if (i13 % 2 != 0) {
            } else {
                throw null;
            }
        }
    }

    final class c implements jh {
        c() {
        }

        @Override // com.json.adqualitysdk.sdk.i.jh
        /* JADX INFO: renamed from: ﻛ */
        public final void mo234(View view) {
            if (r.m1033().m1036()) {
                ja.this.m898();
                return;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroupN = (ViewGroup) view;
                if (viewGroupN.getContext() instanceof Activity) {
                    viewGroupN = ja.n(viewGroupN, (ViewGroup) ((Activity) viewGroupN.getContext()).findViewById(R.id.content));
                }
                ja jaVar = ja.this;
                ja.i(jaVar, viewGroupN, ja.m(jaVar, viewGroupN));
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.jh
        /* JADX INFO: renamed from: ﾒ */
        public final void mo235(View view) {
        }
    }

    final class d extends RelativeLayout {
        d(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            ja.c(ja.this, motionEvent);
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    final class e extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ViewGroup f5884d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ RelativeLayout f5885e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ View.OnLayoutChangeListener f5886f;

        e(ViewGroup viewGroup, RelativeLayout relativeLayout, View.OnLayoutChangeListener onLayoutChangeListener) {
            this.f5884d = viewGroup;
            this.f5885e = relativeLayout;
            this.f5886f = onLayoutChangeListener;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            this.f5884d.addView(this.f5885e, new ViewGroup.LayoutParams(-1, -1));
            this.f5884d.removeOnLayoutChangeListener(this.f5886f);
            this.f5884d.addOnLayoutChangeListener(this.f5886f);
        }
    }

    final class f extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5887d = 568191120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5888e = 93;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5889f = 1608934100;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static byte[] f5890g = {-67, 103, -97, -106, 97, 104, 119, -124, 104, -110, 108, -108, 100, 111, 120, -127, 96, -117, 99, 126, -115, 110, -102, -106, 102, 64, -44, 119, -54, -21, 34, -35, 63, -33, 41, 41, -34, 47, 44, 32, 111, -127, 35, -38, -43, 42, 33, 110, -106, -37, 99, -128, -45, 42, 99, -112, -45, -61, 33, 40, 46, -46, -33, 126, -128, 42, 37, -61, 61, 105, -108, 41, -62, 42, 55, -91, 99, -92, -77, 92, -73, 95, 66, -65, -90, Ascii.SYN, -21, 92, Ascii.DLE, -9, 90, -92, 89, 116};
        private static short[] h = null;
        private static int i = 0;
        private static int j = 1;
        private /* synthetic */ MotionEvent k;

        f(MotionEvent motionEvent) {
            this.k = motionEvent;
        }

        private static String b(int i2, int i3, byte b, short s, int i4) {
            String string;
            synchronized (n.f132) {
                StringBuilder sb = new StringBuilder();
                int i5 = f5888e;
                int i6 = i2 + i5;
                boolean z = i6 == -1;
                if (z) {
                    byte[] bArr = f5890g;
                    i6 = bArr != null ? (byte) (bArr[f5887d + i4] + i5) : (short) (h[f5887d + i4] + i5);
                }
                if (i6 > 0) {
                    n.f136 = ((i4 + i6) - 2) + f5887d + (z ? 1 : 0);
                    n.f135 = b;
                    char c = (char) (i3 + f5889f);
                    n.f133 = c;
                    sb.append(c);
                    n.f134 = n.f133;
                    n.f137 = 1;
                    while (n.f137 < i6) {
                        byte[] bArr2 = f5890g;
                        if (bArr2 != null) {
                            int i7 = n.f136;
                            n.f136 = i7 - 1;
                            n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                        } else {
                            short[] sArr = h;
                            int i8 = n.f136;
                            n.f136 = i8 - 1;
                            n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
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

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            int i2 = j + 19;
            i = i2 % 128;
            int i3 = i2 % 2;
            try {
                int iRound = Math.round(this.k.getRawX());
                int iRound2 = Math.round(this.k.getRawY());
                if (jx.m978(iRound, iRound2)) {
                    ja.g(ja.this, new ie(iRound, iRound2, jt.m948(), jt.m952()));
                    return;
                }
                String strIntern = b(KeyEvent.normalizeMetaState(0) - 94, (-1608934029) - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (byte) ((ViewConfiguration.getWindowTouchSlop() >> 8) + 101), (short) (ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0)), (-568191120) - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(b((-94) - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (ViewConfiguration.getScrollBarFadeDuration() >> 16) - 1608934016, (byte) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 44), (short) (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (-568191094) - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern());
                sb.append(iRound);
                sb.append(b((-94) - ExpandableListView.getPackedPositionGroup(0L), ((byte) KeyEvent.getModifierMetaStateMask()) - 1608934055, (byte) ((-104) - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), (short) View.getDefaultSize(0, 0), Color.argb(0, 0, 0, 0) - 568191045).intern());
                sb.append(iRound2);
                sb.append(b((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 95, ExpandableListView.getPackedPositionChild(0L) - 1608933974, (byte) ((ViewConfiguration.getDoubleTapTimeout() >> 16) - 30), (short) (TextUtils.lastIndexOf("", '0', 0, 0) + 1), (-568191043) - ((Process.getThreadPriority(0) + 20) >> 6)).intern());
                m.m1031(strIntern, sb.toString());
                int i4 = i + 117;
                j = i4 % 128;
                if ((i4 % 2 == 0 ? 'R' : (char) 15) != 'R') {
                } else {
                    throw null;
                }
            } catch (Throwable th) {
                jy.m987(b((-94) - (ViewConfiguration.getScrollBarSize() >> 8), (-1608934029) - (ViewConfiguration.getEdgeSlop() >> 16), (byte) (101 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)), (short) (ViewConfiguration.getScrollDefaultDelay() >> 16), (-568191121) - TextUtils.indexOf((CharSequence) "", '0')).intern(), b((-94) - (ViewConfiguration.getScrollBarSize() >> 8), ExpandableListView.getPackedPositionChild(0L) - 1608934030, (byte) (89 - Drawable.resolveOpacity(0, 0)), (short) Color.green(0), (-568191043) - TextUtils.indexOf((CharSequence) "", '0')).intern(), th, false);
            }
        }
    }

    final class g extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ViewGroup f5891d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ hc.c f5892e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ View.OnLayoutChangeListener f5893f;

        g(ViewGroup viewGroup, hc.c cVar, View.OnLayoutChangeListener onLayoutChangeListener) {
            this.f5891d = viewGroup;
            this.f5892e = cVar;
            this.f5893f = onLayoutChangeListener;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ja.h(this.f5891d, this.f5892e);
            for (int i = 0; i < this.f5891d.getChildCount(); i++) {
                View childAt = this.f5891d.getChildAt(i);
                if (childAt instanceof ViewGroup) {
                    ja.d(ja.this, (ViewGroup) childAt, this.f5893f);
                } else {
                    ja.h(childAt, this.f5892e);
                }
            }
            this.f5891d.removeOnLayoutChangeListener(this.f5893f);
            this.f5891d.addOnLayoutChangeListener(this.f5893f);
        }
    }

    private ja() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        if ((r7 != null) != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002b, code lost:
    
        if ((r7 == null ? 'P' : '\"') != 'P') goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002d, code lost:
    
        r0 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002e, code lost:
    
        if (r7 == null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        r1 = r7.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        if (r1 != r6) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
    
        r4 = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
    
        r4 = 'A';
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003d, code lost:
    
        if (r4 == 'A') goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003f, code lost:
    
        if (r0 != r7) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0041, code lost:
    
        r6 = com.json.adqualitysdk.sdk.i.ja.f5878d + 3;
        com.json.adqualitysdk.sdk.i.ja.c = r6 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004b, code lost:
    
        if ((r6 % 2) != 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004d, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004f, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0052, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0055, code lost:
    
        if ((r1 instanceof android.view.ViewGroup) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0057, code lost:
    
        r0 = com.json.adqualitysdk.sdk.i.ja.c + 97;
        com.json.adqualitysdk.sdk.i.ja.f5878d = r0 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0061, code lost:
    
        if ((r0 % 2) != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0063, code lost:
    
        r0 = (android.view.ViewGroup) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0068, code lost:
    
        r1 = 19 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006c, code lost:
    
        r0 = (android.view.ViewGroup) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x006f, code lost:
    
        r5 = r0;
        r0 = r7;
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0073, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0074, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.view.ViewGroup a(android.view.ViewGroup r6, android.view.ViewGroup r7) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.ja.c
            int r0 = r0 + 27
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ja.f5878d = r1
            int r0 = r0 % 2
            r1 = 54
            if (r0 != 0) goto L11
            r0 = 96
            goto L13
        L11:
            r0 = 54
        L13:
            r2 = 0
            if (r0 == r1) goto L22
            int r0 = r2 / r2
            if (r7 != 0) goto L1c
            r0 = 0
            goto L1d
        L1c:
            r0 = 1
        L1d:
            if (r0 == 0) goto L74
            goto L2d
        L20:
            r6 = move-exception
            throw r6
        L22:
            r0 = 80
            if (r7 != 0) goto L29
            r1 = 80
            goto L2b
        L29:
            r1 = 34
        L2b:
            if (r1 == r0) goto L74
        L2d:
            r0 = r7
        L2e:
            if (r7 == 0) goto L73
            android.view.ViewParent r1 = r7.getParent()
            r3 = 65
            if (r1 != r6) goto L3b
            r4 = 17
            goto L3d
        L3b:
            r4 = 65
        L3d:
            if (r4 == r3) goto L53
            if (r0 != r7) goto L52
            int r6 = com.json.adqualitysdk.sdk.i.ja.f5878d
            int r6 = r6 + 3
            int r0 = r6 % 128
            com.json.adqualitysdk.sdk.i.ja.c = r0
            int r6 = r6 % 2
            if (r6 != 0) goto L4e
            return r7
        L4e:
            r6 = 0
            throw r6     // Catch: java.lang.Throwable -> L50
        L50:
            r6 = move-exception
            throw r6
        L52:
            return r0
        L53:
            boolean r0 = r1 instanceof android.view.ViewGroup
            if (r0 == 0) goto L73
            int r0 = com.json.adqualitysdk.sdk.i.ja.c
            int r0 = r0 + 97
            int r3 = r0 % 128
            com.json.adqualitysdk.sdk.i.ja.f5878d = r3
            int r0 = r0 % 2
            if (r0 != 0) goto L6c
            r0 = r1
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r1 = 19
            int r1 = r1 / r2
            goto L6f
        L6a:
            r6 = move-exception
            throw r6
        L6c:
            r0 = r1
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
        L6f:
            r5 = r0
            r0 = r7
            r7 = r5
            goto L2e
        L73:
            return r7
        L74:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ja.a(android.view.ViewGroup, android.view.ViewGroup):android.view.ViewGroup");
    }

    private void b(ViewGroup viewGroup, View.OnLayoutChangeListener onLayoutChangeListener) {
        d dVar = new d(viewGroup.getContext());
        dVar.setAlpha(0.0f);
        synchronized (this) {
            this.f5880f.put(dVar, new Object());
        }
        dVar.setId(160766228);
        new Handler(Looper.getMainLooper()).post(new e(viewGroup, dVar, onLayoutChangeListener));
    }

    static /* synthetic */ void c(ja jaVar, MotionEvent motionEvent) {
        int i = f5878d + 41;
        c = i % 128;
        int i2 = i % 2;
        jaVar.o(motionEvent);
        int i3 = c + 69;
        f5878d = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ void d(ja jaVar, ViewGroup viewGroup, View.OnLayoutChangeListener onLayoutChangeListener) {
        int i = c + 43;
        f5878d = i % 128;
        boolean z = i % 2 == 0;
        jaVar.f(viewGroup, onLayoutChangeListener);
        if (z) {
            throw null;
        }
        int i2 = f5878d + 19;
        c = i2 % 128;
        int i3 = i2 % 2;
    }

    private static boolean e(ViewGroup viewGroup) {
        try {
            if (viewGroup.getChildCount() == 0) {
                int i = f5878d + 25;
                c = i % 128;
                int i2 = i % 2;
                return false;
            }
            int i3 = c + 57;
            f5878d = i3 % 128;
            int i4 = i3 % 2;
            int i5 = 0;
            while (true) {
                if ((i5 < viewGroup.getChildCount() ? '^' : (char) 30) == 30) {
                    return true;
                }
                if ((!(viewGroup.getChildAt(i5) instanceof TextView) ? '#' : 'Y') != 'Y') {
                    int i6 = c;
                    int i7 = i6 + 13;
                    f5878d = i7 % 128;
                    int i8 = i7 % 2;
                    int i9 = i6 + 63;
                    f5878d = i9 % 128;
                    if (!(i9 % 2 == 0)) {
                        return false;
                    }
                    int i10 = 71 / 0;
                    return false;
                }
                i5++;
            }
        } catch (Throwable th) {
            m.m1032(j("绡\udbdb㓫釷\uea83䞟ꂔﶾ噛덜\u0c64楑숃Ἀ砼피\u2fd8裢\ue5e6㺶鮗\uf4b1冦ꩈݝ恪", (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 42256).intern(), j("绣饝뇆졒\ue0f0שׂᏳ⩱䊋崔疗谬꒤뼴ퟸ\uefc8ِẟ㥒凤桷胬鬧뎛쨑\ue2b2ﴼᗵⰹ䑌峆睅迧Ꙧ뻺\ud96e\uf1c2ࠄ\u209e㬕厷橷芈髀땒췇\ue46eﳨᝳ\u2fe8䘗", 59273 - (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), th);
            return false;
        }
    }

    private void f(ViewGroup viewGroup, View.OnLayoutChangeListener onLayoutChangeListener) {
        new Handler(Looper.getMainLooper()).post(new g(viewGroup, new a(), onLayoutChangeListener));
        int i = f5878d + 115;
        c = i % 128;
        if ((i % 2 != 0 ? 'T' : ')') != ')') {
            int i2 = 0 / 0;
        }
    }

    static /* synthetic */ void g(ja jaVar, ie ieVar) {
        int i = c + 9;
        f5878d = i % 128;
        char c2 = i % 2 == 0 ? '8' : '&';
        jaVar.q(ieVar);
        if (c2 != '8') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void h(View view, hc.c cVar) {
        int i = f5878d + 113;
        c = i % 128;
        boolean z = i % 2 != 0;
        p(view, cVar);
        if (z) {
            throw null;
        }
        int i2 = f5878d + 81;
        c = i2 % 128;
        int i3 = i2 % 2;
    }

    static /* synthetic */ void i(ja jaVar, ViewGroup viewGroup, View.OnLayoutChangeListener onLayoutChangeListener) {
        int i = c + 75;
        f5878d = i % 128;
        int i2 = i % 2;
        jaVar.k(viewGroup, onLayoutChangeListener);
        int i3 = c + 125;
        f5878d = i3 % 128;
        int i4 = i3 % 2;
    }

    private static String j(String str, int i) {
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

    private void k(ViewGroup viewGroup, View.OnLayoutChangeListener onLayoutChangeListener) {
        if (!(viewGroup == null)) {
            int i = f5878d + 91;
            c = i % 128;
            int i2 = i % 2;
            if (e(viewGroup)) {
                return;
            }
            Activity activityM1004 = ka.m1004(viewGroup);
            if (jj.m911().m912(activityM1004) ? false : true) {
                if (jj.m911().m913(activityM1004)) {
                    f(viewGroup, onLayoutChangeListener);
                    return;
                }
                return;
            }
            int i3 = c + 37;
            f5878d = i3 % 128;
            int i4 = i3 % 2;
            if ((viewGroup.findViewById(160766228) == null ? (char) 26 : 'Z') != 'Z') {
                int i5 = c + 123;
                f5878d = i5 % 128;
                if (i5 % 2 != 0) {
                    b(viewGroup, onLayoutChangeListener);
                } else {
                    b(viewGroup, onLayoutChangeListener);
                    throw null;
                }
            }
        }
    }

    private View.OnLayoutChangeListener l(ViewGroup viewGroup) {
        b bVar = new b(viewGroup);
        int i = f5878d + 101;
        c = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        return bVar;
    }

    static /* synthetic */ View.OnLayoutChangeListener m(ja jaVar, ViewGroup viewGroup) {
        int i = f5878d + 39;
        c = i % 128;
        if (!(i % 2 == 0)) {
            jaVar.l(viewGroup);
            throw null;
        }
        View.OnLayoutChangeListener onLayoutChangeListenerL = jaVar.l(viewGroup);
        int i2 = f5878d + 35;
        c = i2 % 128;
        int i3 = i2 % 2;
        return onLayoutChangeListenerL;
    }

    static /* synthetic */ ViewGroup n(ViewGroup viewGroup, ViewGroup viewGroup2) {
        int i = c + 25;
        f5878d = i % 128;
        int i2 = i % 2;
        ViewGroup viewGroupA = a(viewGroup, viewGroup2);
        int i3 = c + 77;
        f5878d = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 4 : 'P') != 4) {
            return viewGroupA;
        }
        int i4 = 77 / 0;
        return viewGroupA;
    }

    private void o(MotionEvent motionEvent) {
        try {
            t.m1039(new f(MotionEvent.obtain(motionEvent)));
            int i = c + 3;
            f5878d = i % 128;
            int i2 = i % 2;
        } catch (Throwable th) {
            jy.m987(j("绡\udbdb㓫釷\uea83䞟ꂔﶾ噛덜\u0c64楑숃Ἀ砼피\u2fd8裢\ue5e6㺶鮗\uf4b1冦ꩈݝ恪", 42257 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), j("绣ꐡ쬾\uee16ᔀ㡏彿艰ꥺ챏\uf35dᙏ㶽惷螴ꪒ톃\uf480\u1bf4㺩旰裞꿟틽\uf87eἤ䈶楑谘댆홧ﵔ", (ViewConfiguration.getDoubleTapTimeout() >> 16) + 56053).intern(), th, false);
        }
    }

    private static void p(View view, hc.c cVar) {
        int i = c + 71;
        f5878d = i % 128;
        int i2 = i % 2;
        jp.m935(view, cVar);
        int i3 = c + 75;
        f5878d = i3 % 128;
        int i4 = i3 % 2;
    }

    private synchronized void q(ie ieVar) {
        int i = f5878d + 81;
        c = i % 128;
        if (i % 2 == 0) {
            this.f5881g = ieVar;
        } else {
            this.f5881g = ieVar;
            int i2 = 11 / 0;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static synchronized ja m895() {
        int i = c + 113;
        f5878d = i % 128;
        int i2 = i % 2;
        if (a == null) {
            a = new ja();
            int i3 = c + 45;
            f5878d = i3 % 128;
            int i4 = i3 % 2;
        }
        return a;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized ie m896() {
        ie ieVar;
        int i = c + 71;
        int i2 = i % 128;
        f5878d = i2;
        if ((i % 2 == 0 ? (char) 27 : 'T') != 'T') {
            throw null;
        }
        ieVar = this.f5881g;
        int i3 = i2 + 51;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? ',' : '/') != '/') {
            throw null;
        }
        return ieVar;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m897() {
        int i = f5878d + 59;
        c = i % 128;
        int i2 = i % 2;
        if (this.f5879e == null) {
            this.f5879e = new c();
            jd.m907().m909(this.f5879e);
        }
        int i3 = c + 65;
        f5878d = i3 % 128;
        if (!(i3 % 2 != 0)) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m898() {
        if (this.f5879e != null) {
            int i = f5878d + 121;
            c = i % 128;
            int i2 = i % 2;
            for (RelativeLayout relativeLayout : this.f5880f.keySet()) {
                ViewParent parent = relativeLayout.getParent();
                if (!(!(parent instanceof ViewGroup))) {
                    int i3 = f5878d + 91;
                    c = i3 % 128;
                    if (!(i3 % 2 == 0)) {
                        ((ViewGroup) parent).removeView(relativeLayout);
                        int i4 = 36 / 0;
                    } else {
                        ((ViewGroup) parent).removeView(relativeLayout);
                    }
                }
            }
            this.f5880f.clear();
            jd.m907().m908(this.f5879e);
            this.f5879e = null;
        }
    }
}
