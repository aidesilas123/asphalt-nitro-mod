package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PointF;
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
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.i.ju;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ao extends AnonymousClass3 {
    private static ao c;

    /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ao$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        private JSONObject a;
        private as b;

        /* JADX INFO: renamed from: リ, reason: contains not printable characters */
        public final as m331() {
            return this.b;
        }

        /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
        public final synchronized JSONObject m332() {
            return this.a;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final void m333(as asVar) {
            this.b = asVar;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public synchronized void mo334(JSONObject jSONObject) {
            this.a = jSONObject;
        }
    }

    static class a extends ao {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5219d = 39;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int[] f5220e = {-522995516, -1140087553, 66770752, -1388466222, 1698567373, -766286996, 1162868765, 856189259, -227514986, -348163640, -298872646, -1446975517, -318927467, -5731741, 2047514324, -1850366319, 1304774919, -492987942};

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5221f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5222g = 1;
        private final int h;
        private final int i;
        private final int j;
        private final int k;
        private final int l;
        private ix m;
        private ir n;
        private Handler o;
        private aw p;
        private ar q;
        private ap r;
        private aq s;
        private List<aq> t;
        private List<aq> u;
        private d v;
        private boolean w;
        private boolean x;
        private am y;
        private List z;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ao$a$a, reason: collision with other inner class name */
        final class C0337a implements is {
            private static long a = -7627355637385585183L;
            private static int b = 0;
            private static int c = 1;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Context f5223d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ ak f5224e;

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ao$a$a$a, reason: collision with other inner class name */
            final class C0338a extends il {
                C0338a() {
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    C0337a c0337a = C0337a.this;
                    a.this.mo323(c0337a.f5223d, c0337a.f5224e, false);
                }
            }

            C0337a(Context context, ak akVar) {
                this.f5223d = context;
                this.f5224e = akVar;
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

            private void b(int i) {
                synchronized (a.this) {
                    if (a.d(a.this) != null) {
                        t.m1042(new C0338a(), i);
                    }
                }
            }

            @Override // com.json.adqualitysdk.sdk.i.is
            /* JADX INFO: renamed from: ﻛ */
            public final void mo265(ip ipVar, String str) {
                int iM847;
                if ((ipVar != null ? '\n' : '\f') != '\f') {
                    int i = b + 73;
                    c = i % 128;
                    if (!(i % 2 != 0)) {
                        ipVar.m843().m847();
                        throw null;
                    }
                    iM847 = ipVar.m843().m847();
                } else {
                    iM847 = -1;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(a("ᶤꉜ戍⋣\ue2afꋊ捜⌭\ue3edꏒ掞\u206a\ue032ꁂ惐₯\ue17fꄸ愆⇛\ue1ed꙼晙☗\ue6e4꛶暔❑\ue737\ua7e4柆➂\ue43bꑮ", 49103 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern());
                sb.append(iM847);
                m.m1020(a("ᶳꀏ暚┯\uebb9긳泠㍃\uf1d7둤竦㥿", 48523 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), sb.toString());
                if (iM847 != 403) {
                    int i2 = b + 89;
                    c = i2 % 128;
                    if ((i2 % 2 == 0 ? 'P' : '?') != 'P') {
                        b(a.this.m335());
                    } else {
                        b(a.this.m335());
                        throw null;
                    }
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
            
                if ((r5 > 31440) != false) goto L28;
             */
            /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
            
                if ((r5 > 299 ? ']' : 'I') != ']') goto L19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x0041, code lost:
            
                r5 = r14.m842();
             */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
            
                if (r5.optBoolean(a("ᶒ摶\uee6b", 31219 - (android.view.ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern()) == false) goto L22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
            
                r6 = '#';
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
            
                r6 = '\'';
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0064, code lost:
            
                if (r6 == '#') goto L25;
             */
            /* JADX WARN: Code restructure failed: missing block: B:25:0x0067, code lost:
            
                com.json.adqualitysdk.sdk.i.r.m1033().m1038();
             */
            /* JADX WARN: Code restructure failed: missing block: B:26:0x006e, code lost:
            
                r6 = com.ironsource.adqualitysdk.sdk.i.ao.a.C0337a.c + 123;
                com.ironsource.adqualitysdk.sdk.i.ao.a.C0337a.b = r6 % 128;
                r6 = r6 % 2;
             */
            /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
            
                com.json.adqualitysdk.sdk.i.m.m1027(a("ᶳꀏ暚┯\uebb9긳泠㍃\uf1d7둤竦㥿", 48523 - android.text.TextUtils.getOffsetBefore("", 0)).intern(), a("ᶲ候蚘\uf525⮰鹓쳜͜燼ꑸᨏ䢗뽝\uedba′雁암㯕湽\udcf3ኁ䅐랜\uea25墷轂\ufddaす暷", 19853 - android.graphics.Color.argb(0, 0, 0, 0)).intern(), r5);
                r6 = com.json.adqualitysdk.sdk.i.ju.m962(r5);
                r6.remove(a("ᶒﮄ톰", (-16718319) - android.graphics.Color.rgb(0, 0, 0)).intern());
                com.ironsource.adqualitysdk.sdk.i.ao.a.l(r13.f5225f).m878(a("ᶓ띫䡜ᴴ똣䬅ᳰ놐䫊ᾱ나䖊Ὠ", (android.view.ViewConfiguration.getKeyRepeatDelay() >> 16) + 43753).intern(), r6.toString(), (com.ironsource.adqualitysdk.sdk.i.ix.d) null);
                r5.put(a("ᶕ\ue55b", (android.os.SystemClock.uptimeMillis() > 0 ? 1 : (android.os.SystemClock.uptimeMillis() == 0 ? 0 : -1)) + 63688).intern(), com.json.adqualitysdk.sdk.i.jt.m948());
                r5.put(a("ᶔ鈌", 36761 - android.text.TextUtils.indexOf("", "", 0, 0)).intern(), com.json.adqualitysdk.sdk.i.jt.m952());
                com.ironsource.adqualitysdk.sdk.i.ao.a.g(r5, r14.m845());
                r13.f5225f.mo334(r5);
             */
            @Override // com.json.adqualitysdk.sdk.i.is
            /* JADX INFO: renamed from: ﾒ */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void mo266(com.json.adqualitysdk.sdk.i.ip r14) {
                /*
                    Method dump skipped, instruction units count: 337
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.ao.a.C0337a.mo266(com.ironsource.adqualitysdk.sdk.i.ip):void");
            }
        }

        final class b extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ aq f5227d;

            b(aq aqVar) {
                this.f5227d = aqVar;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                a.j(a.this, this.f5227d);
                if (a.this.mo319()) {
                    this.f5227d.mo221();
                }
            }
        }

        final class c extends il {
            c() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                if (!a.this.m337().m851().m858()) {
                    a.e(a.this).mo342();
                } else {
                    if (a.this.mo319()) {
                        return;
                    }
                    a.e(a.this).mo341();
                }
            }
        }

        final class d extends il {
            d() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                a.k(a.this).clear();
                a.i(a.this).clear();
                a.j(a.this, null);
            }
        }

        final class e extends il {
            e() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                a.this.m338(true);
                if (a.c(a.this) != null) {
                    a.c(a.this).mo221();
                }
                Iterator it = new ArrayList(a.k(a.this)).iterator();
                while (it.hasNext()) {
                    ((aq) it.next()).mo221();
                }
                a.k(a.this).clear();
                Iterator it2 = new ArrayList(a.i(a.this)).iterator();
                while (it2.hasNext()) {
                    ((aq) it2.next()).mo221();
                }
            }
        }

        final class f extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ aq f5232d;

            f(aq aqVar) {
                this.f5232d = aqVar;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                a.i(a.this).add(this.f5232d);
                if (a.this.mo319()) {
                    this.f5232d.mo221();
                }
            }
        }

        final class g implements ju.a<au> {
            g() {
            }

            @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
            /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
            public final /* synthetic */ au mo339(JSONObject jSONObject, String str) {
                return new au(jSONObject.optJSONObject(str));
            }
        }

        final class h implements ju.d<ISAdQualityAdType> {
            h() {
            }

            @Override // com.ironsource.adqualitysdk.sdk.i.ju.d
            /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
            public final /* synthetic */ ISAdQualityAdType mo340(JSONArray jSONArray, int i) {
                return ISAdQualityAdType.fromInt(jSONArray.optInt(i));
            }
        }

        public a() {
            super((byte) 0);
            m(View.resolveSizeAndState(0, 0, 0) + 148, false, MotionEvent.axisFromString("") + 3, TextUtils.getCapsMode("", 0, 0) + 3, "\u0001\t\ufff8").intern();
            f(new int[]{1973441193, -1951376622}, 4 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))).intern();
            m((ViewConfiguration.getPressedStateDuration() >> 16) + 145, true, 3 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), 4 - (ViewConfiguration.getKeyRepeatDelay() >> 16), "\n\u0002�\ufff9").intern();
            f(new int[]{379620619, 2032262182}, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 4).intern();
            m((ViewConfiguration.getScrollBarSize() >> 8) + 146, true, 1 - TextUtils.indexOf((CharSequence) "", '0', 0), (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 4, "\ufffe\u0003\u0005\ufffa").intern();
            m((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 144, false, (KeyEvent.getMaxKeyCode() >> 16) + 3, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 3, "\n\n\ufff8\ufff7").intern();
            f(new int[]{-1009192046, 1366570002}, ExpandableListView.getPackedPositionType(0L) + 4).intern();
            f(new int[]{1932540551, -1197002639}, 2 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern();
            TimeUnit timeUnit = TimeUnit.HOURS;
            this.h = (int) timeUnit.toMillis(24L);
            TimeUnit timeUnit2 = TimeUnit.SECONDS;
            this.i = (int) timeUnit2.toMillis(5L);
            this.j = (int) timeUnit.toMillis(12L);
            this.k = (int) timeUnit2.toMillis(3L);
            this.l = (int) timeUnit2.toMillis(10L);
            this.z = null;
        }

        private JSONObject a() {
            String strM879;
            int i = f5222g + 79;
            f5221f = i % 128;
            if ((i % 2 != 0 ? 'G' : '?') == 'G' ? (strM879 = this.m.m879(f(new int[]{261716058, 1505549414, 1586618360, -1864743548, -1667427934, 1759558226, -1425946440, 16621990}, 61 << (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern())) != null : (strM879 = this.m.m879(f(new int[]{261716058, 1505549414, 1586618360, -1864743548, -1667427934, 1759558226, -1425946440, 16621990}, (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 14).intern())) != null) {
                try {
                    JSONObject jSONObject = new JSONObject(strM879);
                    int i2 = f5221f + 19;
                    f5222g = i2 % 128;
                    if (i2 % 2 != 0) {
                        return jSONObject;
                    }
                    int i3 = 37 / 0;
                    return jSONObject;
                } catch (JSONException unused) {
                }
            }
            return new JSONObject();
        }

        private synchronized void b() {
            int i = f5222g + 113;
            f5221f = i % 128;
            int i2 = i % 2;
            Handler handler = this.o;
            if (handler != null) {
                handler.post(new e());
            }
            int i3 = f5222g + 35;
            f5221f = i3 % 128;
            int i4 = i3 % 2;
        }

        static /* synthetic */ aq c(a aVar) {
            int i = f5222g;
            int i2 = i + 67;
            f5221f = i2 % 128;
            boolean z = i2 % 2 == 0;
            aq aqVar = aVar.s;
            if (!z) {
                int i3 = 62 / 0;
            }
            int i4 = i + 47;
            f5221f = i4 % 128;
            int i5 = i4 % 2;
            return aqVar;
        }

        static /* synthetic */ Handler d(a aVar) {
            int i = f5222g + 5;
            f5221f = i % 128;
            char c2 = i % 2 != 0 ? '(' : (char) 7;
            Handler handler = aVar.o;
            if (c2 == 7) {
                return handler;
            }
            throw null;
        }

        static /* synthetic */ d e(a aVar) {
            int i = f5221f + 43;
            f5222g = i % 128;
            boolean z = i % 2 != 0;
            d dVar = aVar.v;
            if (!z) {
                int i2 = 71 / 0;
            }
            return dVar;
        }

        private static String f(int[] iArr, int i) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                char[] cArr = new char[4];
                char[] cArr2 = new char[iArr.length << 1];
                int[] iArr2 = (int[]) f5220e.clone();
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

        static /* synthetic */ void g(JSONObject jSONObject, long j) {
            int i = f5222g + 45;
            f5221f = i % 128;
            int i2 = i % 2;
            n(jSONObject, j);
            int i3 = f5222g + 81;
            f5221f = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
        }

        static /* synthetic */ void h(a aVar) {
            int i = f5221f + 51;
            f5222g = i % 128;
            int i2 = i % 2;
            aVar.b();
            int i3 = f5221f + 39;
            f5222g = i3 % 128;
            if ((i3 % 2 == 0 ? 'A' : (char) 21) == 21) {
            } else {
                throw null;
            }
        }

        static /* synthetic */ List i(a aVar) {
            int i = f5221f;
            int i2 = i + 7;
            f5222g = i2 % 128;
            int i3 = i2 % 2;
            List<aq> list = aVar.u;
            int i4 = i + 81;
            f5222g = i4 % 128;
            if (!(i4 % 2 == 0)) {
                return list;
            }
            int i5 = 83 / 0;
            return list;
        }

        static /* synthetic */ aq j(a aVar, aq aqVar) {
            int i = f5222g + 23;
            int i2 = i % 128;
            f5221f = i2;
            boolean z = i % 2 == 0;
            aVar.s = aqVar;
            if (!z) {
                throw null;
            }
            int i3 = i2 + 89;
            f5222g = i3 % 128;
            int i4 = i3 % 2;
            return aqVar;
        }

        static /* synthetic */ List k(a aVar) {
            int i = f5222g;
            int i2 = i + 45;
            f5221f = i2 % 128;
            int i3 = i2 % 2;
            List<aq> list = aVar.t;
            int i4 = i + 85;
            f5221f = i4 % 128;
            if ((i4 % 2 != 0 ? '&' : '-') != '&') {
                return list;
            }
            throw null;
        }

        static /* synthetic */ ix l(a aVar) {
            int i = f5221f + 11;
            f5222g = i % 128;
            boolean z = i % 2 != 0;
            ix ixVar = aVar.m;
            if (!z) {
                int i2 = 72 / 0;
            }
            return ixVar;
        }

        private static String m(int i, boolean z, int i2, int i3, String str) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
                char[] cArr2 = new char[i3];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i4 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i4 >= i3) {
                        break;
                    }
                    com.json.adqualitysdk.sdk.i.c.f37 = cArr[i4];
                    cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i);
                    int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                    cArr2[i5] = (char) (cArr2[i5] - f5219d);
                    com.json.adqualitysdk.sdk.i.c.f36 = i5 + 1;
                }
                if (i2 > 0) {
                    com.json.adqualitysdk.sdk.i.c.f38 = i2;
                    char[] cArr3 = new char[i3];
                    System.arraycopy(cArr2, 0, cArr3, 0, i3);
                    int i6 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                    int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                    System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
                }
                if (z) {
                    char[] cArr4 = new char[i3];
                    com.json.adqualitysdk.sdk.i.c.f36 = 0;
                    while (true) {
                        int i8 = com.json.adqualitysdk.sdk.i.c.f36;
                        if (i8 >= i3) {
                            break;
                        }
                        cArr4[i8] = cArr2[(i3 - i8) - 1];
                        com.json.adqualitysdk.sdk.i.c.f36 = i8 + 1;
                    }
                    cArr2 = cArr4;
                }
                str2 = new String(cArr2);
            }
            return str2;
        }

        private static void n(JSONObject jSONObject, long j) {
            int i = f5222g + 65;
            f5221f = i % 128;
            int i2 = i % 2;
            if ((jSONObject.has(m(TextUtils.getOffsetAfter("", 0) + 154, true, 3 - TextUtils.indexOf("", "", 0), (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 2, "\u0000\u0001\u0000").intern()) ? ' ' : (char) 21) != ' ') {
                return;
            }
            int i3 = f5221f + 35;
            f5222g = i3 % 128;
            int i4 = i3 % 2;
            try {
                jSONObject.put(m(154 - Color.argb(0, 0, 0, 0), true, KeyEvent.normalizeMetaState(0) + 3, 2 - TextUtils.indexOf((CharSequence) "", '0'), "\u0000\u0001\u0000").intern(), jSONObject.optLong(m(153 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), true, TextUtils.indexOf((CharSequence) "", '0') + 4, ((Process.getThreadPriority(0) + 20) >> 6) + 3, "\u0000\u0001\u0000").intern()) + (j / 2));
            } catch (JSONException unused) {
            }
        }

        /* JADX INFO: renamed from: く, reason: contains not printable characters */
        public final int m335() {
            int i = f5222g + 13;
            f5221f = i % 128;
            int i2 = i % 2;
            int iOptInt = m332().optInt(f(new int[]{-1855868476, -558874308}, 3 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern(), this.i);
            int i3 = f5221f + 107;
            f5222g = i3 % 128;
            if ((i3 % 2 == 0 ? 'C' : '1') == '1') {
                return iOptInt;
            }
            throw null;
        }

        /* JADX INFO: renamed from: っ, reason: contains not printable characters */
        public final int m336() {
            JSONObject jSONObjectM332;
            String strM;
            int i = f5222g + 11;
            f5221f = i % 128;
            if ((i % 2 != 0 ? (char) 5 : (char) 24) != 5) {
                jSONObjectM332 = m332();
                strM = m(143 - (ViewConfiguration.getKeyRepeatDelay() >> 16), true, (ViewConfiguration.getJumpTapTimeout() >> 16) + 3, 2 - TextUtils.indexOf((CharSequence) "", '0'), "\f\ufff9\ufffb");
            } else {
                jSONObjectM332 = m332();
                strM = m(31256 >>> (ViewConfiguration.getKeyRepeatDelay() << 18), false, (ViewConfiguration.getJumpTapTimeout() >>> 125) + 4, 2 >>> TextUtils.indexOf((CharSequence) "", '*'), "\f\ufff9\ufffb");
            }
            int iOptInt = jSONObjectM332.optInt(strM.intern(), this.j);
            int i2 = f5221f + 89;
            f5222g = i2 % 128;
            if (i2 % 2 != 0) {
                return iOptInt;
            }
            int i3 = 20 / 0;
            return iOptInt;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ヮ */
        public final int mo304() {
            int iOptInt;
            synchronized (this) {
                iOptInt = m332().optInt(f(new int[]{1932540551, -1197002639}, 3 - TextUtils.getOffsetAfter("", 0)).intern(), 100);
            }
            return iOptInt;
        }

        /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
        public final synchronized ir m337() {
            ir irVar;
            int i = f5222g;
            int i2 = i + 57;
            f5221f = i2 % 128;
            if ((i2 % 2 != 0 ? '.' : (char) 22) != 22) {
                irVar = this.n;
                int i3 = 26 / 0;
            } else {
                irVar = this.n;
            }
            int i4 = i + 119;
            f5221f = i4 % 128;
            int i5 = i4 % 2;
            return irVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: 丫 */
        public final boolean mo305() {
            int i = f5221f + 101;
            f5222g = i % 128;
            int i2 = i % 2;
            boolean zOptBoolean = m332().optBoolean(f(new int[]{-1009192046, 1366570002}, (ViewConfiguration.getJumpTapTimeout() >> 16) + 4).intern());
            int i3 = f5221f + 121;
            f5222g = i3 % 128;
            int i4 = i3 % 2;
            return zOptBoolean;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: 爫 */
        public final int mo306() {
            int i = f5222g + 57;
            f5221f = i % 128;
            int i2 = i % 2;
            int iOptInt = m332().optInt(f(new int[]{379620619, 2032262182}, View.resolveSizeAndState(0, 0, 0) + 4).intern(), this.l);
            int i3 = f5222g + 7;
            f5221f = i3 % 128;
            if ((i3 % 2 != 0 ? 'O' : '7') == '7') {
                return iOptInt;
            }
            int i4 = 84 / 0;
            return iOptInt;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﬤ */
        public final synchronized void mo307() {
            this.o.removeCallbacksAndMessages(null);
            this.o = null;
            t.m1046(new d());
            int i = f5221f + 109;
            f5222g = i % 128;
            int i2 = i % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: טּ */
        public final List mo308() {
            int i = f5221f + 29;
            f5222g = i % 128;
            if (i % 2 == 0) {
                throw null;
            }
            if (this.z == null) {
                this.z = ju.m957(m332().optJSONArray(m(TextUtils.getTrimmedLength("") + 145, false, 2 - TextUtils.lastIndexOf("", '0', 0), Color.red(0) + 4, "\n\n\ufff8\ufff7").intern()), new h());
                int i2 = f5221f + 121;
                f5222g = i2 % 128;
                int i3 = i2 % 2;
            }
            return this.z;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: סּ */
        public final JSONObject mo309() {
            if (m331() == null) {
                int i = f5221f + 5;
                f5222g = i % 128;
                int i2 = i % 2;
                return null;
            }
            int i3 = f5221f + 37;
            f5222g = i3 % 128;
            int i4 = i3 % 2;
            return m331().m356();
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ףּ */
        public final String mo310() {
            if (m332() == null) {
                int i = f5222g + 55;
                f5221f = i % 128;
                int i2 = i % 2;
                return null;
            }
            int i3 = f5222g + 51;
            f5221f = i3 % 128;
            int i4 = i3 % 2;
            String strOptString = m332().optString(m(147 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), false, (ViewConfiguration.getJumpTapTimeout() >> 16) + 4, Process.getGidForName("") + 5, "\ufff8\b\ufff8\b").intern());
            if ((TextUtils.isEmpty(strOptString) ? 'L' : '?') == 'L') {
                int i5 = f5221f + 11;
                f5222g = i5 % 128;
                boolean z = i5 % 2 != 0;
                as asVarM331 = m331();
                if (!z) {
                    asVarM331.m355();
                    throw null;
                }
                strOptString = asVarM331.m355();
            }
            int i6 = f5221f + 103;
            f5222g = i6 % 128;
            int i7 = i6 % 2;
            return strOptString;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﭖ */
        public final int mo311() {
            int i = f5221f + 97;
            f5222g = i % 128;
            int i2 = i % 2;
            int iOptInt = m332().optInt(m(144 - ExpandableListView.getPackedPositionChild(0L), true, Color.blue(0) + 4, 4 - TextUtils.indexOf("", "", 0), "\n\u0002�\ufff9").intern(), this.k);
            int i3 = f5222g + 115;
            f5221f = i3 % 128;
            int i4 = i3 % 2;
            return iOptInt;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﭴ */
        public final String mo312() {
            int i = f5221f + 39;
            f5222g = i % 128;
            int i2 = i % 2;
            String strOptString = m332().optString(m(148 - View.resolveSize(0, 0), false, (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 2, (-16777213) - Color.rgb(0, 0, 0), "\u0001\t\ufff8").intern());
            int i3 = f5221f + 9;
            f5222g = i3 % 128;
            if ((i3 % 2 == 0 ? (char) 29 : (char) 17) == 17) {
                return strOptString;
            }
            int i4 = 98 / 0;
            return strOptString;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﭸ */
        public final aw mo313() {
            int i = f5221f;
            int i2 = i + 33;
            f5222g = i2 % 128;
            int i3 = i2 % 2;
            aw awVar = this.p;
            int i4 = i + 5;
            f5222g = i4 % 128;
            int i5 = i4 % 2;
            return awVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﮉ */
        public final ar mo314() {
            int i = f5221f + 95;
            f5222g = i % 128;
            if ((i % 2 == 0 ? '6' : (char) 18) != '6') {
                return this.q;
            }
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﮌ */
        public final ap mo315() {
            int i = f5222g + 103;
            f5221f = i % 128;
            if ((i % 2 != 0 ? '8' : (char) 30) != '8') {
                return this.r;
            }
            int i2 = 49 / 0;
            return this.r;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﮐ */
        public final double mo316() {
            int i = f5221f + 119;
            f5222g = i % 128;
            int i2 = i % 2;
            double dOptDouble = m332().optDouble(m(TextUtils.getTrimmedLength("") + 146, true, Process.getGidForName("") + 3, 4 - (ViewConfiguration.getTapTimeout() >> 16), "\ufffe\u0003\u0005\ufffa").intern(), 1.0d);
            int i3 = f5221f + 65;
            f5222g = i3 % 128;
            int i4 = i3 % 2;
            return dOptDouble;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﱟ */
        public final boolean mo317() {
            int i = f5221f;
            int i2 = i + 95;
            f5222g = i2 % 128;
            if ((i2 % 2 == 0 ? '*' : '+') == '*') {
                throw null;
            }
            boolean z = this.x;
            int i3 = i + 103;
            f5222g = i3 % 128;
            if (i3 % 2 != 0) {
                return z;
            }
            int i4 = 65 / 0;
            return z;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﱡ */
        public final double mo318() {
            JSONObject jSONObjectM332;
            String strF;
            int i = f5222g + 113;
            f5221f = i % 128;
            if ((i % 2 != 0 ? ';' : (char) 17) != ';') {
                jSONObjectM332 = m332();
                strF = f(new int[]{837085069, 1070836497}, 3 - KeyEvent.keyCodeFromString(""));
            } else {
                jSONObjectM332 = m332();
                strF = f(new int[]{837085069, 1070836497}, 3 >>> KeyEvent.keyCodeFromString(""));
            }
            return jSONObjectM332.optDouble(strF.intern(), 5.0d);
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﺙ */
        public final synchronized boolean mo319() {
            boolean z;
            int i = f5221f;
            int i2 = i + 31;
            f5222g = i2 % 128;
            int i3 = i2 % 2;
            z = this.w;
            int i4 = i + 119;
            f5222g = i4 % 128;
            int i5 = i4 % 2;
            return z;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﻏ */
        public final int mo320() {
            int i = f5222g + 123;
            f5221f = i % 128;
            int i2 = i % 2;
            as asVarM331 = m331();
            if (!(asVarM331 != null)) {
                return 3000;
            }
            int i3 = f5222g + 57;
            f5221f = i3 % 128;
            if (i3 % 2 == 0) {
                return asVarM331.a();
            }
            asVarM331.a();
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﻐ */
        public final void mo321(aq aqVar) {
            int i = f5221f + 109;
            f5222g = i % 128;
            int i2 = i % 2;
            Handler handler = this.o;
            if (handler != null) {
                handler.post(new f(aqVar));
                int i3 = f5221f + 29;
                f5222g = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final synchronized void m338(boolean z) {
            int i = f5222g;
            int i2 = i + 1;
            f5221f = i2 % 128;
            if (i2 % 2 != 0) {
                this.w = z;
                throw null;
            }
            this.w = z;
            int i3 = i + 63;
            f5221f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﻛ */
        public final Map<String, au> mo322() {
            Map<String, au> map = new HashMap<>();
            try {
                String strOptString = m332().optString(f(new int[]{-232794463, -255834429}, View.MeasureSpec.getSize(0) + 3).intern());
                if (!TextUtils.isEmpty(strOptString)) {
                    map = ju.m958(new JSONObject(strOptString), new g());
                    int i = f5222g + 13;
                    f5221f = i % 128;
                    int i2 = i % 2;
                }
            } catch (JSONException e2) {
                jy.m987(m((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, true, 11 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 12 - View.getDefaultSize(0, 0), "\u0001\t\n\uffde\u0000\u000f\n\b\u0000￭\u0002\u0004").intern(), m(137 - (ViewConfiguration.getTapTimeout() >> 16), false, TextUtils.getCapsMode("", 0, 0) + 11, (-16777185) - Color.rgb(0, 0, 0), "\u0010\u0011\ufff2\r￢\u0007\u0011\uffff\u0000\n\u0003￣\u0010\u0010\r\u0010ﾾ\u0007\fﾾ\u0005\u0003\u0012￡\r\f\f\u0003\u0001\u0012\r").intern(), (Throwable) e2, false);
            }
            return map;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ｋ */
        public final void mo323(Context context, ak akVar, boolean z) {
            int i = f5221f + 47;
            f5222g = i % 128;
            int i2 = i % 2;
            if (z) {
                t.m1040(new c(), ao.m303().mo311());
            }
            m338(false);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject = new jk(context, akVar).mo274(new JSONObject(), m337().m851().m858(), true, false);
            } catch (JSONException e2) {
                m.m1032(m(View.resolveSize(0, 0) + IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, true, 10 - View.MeasureSpec.getSize(0), 12 - (ViewConfiguration.getTapTimeout() >> 16), "\u0001\t\n\uffde\u0000\u000f\n\b\u0000￭\u0002\u0004").intern(), m(136 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), true, Color.alpha(0) + 12, 25 - (ViewConfiguration.getJumpTapTimeout() >> 16), "\t\u0014\u0001\u0005\u0012\u0003\uffc0\u0012\u000f\u0012\u0012￥\u0014\u000e\u0005\u0016\u0005\uffc0\u0005\u0013\u0001\u0002\uffc0\u0007\u000e").intern(), e2);
            }
            m337().m852(this.y.m298(m(149 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), false, Color.alpha(0) + 5, Color.argb(0, 0, 0, 0) + 6, "\u0002\u0005\u0007\ufff4\uffff\u0003").intern()), jSONObject, new C0337a(context, akVar));
            int i3 = f5222g + 33;
            f5221f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ｋ */
        public final void mo324(Context context, ir irVar, am amVar, d dVar, boolean z) {
            this.m = new ix(context, f(new int[]{2096627565, -1705474061, -1165227321, -1295753016, -2140682215, 458861272, -956252959, -1666143728, -603580536, -987676196, -1493953477, 969043082, 1615354332, -1894996912}, 28 - TextUtils.indexOf("", "")).intern(), f(new int[]{-374013136, 1584723532, 1004664666, -381899371, -1603631297, 1606833321, -856158758, -1074095638, -567909612, -464399061}, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 20).intern());
            this.n = irVar;
            this.w = false;
            this.x = z;
            this.y = amVar;
            this.o = new Handler(Looper.getMainLooper());
            as asVar = new as();
            this.p = new aw(asVar);
            this.q = new ar(asVar);
            this.r = new ap(asVar);
            mo334(a());
            m333(asVar);
            this.v = dVar;
            this.t = new ArrayList();
            this.u = new ArrayList();
            int i = f5221f + 33;
            f5222g = i % 128;
            int i2 = i % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao.AnonymousClass3
        /* JADX INFO: renamed from: ｋ */
        public final synchronized void mo334(JSONObject jSONObject) {
            int i = f5221f + 27;
            f5222g = i % 128;
            int i2 = i % 2;
            super.mo334(jSONObject);
            this.p.mo334(jSONObject);
            this.q.mo334(jSONObject);
            this.r.mo334(jSONObject);
            int i3 = f5222g + 33;
            f5221f = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ｋ */
        public final boolean mo325() {
            JSONObject jSONObjectM332;
            String strM;
            int i = f5221f + 49;
            f5222g = i % 128;
            if ((i % 2 == 0 ? '<' : 'G') != 'G') {
                jSONObjectM332 = m332();
                strM = m(22579 >>> (ViewConfiguration.getScrollFriction() > 2.0f ? 1 : (ViewConfiguration.getScrollFriction() == 2.0f ? 0 : -1)), true, 5 >>> Color.blue(0), 2 % View.MeasureSpec.makeMeasureSpec(0, 0), "￼\t\ufffb");
            } else {
                jSONObjectM332 = m332();
                strM = m((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 144, false, Color.blue(0) + 2, 3 - View.MeasureSpec.makeMeasureSpec(0, 0), "￼\t\ufffb");
            }
            boolean zOptBoolean = jSONObjectM332.optBoolean(strM.intern(), false);
            int i2 = f5222g + 7;
            f5221f = i2 % 128;
            int i3 = i2 % 2;
            return zOptBoolean;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ｋ */
        public final boolean mo326(String str, String str2) {
            int i = f5222g + 31;
            f5221f = i % 128;
            if (i % 2 != 0) {
                throw null;
            }
            if ((str != null ? '6' : (char) 17) == 17) {
                return true;
            }
            au auVar = mo322().get(str);
            if ((auVar != null ? 'U' : (char) 25) == 'U') {
                if (!(!auVar.m360(str2))) {
                    return false;
                }
            }
            int i2 = f5222g + 49;
            f5221f = i2 % 128;
            if ((i2 % 2 != 0 ? '@' : (char) 22) != '@') {
                return true;
            }
            int i3 = 12 / 0;
            return true;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﾇ */
        public final void mo327(aq aqVar) {
            int i = f5221f + 9;
            f5222g = i % 128;
            int i2 = i % 2;
            Handler handler = this.o;
            if (handler != null) {
                handler.post(new b(aqVar));
            }
            int i3 = f5221f + 111;
            f5222g = i3 % 128;
            if ((i3 % 2 == 0 ? 'R' : 'J') == 'J') {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﾇ */
        public final void mo328(iq iqVar) {
            int i = f5222g + 125;
            f5221f = i % 128;
            int i2 = i % 2;
            m331().f(iqVar);
            int i3 = f5221f + 39;
            f5222g = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﾇ */
        public final boolean mo329() {
            JSONObject jSONObjectM332;
            String strIntern;
            boolean z;
            int i = f5222g + 81;
            f5221f = i % 128;
            if ((i % 2 != 0 ? (char) 25 : (char) 29) != 29) {
                jSONObjectM332 = m332();
                strIntern = f(new int[]{-1411823120, 29249384}, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) * 2).intern();
                z = false;
            } else {
                jSONObjectM332 = m332();
                strIntern = f(new int[]{-1411823120, 29249384}, (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 2).intern();
                z = true;
            }
            return jSONObjectM332.optBoolean(strIntern, z);
        }

        @Override // com.json.adqualitysdk.sdk.i.ao
        /* JADX INFO: renamed from: ﾒ */
        public final int mo330() {
            int i = f5222g + 13;
            f5221f = i % 128;
            int i2 = i % 2;
            int iOptInt = m332().optInt(m(Color.alpha(0) + 149, false, 2 - (ViewConfiguration.getFadingEdgeLength() >> 16), 3 - TextUtils.indexOf("", "", 0), "\ufff6\u0006\u0004").intern(), this.h);
            int i3 = f5221f + 13;
            f5222g = i3 % 128;
            if (i3 % 2 != 0) {
                return iOptInt;
            }
            throw null;
        }
    }

    public interface d {
        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        void mo341();

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        void mo342();
    }

    private ao() {
    }

    /* synthetic */ ao(byte b) {
        this();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static synchronized ao m303() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public abstract int mo304();

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public abstract boolean mo305();

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public abstract int mo306();

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public abstract void mo307();

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public abstract List mo308();

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public abstract JSONObject mo309();

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public abstract String mo310();

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public abstract int mo311();

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public abstract String mo312();

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public abstract aw mo313();

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public abstract ar mo314();

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public abstract ap mo315();

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public abstract double mo316();

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public abstract boolean mo317();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public abstract double mo318();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public abstract boolean mo319();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public abstract int mo320();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public abstract void mo321(aq aqVar);

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public abstract Map<String, au> mo322();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public abstract void mo323(Context context, ak akVar, boolean z);

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public abstract void mo324(Context context, ir irVar, am amVar, d dVar, boolean z);

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public abstract boolean mo325();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public abstract boolean mo326(String str, String str2);

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public abstract void mo327(aq aqVar);

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public abstract void mo328(iq iqVar);

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public abstract boolean mo329();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public abstract int mo330();
}
