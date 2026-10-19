package com.json.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.gx;
import com.json.adqualitysdk.sdk.i.gz;
import com.json.adqualitysdk.sdk.i.ha;
import com.json.adqualitysdk.sdk.i.hb;
import com.json.adqualitysdk.sdk.i.hc;
import com.json.adqualitysdk.sdk.i.he;
import com.json.adqualitysdk.sdk.i.jv;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cs extends cx {
    private static int[] h = {-900145888, 2033667819, 518122789, -1926866717, 544962704, 752992148, -920315419, -1481669498, 147736714, -1549559825, 423752769, 962497975, 1423362056, 374705592, 206380027, -2017889781, 1248395339, -1459501991};
    private static char[] i = {'m', 203, 205, 216, 220, 218, 211, 203, 197, 210, 211, 209, 198, 163, 176, 215, 216, 219, 215, 208, 216, 215, 174, 182, 221, 221, 223, 200, 200, 216, 214, 214, 217, 224, 219, 199, 202, 215, 215, 200};
    private static int j = 0;
    private static int k = 1;

    final class a implements View.OnAttachStateChangeListener {
        private static char[] a = {304, 349, 346, 267, 340, 345, 314, 300, 351, 332, 334, 339, 318, 336, 302, 338, 311, 350, 335};
        private static int b = 235;
        private static boolean c = true;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f5447d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5448e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5449f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ dn f5450g;
        private /* synthetic */ dn h;
        private /* synthetic */ List i;
        private /* synthetic */ boolean j;
        final /* synthetic */ dr k;
        final /* synthetic */ cj l;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.cs$a$a, reason: collision with other inner class name */
        final class C0344a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ dn f5451d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ List f5452e;

            C0344a(dn dnVar, List list) {
                this.f5451d = dnVar;
                this.f5452e = list;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                dn dnVar = this.f5451d;
                a aVar = a.this;
                dnVar.m667(aVar.k, aVar.l, this.f5452e);
            }
        }

        a(dn dnVar, dn dnVar2, List list, boolean z, dr drVar, cj cjVar) {
            this.f5450g = dnVar;
            this.h = dnVar2;
            this.i = list;
            this.j = z;
            this.k = drVar;
            this.l = cjVar;
        }

        private static String a(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
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
            synchronized (com.json.adqualitysdk.sdk.i.k.f131) {
                char[] cArr2 = a;
                int i2 = b;
                if (f5447d) {
                    int length = bArr.length;
                    com.json.adqualitysdk.sdk.i.k.f129 = length;
                    char[] cArr3 = new char[length];
                    com.json.adqualitysdk.sdk.i.k.f130 = 0;
                    while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                        int i3 = com.json.adqualitysdk.sdk.i.k.f130;
                        int i4 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                        int i5 = com.json.adqualitysdk.sdk.i.k.f130;
                        cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                        com.json.adqualitysdk.sdk.i.k.f130 = i5 + 1;
                    }
                    return new String(cArr3);
                }
                if (c) {
                    int length2 = cArr.length;
                    com.json.adqualitysdk.sdk.i.k.f129 = length2;
                    char[] cArr4 = new char[length2];
                    com.json.adqualitysdk.sdk.i.k.f130 = 0;
                    while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                        int i6 = com.json.adqualitysdk.sdk.i.k.f130;
                        int i7 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                        int i8 = com.json.adqualitysdk.sdk.i.k.f130;
                        cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                        com.json.adqualitysdk.sdk.i.k.f130 = i8 + 1;
                    }
                    return new String(cArr4);
                }
                int length3 = iArr.length;
                com.json.adqualitysdk.sdk.i.k.f129 = length3;
                char[] cArr5 = new char[length3];
                com.json.adqualitysdk.sdk.i.k.f130 = 0;
                while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                    int i9 = com.json.adqualitysdk.sdk.i.k.f130;
                    int i10 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                    int i11 = com.json.adqualitysdk.sdk.i.k.f130;
                    cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                    com.json.adqualitysdk.sdk.i.k.f130 = i11 + 1;
                }
                return new String(cArr5);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        
            if (r3 != false) goto L15;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void b(com.json.adqualitysdk.sdk.i.dn r10, android.view.View r11) {
            /*
                r9 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.cs.a.f5448e
                int r0 = r0 + 81
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.cs.a.f5449f = r1
                r1 = 2
                int r0 = r0 % r1
                r2 = 0
                r3 = 1
                if (r0 != 0) goto L29
                java.util.List r0 = r9.i     // Catch: java.lang.Throwable -> L5d
                r4 = 3
                java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L5d
                r4[r3] = r9     // Catch: java.lang.Throwable -> L5d
                r4[r3] = r11     // Catch: java.lang.Throwable -> L5d
                java.util.List r11 = com.json.adqualitysdk.sdk.i.cs.f(r0, r4)     // Catch: java.lang.Throwable -> L5d
                boolean r0 = r9.j     // Catch: java.lang.Throwable -> L5d
                r3 = 78
                if (r0 == 0) goto L24
                r0 = 78
                goto L26
            L24:
                r0 = 47
            L26:
                if (r0 == r3) goto L3e
                goto L54
            L29:
                java.util.List r0 = r9.i     // Catch: java.lang.Throwable -> L5d
                java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L5d
                r5 = 0
                r4[r5] = r9     // Catch: java.lang.Throwable -> L5d
                r4[r3] = r11     // Catch: java.lang.Throwable -> L5d
                java.util.List r11 = com.json.adqualitysdk.sdk.i.cs.f(r0, r4)     // Catch: java.lang.Throwable -> L5d
                boolean r0 = r9.j     // Catch: java.lang.Throwable -> L5d
                if (r0 == 0) goto L3b
                goto L3c
            L3b:
                r3 = 0
            L3c:
                if (r3 == 0) goto L54
            L3e:
                com.ironsource.adqualitysdk.sdk.i.dr r0 = r9.k     // Catch: java.lang.Throwable -> L5d
                com.ironsource.adqualitysdk.sdk.i.cj r3 = r9.l     // Catch: java.lang.Throwable -> L5d
                r10.m667(r0, r3, r11)     // Catch: java.lang.Throwable -> L5d
                int r10 = com.ironsource.adqualitysdk.sdk.i.cs.a.f5448e
                int r10 = r10 + 35
                int r11 = r10 % 128
                com.ironsource.adqualitysdk.sdk.i.cs.a.f5449f = r11
                int r10 = r10 % r1
                if (r10 == 0) goto L51
                return
            L51:
                throw r2     // Catch: java.lang.Throwable -> L52
            L52:
                r10 = move-exception
                throw r10
            L54:
                com.ironsource.adqualitysdk.sdk.i.cs$a$a r0 = new com.ironsource.adqualitysdk.sdk.i.cs$a$a     // Catch: java.lang.Throwable -> L5d
                r0.<init>(r10, r11)     // Catch: java.lang.Throwable -> L5d
                com.json.adqualitysdk.sdk.i.t.m1039(r0)     // Catch: java.lang.Throwable -> L5d
                return
            L5d:
                r11 = move-exception
                com.ironsource.adqualitysdk.sdk.i.cj r0 = r9.l
                java.lang.String r0 = r0.m445()
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                long r3 = android.os.SystemClock.currentThreadTimeMillis()
                r5 = -1
                java.lang.String r7 = "\u0084\u008e\u0093\u0085\u0092\u0086\u0085\u0084\u0082\u008e\u0086\u008e\u0089\u0092\u0085\u0091\u008e\u0090\u0086\u008a\u008c\u008f\u008e\u0089\u008a\u0089\u008d\u008c\u008b\u008a\u0089\u0089\u0088\u0086\u0087\u0084\u0086\u0085\u0084\u0082\u0083\u0082\u0082\u0081"
                int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                int r3 = 128 - r8
                java.lang.String r2 = a(r2, r2, r3, r7)
                java.lang.String r2 = r2.intern()
                r1.append(r2)
                java.lang.String r10 = r10.m668()
                r1.append(r10)
                java.lang.String r10 = r1.toString()
                com.json.adqualitysdk.sdk.i.cn.m519(r0, r10, r11)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.cs.a.b(com.ironsource.adqualitysdk.sdk.i.dn, android.view.View):void");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            int i = f5449f + 27;
            f5448e = i % 128;
            int i2 = i % 2;
            b(this.f5450g, view);
            int i3 = f5449f + 113;
            f5448e = i3 % 128;
            if ((i3 % 2 != 0 ? '>' : (char) 21) != '>') {
                return;
            }
            int i4 = 56 / 0;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            int i = f5449f + 55;
            f5448e = i % 128;
            int i2 = i % 2;
            b(this.h, view);
            int i3 = f5448e + 45;
            f5449f = i3 % 128;
            int i4 = i3 % 2;
        }
    }

    final class b implements ha.c {
        final /* synthetic */ ha.c a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ ha f5454d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ MediaPlayer f5455e;

            a(ha haVar, MediaPlayer mediaPlayer) {
                this.f5454d = haVar;
                this.f5455e = mediaPlayer;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                b.this.a.mo565(this.f5454d, this.f5455e);
            }
        }

        b(ha.c cVar) {
            this.a = cVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ha.c
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo565(ha haVar, MediaPlayer mediaPlayer) {
            t.m1039(new a(haVar, mediaPlayer));
        }
    }

    final class c implements gx.d {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5457d;

        c(dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5457d = list;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.gx.d
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo566(gx gxVar, MediaPlayer mediaPlayer) {
            this.a.m667(this.b, this.c, cs.f(this.f5457d, new Object[]{this, gxVar, mediaPlayer}));
        }
    }

    final class d implements gz.e {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5459d;

        d(dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5459d = list;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.gz.e
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final boolean mo567(gz gzVar, MediaPlayer mediaPlayer, int i, int i2) {
            return this.a.m667(this.b, this.c, cs.f(this.f5459d, new Object[]{this, gzVar, mediaPlayer, Integer.valueOf(i), Integer.valueOf(i2)})).m678();
        }
    }

    final class e implements hc.c {
        final /* synthetic */ hc.c a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ hc f5461d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ View f5462e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private /* synthetic */ MotionEvent f5463f;

            a(hc hcVar, View view, MotionEvent motionEvent) {
                this.f5461d = hcVar;
                this.f5462e = view;
                this.f5463f = motionEvent;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                e.this.a.mo568(this.f5461d, this.f5462e, this.f5463f);
            }
        }

        e(hc.c cVar) {
            this.a = cVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.hc.c
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final boolean mo568(hc hcVar, View view, MotionEvent motionEvent) {
            t.m1039(new a(hcVar, view, motionEvent));
            return false;
        }
    }

    final class f implements hc.c {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5465d;

        f(dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5465d = list;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.hc.c
        /* JADX INFO: renamed from: ﾒ */
        public final boolean mo568(hc hcVar, View view, MotionEvent motionEvent) {
            return this.a.m667(this.b, this.c, cs.f(this.f5465d, new Object[]{this, hcVar, view, motionEvent})).m678();
        }
    }

    final class g implements hb.a {
        final /* synthetic */ hb.a a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ hb f5467d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ View f5468e;

            a(hb hbVar, View view) {
                this.f5467d = hbVar;
                this.f5468e = view;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                g.this.a.mo569(this.f5467d, this.f5468e);
            }
        }

        g(hb.a aVar) {
            this.a = aVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.hb.a
        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void mo569(hb hbVar, View view) {
            t.m1039(new a(hbVar, view));
        }
    }

    final class h implements he.a {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5470d;

        h(dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5470d = list;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.he.a
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo570(he heVar, MediaPlayer mediaPlayer) {
            this.a.m667(this.b, this.c, cs.f(this.f5470d, new Object[]{this, heVar, mediaPlayer}));
        }
    }

    final class i implements ha.c {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5472d;

        i(dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5472d = list;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ha.c
        /* JADX INFO: renamed from: ｋ */
        public final void mo565(ha haVar, MediaPlayer mediaPlayer) {
            this.a.m667(this.b, this.c, cs.f(this.f5472d, new Object[]{this, haVar, mediaPlayer}));
        }
    }

    final class j implements View.OnLayoutChangeListener {
        private static int[] a = {-1126643040, -815760001, 1032229696, 1578948317, -956134877, -1752546764, -1289531811, -1752163231, -1856929448, -126645288, -201971320, 32875324, 1100075650, 934073402, 7609881, 109515390, 1164931997, 1999902151};
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5474d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ boolean f5475e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ dn f5476f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ dr f5477g;
        final /* synthetic */ cj h;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ List f5478d;

            a(List list) {
                this.f5478d = list;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                j jVar = j.this;
                jVar.f5476f.m667(jVar.f5477g, jVar.h, this.f5478d);
            }
        }

        j(List list, boolean z, dn dnVar, dr drVar, cj cjVar) {
            this.f5474d = list;
            this.f5475e = z;
            this.f5476f = dnVar;
            this.f5477g = drVar;
            this.h = cjVar;
        }

        private static String a(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) a.clone();
                com.json.adqualitysdk.sdk.i.b.f34 = 0;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.b.f34;
                    if (i2 < iArr.length) {
                        cArr[0] = (char) (iArr[i2] >> 16);
                        cArr[1] = (char) iArr[i2];
                        cArr[2] = (char) (iArr[i2 + 1] >> 16);
                        cArr[3] = (char) iArr[i2 + 1];
                        com.json.adqualitysdk.sdk.i.b.f31 = (cArr[0] << 16) + cArr[1];
                        com.json.adqualitysdk.sdk.i.b.f32 = (cArr[2] << 16) + cArr[3];
                        com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                        for (int i3 = 0; i3 < 16; i3++) {
                            int i4 = com.json.adqualitysdk.sdk.i.b.f31 ^ iArr2[i3];
                            com.json.adqualitysdk.sdk.i.b.f31 = i4;
                            com.json.adqualitysdk.sdk.i.b.f32 = com.json.adqualitysdk.sdk.i.b.m391(i4) ^ com.json.adqualitysdk.sdk.i.b.f32;
                            int i5 = com.json.adqualitysdk.sdk.i.b.f31;
                            com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                            com.json.adqualitysdk.sdk.i.b.f32 = i5;
                        }
                        int i6 = com.json.adqualitysdk.sdk.i.b.f31;
                        com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6 ^ iArr2[16];
                        com.json.adqualitysdk.sdk.i.b.f31 ^= iArr2[17];
                        int i7 = com.json.adqualitysdk.sdk.i.b.f32;
                        int i8 = com.json.adqualitysdk.sdk.i.b.f31;
                        cArr[0] = (char) (i8 >>> 16);
                        cArr[1] = (char) i8;
                        int i9 = com.json.adqualitysdk.sdk.i.b.f32;
                        cArr[2] = (char) (i9 >>> 16);
                        cArr[3] = (char) i9;
                        com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                        int i10 = com.json.adqualitysdk.sdk.i.b.f34;
                        cArr2[i10 << 1] = cArr[0];
                        cArr2[(i10 << 1) + 1] = cArr[1];
                        cArr2[(i10 << 1) + 2] = cArr[2];
                        cArr2[(i10 << 1) + 3] = cArr[3];
                        com.json.adqualitysdk.sdk.i.b.f34 = i10 + 2;
                    } else {
                        str = new String(cArr2, 0, i);
                    }
                }
            }
            return str;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = c + 3;
            b = i9 % 128;
            int i10 = i9 % 2;
            try {
                List<Object> listF = cs.f(this.f5474d, new Object[]{this, view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8)});
                if (!(this.f5475e)) {
                    t.m1039(new a(listF));
                    return;
                }
                int i11 = c + 33;
                b = i11 % 128;
                int i12 = i11 % 2;
                this.f5476f.m667(this.f5477g, this.h, listF);
            } catch (Throwable th) {
                String strM445 = this.h.m445();
                StringBuilder sb = new StringBuilder();
                sb.append(a(new int[]{912121981, 1476510949, 286285507, -1158832539, -205139129, 179952530, 1260220379, 1189733729, -1004095706, 320366877, 314903822, -805224194, 537378626, -540422153, 1586030546, 1904022149, 99785013, 1509834126, 1137417822, 941294388}, (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 39).intern());
                sb.append(this.f5476f.m668());
                cn.m519(strM445, sb.toString(), th);
            }
        }
    }

    final class k implements ij {
        private /* synthetic */ List a;
        private /* synthetic */ dn b;
        private /* synthetic */ dr c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ cj f5480d;

        k(List list, dn dnVar, dr drVar, cj cjVar) {
            this.a = list;
            this.b = dnVar;
            this.c = drVar;
            this.f5480d = cjVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.ij
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final void mo571() {
            this.a.add(0, this);
            this.b.m667(this.c, this.f5480d, this.a);
            this.a.remove(0);
        }
    }

    final class l implements he.a {
        final /* synthetic */ he.a a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ he f5481d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ MediaPlayer f5482e;

            a(he heVar, MediaPlayer mediaPlayer) {
                this.f5481d = heVar;
                this.f5482e = mediaPlayer;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                l.this.a.mo570(this.f5481d, this.f5482e);
            }
        }

        l(he.a aVar) {
            this.a = aVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.he.a
        /* JADX INFO: renamed from: ﾒ */
        public final void mo570(he heVar, MediaPlayer mediaPlayer) {
            t.m1039(new a(heVar, mediaPlayer));
        }
    }

    final class m implements gx.d {
        final /* synthetic */ gx.d a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ gx f5484d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ MediaPlayer f5485e;

            a(gx gxVar, MediaPlayer mediaPlayer) {
                this.f5484d = gxVar;
                this.f5485e = mediaPlayer;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                m.this.a.mo566(this.f5484d, this.f5485e);
            }
        }

        m(gx.d dVar) {
            this.a = dVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.gx.d
        /* JADX INFO: renamed from: ﾇ */
        public final void mo566(gx gxVar, MediaPlayer mediaPlayer) {
            t.m1039(new a(gxVar, mediaPlayer));
        }
    }

    final class n implements hb.a {
        private /* synthetic */ dn a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5487d;

        n(dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = dnVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5487d = list;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.hb.a
        /* JADX INFO: renamed from: ｋ */
        public final void mo569(hb hbVar, View view) {
            this.a.m667(this.b, this.c, cs.f(this.f5487d, new Object[]{this, hbVar, view}));
        }
    }

    final class o implements jv.a {
        private static long a = -2478987547814480095L;
        private static int b = 0;
        private static int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5489d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ boolean f5490e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ cj f5491f;

        o(String str, boolean z, cj cjVar) {
            this.f5489d = str;
            this.f5490e = z;
            this.f5491f = cjVar;
        }

        private static String a(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.h.f63) {
                com.json.adqualitysdk.sdk.i.h.f64 = i;
                char[] cArr2 = new char[cArr.length];
                com.json.adqualitysdk.sdk.i.h.f65 = 0;
                while (true) {
                    int i2 = com.json.adqualitysdk.sdk.i.h.f65;
                    if (i2 < cArr.length) {
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i2))) ^ a);
                        com.json.adqualitysdk.sdk.i.h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.jv.a
        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final void mo572(Object obj, Method method, Object[] objArr) {
            List arrayList;
            int i = c + 39;
            b = i % 128;
            int i2 = i % 2;
            if (method != null) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.f5489d);
                    sb.append(a("뜏", 23741 - KeyEvent.keyCodeFromString("")).intern());
                    sb.append(method.getName());
                    String string = sb.toString();
                    gy gyVar = (gy) obj;
                    if (objArr != null) {
                        int i3 = c + 99;
                        b = i3 % 128;
                        if ((i3 % 2 != 0 ? ';' : '\\') != '\\') {
                            Arrays.asList(objArr);
                            throw null;
                        }
                        arrayList = Arrays.asList(objArr);
                    } else {
                        arrayList = new ArrayList();
                    }
                    List<Object> listF = cs.f(arrayList, new Object[]{gyVar});
                    ArrayList arrayList2 = new ArrayList();
                    if ((this.f5490e ? (char) 0 : 'I') != 'I') {
                        int i4 = c + 91;
                        b = i4 % 128;
                        if (!(i4 % 2 == 0)) {
                            arrayList2.add(listF);
                            int i5 = 82 / 0;
                        } else {
                            arrayList2.add(listF);
                        }
                        listF = arrayList2;
                    }
                    this.f5491f.m447().mo428(string, listF);
                } catch (Exception e2) {
                    String strM445 = this.f5491f.m445();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(a("띤㧞ꩉᳩ赧翀\ue006劔쌿떻⛈靇᧓詯粷", 36493 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern());
                    sb2.append(method.getName());
                    sb2.append(a("뜁夫殊籠໕Ὅℯ㏐쑶훐\ue707", 61031 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24)).intern());
                    sb2.append(this.f5489d);
                    sb2.append(a("뜁ℨ鮂瑽\ueec1墽ㄑꮇѻ", 38500 - TextUtils.lastIndexOf("", '0', 0)).intern());
                    cn.m519(strM445, sb2.toString(), e2);
                }
            }
        }
    }

    final class p extends BroadcastReceiver {
        private /* synthetic */ boolean a;
        final /* synthetic */ dn b;
        final /* synthetic */ dr c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ cj f5493d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ List f5494e;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ Context f5496d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ Intent f5497e;

            a(Context context, Intent intent) {
                this.f5496d = context;
                this.f5497e = intent;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                p pVar = p.this;
                p.a(pVar, pVar.b, pVar.c, pVar.f5493d, pVar.f5494e, this.f5496d, this.f5497e);
            }
        }

        p(boolean z, dn dnVar, dr drVar, cj cjVar, List list) {
            this.a = z;
            this.b = dnVar;
            this.c = drVar;
            this.f5493d = cjVar;
            this.f5494e = list;
        }

        static /* synthetic */ void a(p pVar, dn dnVar, dr drVar, cj cjVar, List list, Context context, Intent intent) {
            dnVar.m667(drVar, cjVar, cs.f(list, new Object[]{pVar, context, intent}));
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (this.a) {
                this.b.m667(this.c, this.f5493d, cs.f(this.f5494e, new Object[]{this, context, intent}));
            } else {
                t.m1039(new a(context, intent));
            }
        }
    }

    final class q implements gz.e {
        final /* synthetic */ gz.e a;

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ gz f5499d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ MediaPlayer f5500e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private /* synthetic */ int f5501f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private /* synthetic */ int f5502g;

            a(gz gzVar, MediaPlayer mediaPlayer, int i, int i2) {
                this.f5499d = gzVar;
                this.f5500e = mediaPlayer;
                this.f5501f = i;
                this.f5502g = i2;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                q.this.a.mo567(this.f5499d, this.f5500e, this.f5501f, this.f5502g);
            }
        }

        q(gz.e eVar) {
            this.a = eVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.gz.e
        /* JADX INFO: renamed from: ﾇ */
        public final boolean mo567(gz gzVar, MediaPlayer mediaPlayer, int i, int i2) {
            t.m1039(new a(gzVar, mediaPlayer, i, i2));
            return false;
        }
    }

    private static boolean d(List<Object> list, int i2) {
        int i3 = k + 97;
        j = i3 % 128;
        if (i3 % 2 != 0) {
            list.size();
            throw null;
        }
        if (list.size() > i2) {
            int i4 = j + 47;
            k = i4 % 128;
            int i5 = i4 % 2;
            if ((((Boolean) cx.m592(list, i2, Boolean.class)).booleanValue() ? (char) 31 : (char) 6) == 31) {
                int i6 = k + 103;
                j = i6 % 128;
                int i7 = i6 % 2;
                return true;
            }
        }
        return false;
    }

    private static String e(int[] iArr, int i2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) h.clone();
            com.json.adqualitysdk.sdk.i.b.f34 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.b.f34;
                if (i3 < iArr.length) {
                    cArr[0] = (char) (iArr[i3] >> 16);
                    cArr[1] = (char) iArr[i3];
                    cArr[2] = (char) (iArr[i3 + 1] >> 16);
                    cArr[3] = (char) iArr[i3 + 1];
                    com.json.adqualitysdk.sdk.i.b.f31 = (cArr[0] << 16) + cArr[1];
                    com.json.adqualitysdk.sdk.i.b.f32 = (cArr[2] << 16) + cArr[3];
                    com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                    for (int i4 = 0; i4 < 16; i4++) {
                        int i5 = com.json.adqualitysdk.sdk.i.b.f31 ^ iArr2[i4];
                        com.json.adqualitysdk.sdk.i.b.f31 = i5;
                        com.json.adqualitysdk.sdk.i.b.f32 = com.json.adqualitysdk.sdk.i.b.m391(i5) ^ com.json.adqualitysdk.sdk.i.b.f32;
                        int i6 = com.json.adqualitysdk.sdk.i.b.f31;
                        com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                        com.json.adqualitysdk.sdk.i.b.f32 = i6;
                    }
                    int i7 = com.json.adqualitysdk.sdk.i.b.f31;
                    com.json.adqualitysdk.sdk.i.b.f31 = com.json.adqualitysdk.sdk.i.b.f32;
                    com.json.adqualitysdk.sdk.i.b.f32 = i7;
                    com.json.adqualitysdk.sdk.i.b.f32 = i7 ^ iArr2[16];
                    com.json.adqualitysdk.sdk.i.b.f31 ^= iArr2[17];
                    int i8 = com.json.adqualitysdk.sdk.i.b.f32;
                    int i9 = com.json.adqualitysdk.sdk.i.b.f31;
                    cArr[0] = (char) (i9 >>> 16);
                    cArr[1] = (char) i9;
                    int i10 = com.json.adqualitysdk.sdk.i.b.f32;
                    cArr[2] = (char) (i10 >>> 16);
                    cArr[3] = (char) i10;
                    com.json.adqualitysdk.sdk.i.b.m390(iArr2);
                    int i11 = com.json.adqualitysdk.sdk.i.b.f34;
                    cArr2[i11 << 1] = cArr[0];
                    cArr2[(i11 << 1) + 1] = cArr[1];
                    cArr2[(i11 << 1) + 2] = cArr[2];
                    cArr2[(i11 << 1) + 3] = cArr[3];
                    com.json.adqualitysdk.sdk.i.b.f34 = i11 + 2;
                } else {
                    str = new String(cArr2, 0, i2);
                }
            }
        }
        return str;
    }

    static /* synthetic */ List f(List list, Object[] objArr) {
        int i2 = k + 65;
        j = i2 % 128;
        char c2 = i2 % 2 != 0 ? '4' : '\n';
        List<Object> listH = h(list, objArr);
        if (c2 == '4') {
            int i3 = 41 / 0;
        }
        int i4 = j + 73;
        k = i4 % 128;
        int i5 = i4 % 2;
        return listH;
    }

    private static String g(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
        String str2;
        Object bytes = str;
        if (str != null) {
            bytes = str.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        synchronized (com.json.adqualitysdk.sdk.i.i.f67) {
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            char[] cArr = new char[i3];
            System.arraycopy(i, i2, cArr, 0, i3);
            if (bArr != null) {
                char[] cArr2 = new char[i3];
                com.json.adqualitysdk.sdk.i.i.f68 = 0;
                char c2 = 0;
                while (true) {
                    int i6 = com.json.adqualitysdk.sdk.i.i.f68;
                    if (i6 >= i3) {
                        break;
                    }
                    if (bArr[i6] == 1) {
                        cArr2[i6] = (char) (((cArr[i6] << 1) + 1) - c2);
                    } else {
                        cArr2[i6] = (char) ((cArr[i6] << 1) - c2);
                    }
                    c2 = cArr2[i6];
                    com.json.adqualitysdk.sdk.i.i.f68 = i6 + 1;
                }
                cArr = cArr2;
            }
            if (i5 > 0) {
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr, 0, cArr3, 0, i3);
                int i7 = i3 - i5;
                System.arraycopy(cArr3, 0, cArr, i7, i5);
                System.arraycopy(cArr3, i5, cArr, 0, i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                com.json.adqualitysdk.sdk.i.i.f68 = 0;
                while (true) {
                    int i8 = com.json.adqualitysdk.sdk.i.i.f68;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr[(i3 - i8) - 1];
                    com.json.adqualitysdk.sdk.i.i.f68 = i8 + 1;
                }
                cArr = cArr4;
            }
            if (i4 > 0) {
                com.json.adqualitysdk.sdk.i.i.f68 = 0;
                while (true) {
                    int i9 = com.json.adqualitysdk.sdk.i.i.f68;
                    if (i9 >= i3) {
                        break;
                    }
                    cArr[i9] = (char) (cArr[i9] - iArr[2]);
                    com.json.adqualitysdk.sdk.i.i.f68 = i9 + 1;
                }
            }
            str2 = new String(cArr);
        }
        return str2;
    }

    private static List<Object> h(List<Object> list, Object... objArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(objArr));
        if (!(list == null)) {
            int i2 = j + 77;
            k = i2 % 128;
            boolean z = i2 % 2 != 0;
            arrayList.addAll(list);
            if (!z) {
                throw null;
            }
        }
        int i3 = j + 69;
        k = i3 % 128;
        int i4 = i3 % 2;
        return arrayList;
    }

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static WebViewClient m537(List<Object> list) {
        int i2 = j + 21;
        k = i2 % 128;
        if (i2 % 2 == 0) {
        }
        return kb.m1015((WebView) cx.m592(list, 0, WebView.class));
    }

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static WebChromeClient m538(List<Object> list) {
        int i2 = k + 37;
        j = i2 % 128;
        if (i2 % 2 != 0) {
        }
        WebChromeClient webChromeClientM1013 = kb.m1013((WebView) cx.m592(list, 0, WebView.class));
        int i3 = j + 33;
        k = i3 % 128;
        int i4 = i3 % 2;
        return webChromeClientM1013;
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static Object m539(List<Object> list) {
        int i2 = j + 123;
        k = i2 % 128;
        int i3 = i2 % 2;
        gy gyVar = (gy) cx.m592(list, 0, gy.class);
        if ((gyVar != null ? 'F' : 'W') == 'F') {
            return gyVar.mo406();
        }
        int i4 = k + 103;
        j = i4 % 128;
        if ((i4 % 2 != 0 ? ',' : '\'') == '\'') {
            return null;
        }
        int i5 = 52 / 0;
        return null;
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static boolean m540(List<Object> list) {
        int i2 = j + 53;
        k = i2 % 128;
        if (i2 % 2 == 0) {
        }
        boolean zM966 = jv.m966(cx.m592(list, 0, Object.class));
        int i3 = k + 111;
        j = i3 % 128;
        int i4 = i3 % 2;
        return zM966;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static Object m541(List<Object> list) {
        int i2 = k + 117;
        j = i2 % 128;
        int i3 = i2 % 2;
        ((jn) cx.m592(list, 0, jn.class)).m925();
        int i4 = k + 45;
        j = i4 % 128;
        if (i4 % 2 == 0) {
            return null;
        }
        int i5 = 77 / 0;
        return null;
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static Object m542(List<Object> list) {
        int i2 = j + 65;
        k = i2 % 128;
        ((jn) cx.m592(list, (i2 % 2 == 0 ? '8' : (char) 6) != '8' ? 0 : 1, jn.class)).m921();
        return null;
    }

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static jn m543(List<Object> list) {
        int i2 = k + 73;
        j = i2 % 128;
        int i3 = i2 % 2;
        jn jnVarM919 = jn.m919((WebView) cx.m592(list, 0, WebView.class), e(new int[]{-648595071, -1707697019, -1137893307, -215291870, -2013772969, 1812570635}, 10 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern(), false);
        int i4 = k + 81;
        j = i4 % 128;
        int i5 = i4 % 2;
        return jnVarM919;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static View.OnTouchListener m544(List<Object> list) {
        int i2 = k + 47;
        j = i2 % 128;
        int i3 = i2 % 2;
        View.OnTouchListener onTouchListenerM936 = jp.m936((View) cx.m592(list, 0, View.class));
        int i4 = k + 117;
        j = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return onTouchListenerM936;
        }
        int i5 = 74 / 0;
        return onTouchListenerM936;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m545(List<Object> list) {
        int i2 = k + 31;
        j = i2 % 128;
        int i3 = i2 % 2;
        iy.m886().m887((ij) cx.m592(list, 0, ij.class));
        int i4 = k + 31;
        j = i4 % 128;
        int i5 = i4 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View.OnClickListener m546(List<Object> list) {
        int i2 = j + 33;
        k = i2 % 128;
        if (i2 % 2 == 0) {
        }
        View.OnClickListener onClickListenerM938 = jp.m938((View) cx.m592(list, 0, View.class));
        int i3 = k + 75;
        j = i3 % 128;
        int i4 = i3 % 2;
        return onClickListenerM938;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m547(List<Object> list) {
        int i2 = j + 103;
        k = i2 % 128;
        int i3 = i2 % 2;
        iy.m886().m889((ij) cx.m592(list, 0, ij.class));
        int i4 = j + 67;
        k = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 23 : '\'') != 23) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final Object m548(cj cjVar, List<Object> list, dr drVar) {
        try {
            j jVar = new j(cx.c(list, 1), d(list, 2), (dn) cx.m592(list, 0, dn.class), drVar, cjVar);
            int i2 = k + 5;
            j = i2 % 128;
            if ((i2 % 2 != 0 ? 'V' : '5') != 'V') {
                return jVar;
            }
            throw null;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, -1669079379, 2002918718, 1521293645, 1712194014, 64263768, -1737726496, -1079964908, -928276841, 1617894723, 1863327176, -1911178242, -671030834, -163527841, -2432920}, (ViewConfiguration.getTouchSlop() >> 8) + 37).intern(), e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0042 A[PHI: r0 r1
      0x0042: PHI (r0v3 com.ironsource.adqualitysdk.sdk.i.gz$e) = (r0v2 com.ironsource.adqualitysdk.sdk.i.gz$e), (r0v9 com.ironsource.adqualitysdk.sdk.i.gz$e) binds: [B:13:0x0040, B:10:0x002a] A[DONT_GENERATE, DONT_INLINE]
      0x0042: PHI (r1v8 android.media.MediaPlayer) = (r1v7 android.media.MediaPlayer), (r1v13 android.media.MediaPlayer) binds: [B:13:0x0040, B:10:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0046 A[PHI: r0 r1
      0x0046: PHI (r0v7 com.ironsource.adqualitysdk.sdk.i.gz$e) = (r0v2 com.ironsource.adqualitysdk.sdk.i.gz$e), (r0v9 com.ironsource.adqualitysdk.sdk.i.gz$e) binds: [B:13:0x0040, B:10:0x002a] A[DONT_GENERATE, DONT_INLINE]
      0x0046: PHI (r1v10 android.media.MediaPlayer) = (r1v7 android.media.MediaPlayer), (r1v13 android.media.MediaPlayer) binds: [B:13:0x0040, B:10:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m549(java.util.List<java.lang.Object> r6) {
        /*
            r5 = this;
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.gz$e> r0 = com.ironsource.adqualitysdk.sdk.i.gz.e.class
            int r1 = com.json.adqualitysdk.sdk.i.cs.j
            int r1 = r1 + 85
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.cs.k = r2
            r2 = 2
            int r1 = r1 % r2
            r3 = 0
            r4 = 1
            if (r1 != 0) goto L12
            r1 = 1
            goto L13
        L12:
            r1 = 0
        L13:
            if (r1 == r4) goto L2d
            java.lang.Class<android.media.MediaPlayer> r1 = android.media.MediaPlayer.class
            java.lang.Object r1 = com.json.adqualitysdk.sdk.i.cx.m592(r6, r3, r1)
            android.media.MediaPlayer r1 = (android.media.MediaPlayer) r1
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r6, r4, r0)
            com.ironsource.adqualitysdk.sdk.i.gz$e r0 = (com.ironsource.adqualitysdk.sdk.i.gz.e) r0
            boolean r6 = d(r6, r2)
            if (r6 == 0) goto L2a
            r3 = 1
        L2a:
            if (r3 == 0) goto L46
            goto L42
        L2d:
            java.lang.Class<android.media.MediaPlayer> r1 = android.media.MediaPlayer.class
            java.lang.Object r1 = com.json.adqualitysdk.sdk.i.cx.m592(r6, r4, r1)
            android.media.MediaPlayer r1 = (android.media.MediaPlayer) r1
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r6, r3, r0)
            com.ironsource.adqualitysdk.sdk.i.gz$e r0 = (com.ironsource.adqualitysdk.sdk.i.gz.e) r0
            r3 = 5
            boolean r6 = d(r6, r3)
            if (r6 == 0) goto L46
        L42:
            com.json.adqualitysdk.sdk.i.jp.m932(r1, r0)
            goto L4e
        L46:
            com.ironsource.adqualitysdk.sdk.i.cs$q r6 = new com.ironsource.adqualitysdk.sdk.i.cs$q
            r6.<init>(r0)
            com.json.adqualitysdk.sdk.i.jp.m932(r1, r6)
        L4e:
            r6 = 0
            int r0 = com.json.adqualitysdk.sdk.i.cs.k
            int r0 = r0 + 3
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cs.j = r1
            int r0 = r0 % r2
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cs.m549(java.util.List):java.lang.Object");
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final Object m550(cj cjVar, List<Object> list, dr drVar) {
        try {
            a aVar = new a((dn) cx.m592(list, 0, dn.class), (dn) cx.m592(list, 1, dn.class), cx.c(list, 2), d(list, 3), drVar, cjVar);
            int i2 = k + 25;
            j = i2 % 128;
            if (i2 % 2 != 0) {
                throw null;
            }
            return aVar;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, -1669079379, 2002918718, -1343575065, 1393094552, -1399560973, -1420415013, 1649418461, 1232238483, 1670976356, 1274081176, -647413351, 1925892191, 1166953396, -521461577, 2141936954, -506449872}, (ViewConfiguration.getTouchSlop() >> 8) + 42).intern(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final Object m551(List<Object> list) {
        int i2;
        MediaPlayer mediaPlayer = (MediaPlayer) cx.m592(list, 0, MediaPlayer.class);
        gx.d dVar = (gx.d) cx.m592(list, 1, gx.d.class);
        if ((d(list, 2) ? (char) 15 : 'L') != 'L') {
            int i3 = k + 7;
            j = i3 % 128;
            int i4 = i3 % 2;
            jp.m940(mediaPlayer, dVar);
            i2 = j + 49;
        } else {
            jp.m940(mediaPlayer, new m(dVar));
            i2 = j + 35;
        }
        k = i2 % 128;
        int i5 = i2 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final Object m552(cj cjVar, List<Object> list, dr drVar) {
        try {
            i iVar = new i((dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = k + 73;
            j = i2 % 128;
            int i3 = i2 % 2;
            return iVar;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, 952175757, 216688387, -1076102591, 170088220, 290165136, -1865263666, 1311687154, 155120973, 1792510397, 235364047, 1264930813, 1864539829, 169500225, -1738469093, 1166953396, -521461577, 2141936954, -506449872}, 46 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final Object m553(cj cjVar, List<Object> list, dr drVar) {
        try {
            p pVar = new p(d(list, 2), (dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = k + 29;
            j = i2 % 128;
            int i3 = i2 % 2;
            return pVar;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, -554889977, -312521611, -1663526234, -104438764, -1440592545, 904258544, 1264090999, 1106599196, 1300086316, 411583846}, 32 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final Object m554(List<Object> list) {
        int i2;
        MediaPlayer mediaPlayer = (MediaPlayer) cx.m592(list, 0, MediaPlayer.class);
        ha.c cVar = (ha.c) cx.m592(list, 1, ha.c.class);
        if (d(list, 2) ? false : true) {
            jp.m937(mediaPlayer, new b(cVar));
            i2 = j + 47;
            k = i2 % 128;
        } else {
            int i3 = j + 61;
            k = i3 % 128;
            int i4 = i3 % 2;
            jp.m937(mediaPlayer, cVar);
            i2 = k + 71;
            j = i2 % 128;
        }
        int i5 = i2 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final Object m555(cj cjVar, List<Object> list, dr drVar) {
        try {
            h hVar = new h((dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = j + 113;
            k = i2 % 128;
            int i3 = i2 % 2;
            return hVar;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, 952175757, 216688387, -1076102591, 170088220, 290165136, -1865263666, 1311687154, 155120973, 1175347139, -1320766082, 1792510397, 235364047, -1763314017, 484767267, -864177503, 1224846819, -1195937624, -749494574}, (ViewConfiguration.getJumpTapTimeout() >> 16) + 48).intern(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final Object m556(List<Object> list) {
        MediaPlayer mediaPlayer = (MediaPlayer) cx.m592(list, 0, MediaPlayer.class);
        he.a aVar = (he.a) cx.m592(list, 1, he.a.class);
        if ((d(list, 2) ? (char) 4 : 'P') != 4) {
            jp.m933(mediaPlayer, new l(aVar));
        } else {
            int i2 = k + 49;
            j = i2 % 128;
            int i3 = i2 % 2;
            jp.m933(mediaPlayer, aVar);
        }
        int i4 = j + 31;
        k = i4 % 128;
        if (i4 % 2 != 0) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Object m557(cj cjVar, List<Object> list, dr drVar) {
        try {
            f fVar = new f((dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = k + 39;
            j = i2 % 128;
            int i3 = i2 % 2;
            return fVar;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, 128128812, 257122118, -1869063673, 1604349, 1735656431, -513372616, -534582647, 2096617512, 1166953396, -521461577, 2141936954, -506449872}, TextUtils.getOffsetBefore("", 0) + 34).intern(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final ij m558(cj cjVar, List<Object> list, dr drVar) {
        dn dnVar = (dn) cx.m592(list, 0, dn.class);
        ArrayList arrayList = new ArrayList();
        if ((list.size() > 1 ? (char) 15 : 'B') == 15) {
            int i2 = k + 7;
            j = i2 % 128;
            int i3 = i2 % 2;
            arrayList.addAll((Collection) cx.m592(list, 1, List.class));
            int i4 = j + 31;
            k = i4 % 128;
            int i5 = i4 % 2;
        }
        if (dnVar != null) {
            return new k(arrayList, dnVar, drVar, cjVar);
        }
        return null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Object m559(List<Object> list) {
        int i2 = j + 39;
        k = i2 % 128;
        int i3 = i2 % 2;
        View view = (View) cx.m592(list, 0, View.class);
        hb.a aVar = (hb.a) cx.m592(list, 1, hb.a.class);
        if ((d(list, 2) ? (char) 22 : 'K') == 22) {
            jp.m934(view, aVar);
            return null;
        }
        jp.m934(view, new g(aVar));
        int i4 = k + 65;
        j = i4 % 128;
        int i5 = i4 % 2;
        return null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Object m560(cj cjVar, List<Object> list, dr drVar) {
        try {
            d dVar = new d((dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = k + 37;
            j = i2 % 128;
            if (i2 % 2 == 0) {
                return dVar;
            }
            throw null;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), g(true, new int[]{0, 40, 109, 28}, "\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001").intern(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object m561(cj cjVar, List<Object> list) {
        String simpleName;
        int i2 = k + 105;
        j = i2 % 128;
        int i3 = i2 % 2;
        Class cls = (Class) cx.m592(list, 0, Class.class);
        Object objM592 = cx.m592(list, 1, Object.class);
        boolean zBooleanValue = list.size() <= 2 ? false : ((Boolean) cx.m592(list, 2, Boolean.class)).booleanValue();
        if (list.size() <= 3) {
            simpleName = cls.getSimpleName();
        } else {
            simpleName = (String) cx.m592(list, 3, String.class);
            int i4 = k + 105;
            j = i4 % 128;
            int i5 = i4 % 2;
        }
        return jv.m965(cls, objM592, new o(simpleName, zBooleanValue, cjVar));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Object m562(cj cjVar, List<Object> list, dr drVar) {
        try {
            n nVar = new n((dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = j + 71;
            k = i2 % 128;
            int i3 = i2 % 2;
            return nVar;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, 128128812, 257122118, -1869063673, 1604349, -44263586, 333144699, -246818463, -367194903, 1166953396, -521461577, 2141936954, -506449872}, (Process.myTid() >> 22) + 34).intern(), e2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043 A[PHI: r0 r1
      0x0043: PHI (r0v3 com.ironsource.adqualitysdk.sdk.i.hc$c) = (r0v2 com.ironsource.adqualitysdk.sdk.i.hc$c), (r0v9 com.ironsource.adqualitysdk.sdk.i.hc$c) binds: [B:14:0x0041, B:8:0x0027] A[DONT_GENERATE, DONT_INLINE]
      0x0043: PHI (r1v8 android.view.View) = (r1v7 android.view.View), (r1v13 android.view.View) binds: [B:14:0x0041, B:8:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047 A[PHI: r0 r1
      0x0047: PHI (r0v7 com.ironsource.adqualitysdk.sdk.i.hc$c) = (r0v2 com.ironsource.adqualitysdk.sdk.i.hc$c), (r0v9 com.ironsource.adqualitysdk.sdk.i.hc$c) binds: [B:14:0x0041, B:8:0x0027] A[DONT_GENERATE, DONT_INLINE]
      0x0047: PHI (r1v10 android.view.View) = (r1v7 android.view.View), (r1v13 android.view.View) binds: [B:14:0x0041, B:8:0x0027] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m563(java.util.List<java.lang.Object> r7) {
        /*
            r6 = this;
            java.lang.Class<com.ironsource.adqualitysdk.sdk.i.hc$c> r0 = com.ironsource.adqualitysdk.sdk.i.hc.c.class
            int r1 = com.json.adqualitysdk.sdk.i.cs.k
            int r1 = r1 + 125
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.cs.j = r2
            r2 = 2
            int r1 = r1 % r2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L12
            r1 = 0
            goto L13
        L12:
            r1 = 1
        L13:
            if (r1 == 0) goto L2a
            java.lang.Class<android.view.View> r1 = android.view.View.class
            java.lang.Object r1 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r4, r1)
            android.view.View r1 = (android.view.View) r1
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r3, r0)
            com.ironsource.adqualitysdk.sdk.i.hc$c r0 = (com.ironsource.adqualitysdk.sdk.i.hc.c) r0
            boolean r7 = d(r7, r2)
            if (r7 == 0) goto L47
            goto L43
        L2a:
            java.lang.Class<android.view.View> r1 = android.view.View.class
            java.lang.Object r1 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r4, r1)
            android.view.View r1 = (android.view.View) r1
            java.lang.Object r0 = com.json.adqualitysdk.sdk.i.cx.m592(r7, r4, r0)
            com.ironsource.adqualitysdk.sdk.i.hc$c r0 = (com.ironsource.adqualitysdk.sdk.i.hc.c) r0
            r5 = 3
            boolean r7 = d(r7, r5)
            if (r7 == 0) goto L40
            goto L41
        L40:
            r4 = 1
        L41:
            if (r4 == r3) goto L47
        L43:
            com.json.adqualitysdk.sdk.i.jp.m935(r1, r0)
            goto L4f
        L47:
            com.ironsource.adqualitysdk.sdk.i.cs$e r7 = new com.ironsource.adqualitysdk.sdk.i.cs$e
            r7.<init>(r0)
            com.json.adqualitysdk.sdk.i.jp.m935(r1, r7)
        L4f:
            r7 = 0
            int r0 = com.json.adqualitysdk.sdk.i.cs.j
            int r0 = r0 + 57
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cs.k = r1
            int r0 = r0 % r2
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cs.m563(java.util.List):java.lang.Object");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m564(cj cjVar, List<Object> list, dr drVar) {
        try {
            c cVar = new c((dn) cx.m592(list, 0, dn.class), drVar, cjVar, cx.c(list, 1));
            int i2 = k + 73;
            j = i2 % 128;
            if ((i2 % 2 != 0 ? 'E' : '5') != 'E') {
                return cVar;
            }
            throw null;
        } catch (Exception e2) {
            cn.m519(cjVar.m445(), e(new int[]{1498264140, -1651467026, 457940233, 944631830, 2144001090, 1939417666, 952175757, 216688387, -1076102591, 170088220, 290165136, -1865263666, 1311687154, 155120973, -471121775, -515907932, 78862705, 2066855697, -864177503, 1224846819, -1195937624, -749494574}, 45 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1))).intern(), e2);
            return null;
        }
    }
}
