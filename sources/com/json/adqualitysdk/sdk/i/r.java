package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.json.adqualitysdk.sdk.ISAdQualityAdListener;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import com.json.adqualitysdk.sdk.ISAdQualityConfig;
import com.json.adqualitysdk.sdk.ISAdQualityInitError;
import com.json.adqualitysdk.sdk.ISAdQualityInitListener;
import com.json.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.json.adqualitysdk.sdk.ISAdQualitySegment;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import com.json.adqualitysdk.sdk.i.ao;
import com.json.adqualitysdk.sdk.i.ix;
import com.json.b4;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collections;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class r extends IronSourceAdQuality {
    private static r a = null;
    private static char[] b = null;
    private static long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5959d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5960e = 1;
    private Context m;
    private ax o;
    private ISAdQualityAdListener p;
    private ir q;
    private ag r;
    private ix s;
    private iq t;
    private ISAdQualityInitListener u;
    private al v;
    private an w;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5962g = false;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;
    private ISAdQualityLogLevel l = ISAdQualityLogLevel.INFO;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ak f5961f = new ak();
    private am n = new am();

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5963d = {'f', 18017, 35963, 53824, 6170, 24103, 42023, 59945, 12315, 30209, 48337, 746, 18681, 36551};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static long f5964e = 5032067776300533261L;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5965f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5966g = 1;
        final /* synthetic */ boolean h;
        final /* synthetic */ String i;
        final /* synthetic */ boolean j;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.r$a$a, reason: collision with other inner class name */
        final class C0353a implements ix.a {
            private static int[] a = {2128979643, 1443358168, 807170892, 1501942661, 1890055371, -1773352695, -1844635166, 597616441, 2015735060, 335111977, 474705473, -834387154, -264416930, 1217285607, -263225674, -888914585, -1463829081, -774890758};
            private static int b = 0;
            private static int c = 1;

            C0353a() {
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

            @Override // com.ironsource.adqualitysdk.sdk.i.ix.a
            /* JADX INFO: renamed from: ﻐ */
            public final void mo884(String str) {
                int i = c + 119;
                b = i % 128;
                int i2 = i % 2;
                boolean zIsEmpty = TextUtils.isEmpty(str);
                String strIntern = null;
                if ((zIsEmpty ? 'M' : 'L') != 'L') {
                    r.d(r.this).m881(a(new int[]{1943345542, -1909191993, -131654409, 1312974906, 1439939664, 1270771134, 53788773, -296571906}, 14 - KeyEvent.normalizeMetaState(0)).intern(), a(new int[]{1907737798, 2102015323, -819609749, 1303017374}, 5 - TextUtils.indexOf("", "", 0)).intern(), null);
                }
                ag agVarN = r.n(r.this);
                String strIntern2 = a(new int[]{-1038486260, 1924360655, 775411181, -1902416945}, (ViewConfiguration.getLongPressTimeout() >> 16) + 7).intern();
                a aVar = a.this;
                if (aVar.h) {
                    int i3 = c + 109;
                    int i4 = i3 % 128;
                    b = i4;
                    int i5 = i3 % 2;
                    strIntern = aVar.i;
                    if (strIntern != null) {
                        int i6 = i4 + 23;
                        c = i6 % 128;
                        int i7 = i6 % 2;
                    } else {
                        strIntern = a(new int[]{-1007590086, 1733340741}, View.getDefaultSize(0, 0) + 4).intern();
                        int i8 = c + 17;
                        b = i8 % 128;
                        int i9 = i8 % 2;
                    }
                }
                ax axVarJ = r.j(r.this);
                new gl(r.p(r.this));
                r.p(r.this);
                agVarN.m257(strIntern2, jq.m942(strIntern, axVarJ, zIsEmpty, r.s(r.this)));
                a aVar2 = a.this;
                if (aVar2.j ? false : true) {
                    return;
                }
                r.n(r.this).m256();
            }
        }

        a(boolean z, String str, boolean z2) {
            this.h = z;
            this.i = str;
            this.j = z2;
        }

        private static String b(int i, char c, int i2) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                char[] cArr = new char[i2];
                com.json.adqualitysdk.sdk.i.e.f51 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                    if (i3 < i2) {
                        cArr[i3] = (char) ((((long) f5963d[i + i3]) ^ (((long) i3) * f5964e)) ^ ((long) c));
                        com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            r.d(r.this).m875(b(ViewConfiguration.getTouchSlop() >> 8, (char) TextUtils.getOffsetAfter("", 0), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 13).intern(), new C0353a());
            int i = f5965f + 3;
            f5966g = i % 128;
            int i2 = i % 2;
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ISAdQualityInitListener f5968d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ ISAdQualityInitError f5969e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ String f5970f;

        b(ISAdQualityInitListener iSAdQualityInitListener, ISAdQualityInitError iSAdQualityInitError, String str) {
            this.f5968d = iSAdQualityInitListener;
            this.f5969e = iSAdQualityInitError;
            this.f5970f = str;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ISAdQualityInitListener iSAdQualityInitListener = this.f5968d;
            if (iSAdQualityInitListener != null) {
                iSAdQualityInitListener.adQualitySdkInitFailed(this.f5969e, this.f5970f);
            }
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5971d = {'\'', 'J', 'N', 'i', 'y', 'q', 'm', 'i', 'n', 'f', ']', 'U', 293, 301, 312, 301, 306, 269, 228, 317, 297, 303, 228, 308, 308, 293, 228, 300, 312, 301, 315, 228, 299, 306, 301, 318, 301, 304, 's', 210, 217, 244, 244, 238, 195, 204, 241, 235, 237, 199, 194, 228, 195, 195, 231, 239, 236, 227, 234, 236, 229, 229, 195, 162, 162, 189, 205, 202, 209, 204, 204, 203, 181, 162, 162, 161, 179, 218, 200, 200, 239, 242, 203, 196, 236, 200, 199, 235, 240, 238, 195, 204, 241, 239, 239, 197, 203, 237, 237, 244, 225, 223, 234, 229, 210, 217, 244, 244, 238, 196, 162, 162, 161, 179, 222, 238, 234, 242, 244, 202, 204, 241, 239, 239, 197, 203, 237, 237, 244, 225, 223, 234, '5', 'o', 'j', 'Z', '[', 'h', 's', 'v', 'Z', '7', 'P', 'q', 'N', 'I', 'f', 'l', 'p', 'k', 'i', 'g', 245, 162, 205, 198, 213, 251, 246, 235, 238, 227, 247, 211, 230, 195, 213, 203, 162, 188, 238, 244, 247, 162, 244, 241, 232, 162, 233, 240, 235, 246, 244, 227, 246, 146, 290, 290, 251, 246, 285, 285, 288, 288, 279, 280, 284, 291, 291, 285, 284, 245, 230, 256, 252, 260, 268, 277, 285, 280, 284, 288, 296, 254, 235, 253, 249, 250, 269};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ ISAdQualityConfig f5972e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private /* synthetic */ String f5973f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private /* synthetic */ Application f5974g;
        private /* synthetic */ Activity h;

        final class a implements ix.d {
            a() {
            }

            @Override // com.ironsource.adqualitysdk.sdk.i.ix.d
            /* JADX INFO: renamed from: ﻛ */
            public final void mo885() {
                r.B(r.this);
            }
        }

        class b implements q {

            final class a extends il {

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private static int[] f5975d = {2100721364, 1348009826, -1766939635, -187491031, 1796197390, -1963066434, 464812339, 1450448895, 2022764852, 1154158343, 1168722903, -1284785917, 353066364, -377331455, 67242009, 1945071207, -446417894, 1376639952};

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private static int f5976e = 0;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                private static int f5977f = 1;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                private /* synthetic */ String f5978g;

                a(String str) {
                    this.f5978g = str;
                }

                private static String b(int[] iArr, int i) {
                    String str;
                    synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
                        char[] cArr = new char[4];
                        char[] cArr2 = new char[iArr.length << 1];
                        int[] iArr2 = (int[]) f5975d.clone();
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

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    ax axVarJ;
                    String strB;
                    int i = f5976e + 77;
                    f5977f = i % 128;
                    if ((i % 2 == 0 ? (char) 7 : (char) 24) != 7) {
                        axVarJ = r.j(r.this);
                        strB = b(new int[]{-1883470459, -420963229, 885590024, 1692443362, 760905680, 659897245, 518397938, 487685052, -1942666905, -1236114111, -1763753007, 947021097}, 23 - (Process.myPid() >> 22));
                    } else {
                        axVarJ = r.j(r.this);
                        strB = b(new int[]{-1883470459, -420963229, 885590024, 1692443362, 760905680, 659897245, 518397938, 487685052, -1942666905, -1236114111, -1763753007, 947021097}, 93 >>> (Process.myPid() >> 45));
                    }
                    axVarJ.m374(strB.intern(), Collections.singletonList(this.f5978g));
                }
            }

            b() {
            }

            @Override // com.json.adqualitysdk.sdk.i.q
            public void onEvent(String str) {
                t.m1039(new a(str));
            }
        }

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.r$c$c, reason: collision with other inner class name */
        class C0354c implements ah {
            C0354c() {
            }

            @Override // com.json.adqualitysdk.sdk.i.ah
            public void onEventReceived(JSONObject jSONObject) {
                ik.m841(r.p(r.this), ib.f85, jSONObject, new Object[0]);
            }
        }

        final class d implements aq {
            private static char[] a = {'s', 2418, 4693, 6970, 9240, 11760};
            private static long b = 1864021448413219101L;
            private static int c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static int f5979d = 1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private /* synthetic */ String f5980e;

            d(String str) {
                this.f5980e = str;
            }

            private static String a(int i, int i2, char c2) {
                String str;
                synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                    char[] cArr = new char[i2];
                    com.json.adqualitysdk.sdk.i.e.f51 = 0;
                    while (true) {
                        int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                        if (i3 < i2) {
                            cArr[i3] = (char) ((((long) a[i + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                            com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                        } else {
                            str = new String(cArr);
                        }
                    }
                }
                return str;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
            @Override // com.json.adqualitysdk.sdk.i.aq
            /* JADX INFO: renamed from: ﻛ */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void mo221() {
                /*
                    r13 = this;
                    int r0 = com.ironsource.adqualitysdk.sdk.i.r.c.d.f5979d
                    int r0 = r0 + 93
                    int r1 = r0 % 128
                    com.ironsource.adqualitysdk.sdk.i.r.c.d.c = r1
                    r1 = 2
                    int r0 = r0 % r1
                    r2 = 91
                    if (r0 == 0) goto L11
                    r0 = 63
                    goto L13
                L11:
                    r0 = 91
                L13:
                    r3 = 0
                    r4 = -1
                    java.lang.String r6 = ""
                    r7 = 1
                    if (r0 == r2) goto L45
                    com.ironsource.adqualitysdk.sdk.i.ao r0 = com.json.adqualitysdk.sdk.i.ao.m303()
                    int r2 = android.view.View.MeasureSpec.getMode(r7)
                    r8 = 96
                    int r6 = android.text.TextUtils.indexOf(r6, r8)
                    int r6 = r1 / r6
                    long r8 = android.os.SystemClock.currentThreadTimeMillis()
                    int r10 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                    int r4 = r7 >>> r10
                    char r4 = (char) r4
                    java.lang.String r2 = a(r2, r6, r4)
                    java.lang.String r2 = r2.intern()
                    java.lang.String r4 = r13.f5980e
                    boolean r0 = r0.mo326(r2, r4)
                    if (r0 != 0) goto L7d
                    goto L76
                L45:
                    com.ironsource.adqualitysdk.sdk.i.ao r0 = com.json.adqualitysdk.sdk.i.ao.m303()
                    int r2 = android.view.View.MeasureSpec.getMode(r3)
                    r8 = 48
                    int r6 = android.text.TextUtils.indexOf(r6, r8)
                    r8 = 5
                    int r6 = 5 - r6
                    long r9 = android.os.SystemClock.currentThreadTimeMillis()
                    r11 = 35
                    int r12 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
                    int r4 = 1 - r12
                    char r4 = (char) r4
                    java.lang.String r2 = a(r2, r6, r4)
                    java.lang.String r2 = r2.intern()
                    java.lang.String r4 = r13.f5980e
                    boolean r0 = r0.mo326(r2, r4)
                    if (r0 != 0) goto L72
                    goto L74
                L72:
                    r8 = 35
                L74:
                    if (r8 == r11) goto L7d
                L76:
                    com.ironsource.adqualitysdk.sdk.i.r$c r0 = com.ironsource.adqualitysdk.sdk.i.r.c.this
                    com.ironsource.adqualitysdk.sdk.i.r r0 = com.json.adqualitysdk.sdk.i.r.this
                    com.json.adqualitysdk.sdk.i.r.B(r0)
                L7d:
                    int r0 = com.ironsource.adqualitysdk.sdk.i.r.c.d.c
                    int r0 = r0 + 103
                    int r2 = r0 % 128
                    com.ironsource.adqualitysdk.sdk.i.r.c.d.f5979d = r2
                    int r0 = r0 % r1
                    if (r0 != 0) goto L89
                    goto L8a
                L89:
                    r3 = 1
                L8a:
                    if (r3 != r7) goto L8d
                    return
                L8d:
                    r0 = 0
                    throw r0     // Catch: java.lang.Throwable -> L8f
                L8f:
                    r0 = move-exception
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.r.c.d.mo221():void");
            }
        }

        final class e implements ao.d {
            private static int a = 194;
            private static int b = 0;
            private static int c = 1;

            e() {
            }

            private static String a(int i, int i2, boolean z, int i3, String str) {
                String str2;
                Object charArray = str;
                if (str != null) {
                    charArray = str.toCharArray();
                }
                char[] cArr = (char[]) charArray;
                synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
                    char[] cArr2 = new char[i2];
                    com.json.adqualitysdk.sdk.i.c.f36 = 0;
                    while (true) {
                        int i4 = com.json.adqualitysdk.sdk.i.c.f36;
                        if (i4 >= i2) {
                            break;
                        }
                        com.json.adqualitysdk.sdk.i.c.f37 = cArr[i4];
                        cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i);
                        int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                        cArr2[i5] = (char) (cArr2[i5] - a);
                        com.json.adqualitysdk.sdk.i.c.f36 = i5 + 1;
                    }
                    if (i3 > 0) {
                        com.json.adqualitysdk.sdk.i.c.f38 = i3;
                        char[] cArr3 = new char[i2];
                        System.arraycopy(cArr2, 0, cArr3, 0, i2);
                        int i6 = com.json.adqualitysdk.sdk.i.c.f38;
                        System.arraycopy(cArr3, 0, cArr2, i2 - i6, i6);
                        int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                        System.arraycopy(cArr3, i7, cArr2, 0, i2 - i7);
                    }
                    if (z) {
                        char[] cArr4 = new char[i2];
                        com.json.adqualitysdk.sdk.i.c.f36 = 0;
                        while (true) {
                            int i8 = com.json.adqualitysdk.sdk.i.c.f36;
                            if (i8 >= i2) {
                                break;
                            }
                            cArr4[i8] = cArr2[(i2 - i8) - 1];
                            com.json.adqualitysdk.sdk.i.c.f36 = i8 + 1;
                        }
                        cArr2 = cArr4;
                    }
                    str2 = new String(cArr2);
                }
                return str2;
            }

            @Override // com.ironsource.adqualitysdk.sdk.i.ao.d
            /* JADX INFO: renamed from: ﻐ */
            public final void mo341() {
                int i = b + 49;
                c = i % 128;
                int i2 = i % 2;
                r.K(r.this, ISAdQualityInitError.CONFIG_LOAD_TIMEOUT, a(287 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 34, true, 33 - (ViewConfiguration.getTapTimeout() >> 16), "\u0013\t\u0011\r\u0018ￄ\b\u0005\u0013\u0010ￄ\u000b\r\n\u0012\u0013\u0007ￄ\uffef￨\ufff7ￄ\u001d\u0018\r\u0010\u0005\u0019\ufff5\b￥\ufff7￭\u0018\u0019").intern());
                int i3 = c + 25;
                b = i3 % 128;
                if ((i3 % 2 != 0 ? '4' : (char) 6) != 6) {
                    int i4 = 61 / 0;
                }
            }

            @Override // com.ironsource.adqualitysdk.sdk.i.ao.d
            /* JADX INFO: renamed from: ﾇ */
            public final void mo342() {
                int i = c + 119;
                b = i % 128;
                int i2 = i % 2;
                r.K(r.this, ISAdQualityInitError.NO_NETWORK_CONNECTION, a((Process.myTid() >> 22) + 294, 21 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), false, 10 - TextUtils.lastIndexOf("", '0'), "ﾼ\uffff\u000b\n\n\u0001\uffff\u0010\u0005\u000b\n￪\u000bﾼ\n\u0001\u0010\u0013\u000b\u000e\u0007").intern());
                int i3 = c + 17;
                b = i3 % 128;
                if ((i3 % 2 != 0 ? '-' : '\r') != '-') {
                    return;
                }
                int i4 = 3 / 0;
            }
        }

        final class f implements ISAdQualityInitListener {
            f() {
            }

            @Override // com.json.adqualitysdk.sdk.ISAdQualityInitListener
            public final void adQualitySdkInitFailed(ISAdQualityInitError iSAdQualityInitError, String str) {
                r.K(r.this, iSAdQualityInitError, str);
            }

            @Override // com.json.adqualitysdk.sdk.ISAdQualityInitListener
            public final void adQualitySdkInitSuccess() {
                r.m(r.this);
            }
        }

        final class g implements ISAdQualityAdListener {
            g() {
            }

            @Override // com.json.adqualitysdk.sdk.ISAdQualityAdListener
            public final void adClosed(String str, ISAdQualityAdType iSAdQualityAdType) {
                if (r.h(r.this) != null) {
                    r.h(r.this).adClosed(str, iSAdQualityAdType);
                }
            }

            @Override // com.json.adqualitysdk.sdk.ISAdQualityAdListener
            public final void adDisplayed(String str, ISAdQualityAdType iSAdQualityAdType) {
                if (r.h(r.this) != null) {
                    r.h(r.this).adDisplayed(str, iSAdQualityAdType);
                }
            }
        }

        c(ISAdQualityConfig iSAdQualityConfig, String str, Application application, Activity activity) {
            this.f5972e = iSAdQualityConfig;
            this.f5973f = str;
            this.f5974g = application;
            this.h = activity;
        }

        private static String b(boolean z, int[] iArr, String str) throws UnsupportedEncodingException {
            String str2;
            Object bytes = str;
            if (str != null) {
                bytes = str.getBytes("ISO-8859-1");
            }
            byte[] bArr = (byte[]) bytes;
            synchronized (i.f67) {
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = iArr[2];
                int i4 = iArr[3];
                char[] cArr = new char[i2];
                System.arraycopy(f5971d, i, cArr, 0, i2);
                if (bArr != null) {
                    char[] cArr2 = new char[i2];
                    i.f68 = 0;
                    char c = 0;
                    while (true) {
                        int i5 = i.f68;
                        if (i5 >= i2) {
                            break;
                        }
                        if (bArr[i5] == 1) {
                            cArr2[i5] = (char) (((cArr[i5] << 1) + 1) - c);
                        } else {
                            cArr2[i5] = (char) ((cArr[i5] << 1) - c);
                        }
                        c = cArr2[i5];
                        i.f68 = i5 + 1;
                    }
                    cArr = cArr2;
                }
                if (i4 > 0) {
                    char[] cArr3 = new char[i2];
                    System.arraycopy(cArr, 0, cArr3, 0, i2);
                    int i6 = i2 - i4;
                    System.arraycopy(cArr3, 0, cArr, i6, i4);
                    System.arraycopy(cArr3, i4, cArr, 0, i6);
                }
                if (z) {
                    char[] cArr4 = new char[i2];
                    i.f68 = 0;
                    while (true) {
                        int i7 = i.f68;
                        if (i7 >= i2) {
                            break;
                        }
                        cArr4[i7] = cArr[(i2 - i7) - 1];
                        i.f68 = i7 + 1;
                    }
                    cArr = cArr4;
                }
                if (i3 > 0) {
                    i.f68 = 0;
                    while (true) {
                        int i8 = i.f68;
                        if (i8 >= i2) {
                            break;
                        }
                        cArr[i8] = (char) (cArr[i8] - iArr[2]);
                        i.f68 = i8 + 1;
                    }
                }
                str2 = new String(cArr);
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            try {
                String userId = this.f5972e.getUserId();
                r.Y(r.this, this.f5972e.getLogLevel());
                String strIntern = b(true, new int[]{0, 12, 3, 0}, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001").intern();
                StringBuilder sb = new StringBuilder();
                sb.append(b(true, new int[]{12, 26, 196, 6}, null).intern());
                sb.append(this.f5973f);
                m.m1026(strIntern, sb.toString());
                id.m828(this.f5974g.getApplicationContext()).m831();
                r.C(r.this, this.f5972e.isTestMode());
                if (this.f5972e.isTestMode()) {
                    m.m1020(b(true, new int[]{0, 12, 3, 0}, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001").intern(), b(false, new int[]{38, 94, 129, 27}, "\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001").intern());
                }
                try {
                    Class.forName(b(true, new int[]{132, 20, 0, 0}, "\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001").intern());
                } catch (Throwable unused) {
                }
                Activity activity = this.h;
                if (activity != null) {
                    jx.m979(activity);
                } else {
                    jx.m984(this.f5974g);
                }
                r.s(r.this).m294(this.f5973f);
                r.s(r.this).m288(this.f5972e.getInitializationSource());
                r.s(r.this).m287(this.f5972e.getCoppa());
                r.s(r.this).m286(this.f5972e.getDeviceIdType());
                r.s(r.this).m295(this.f5972e.getMetaData());
                Context applicationContext = this.f5974g.getApplicationContext();
                r.E(r.this, applicationContext);
                r.H(r.this, new ir(applicationContext));
                r.t(r.this, new ix(applicationContext, r.F(r.this).m301(), "B0r1sW@sH3re"));
                ao.m303().mo324(applicationContext, r.M(r.this), r.F(r.this), new e(), r.a0(r.this));
                r.G(r.this, new iq(applicationContext, r.M(r.this), r.F(r.this).m299()));
                String strM945 = js.m945(applicationContext);
                ao.m303().mo327(new d(strM945));
                ao.m303().mo328(r.q(r.this));
                r.X(r.this, applicationContext);
                r.T(r.this, new ag(applicationContext, r.s(r.this), r.F(r.this), this.h != null, strM945, new b()));
                if (!this.f5972e.isUserIdSet()) {
                    r.s(r.this).m281();
                    userId = r.n(r.this).m261();
                }
                if (r.this.m1037()) {
                    r.n(r.this).m264(new C0354c());
                }
                r.n(r.this).m259(new a());
                r.z(r.this, new ax(r.q(r.this), r.n(r.this), strM945, new at(), new f()));
                r.j(r.this).m373(new g());
                r.x(r.this, new al(r.j(r.this)));
                r.y(r.this, new an(r.n(r.this)));
                String strIntern2 = b(true, new int[]{0, 12, 3, 0}, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001").intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(b(true, new int[]{152, 33, 130, 16}, null).intern());
                sb2.append(r.F(r.this).m300());
                m.m1024(strIntern2, sb2.toString());
                r rVar = r.this;
                Context context = this.h;
                if (context == null) {
                    context = applicationContext;
                }
                r.J(rVar, context, userId);
                r.Q(r.this, applicationContext);
                r.f(r.this);
                r.i(r.this);
            } catch (Throwable th) {
                String strIntern3 = b(false, new int[]{185, 34, 178, 32}, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001").intern();
                jy.m993(b(true, new int[]{0, 12, 3, 0}, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001").intern(), strIntern3, th, true, false, true);
                r.K(r.this, ISAdQualityInitError.EXCEPTION_ON_INIT, strIntern3);
            }
        }
    }

    final class d extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char[] f5983d = {'A', 'd', 'Q', 'u', 'a', 'l', 'i', 't', 'y', 'S', 'D', 'K', 'C', 'n', '\'', ' ', 's', 'e', 'g', 'm', '-', 'I', 'o', 'z', '.'};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static char f5984e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5985f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5986g = 1;
        private /* synthetic */ ISAdQualitySegment h;

        d(ISAdQualitySegment iSAdQualitySegment) {
            this.h = iSAdQualitySegment;
        }

        private static String b(int i, String str, byte b) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                char[] cArr2 = f5983d;
                char c = f5984e;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b);
                }
                if (i > 1) {
                    com.json.adqualitysdk.sdk.i.g.f60 = 0;
                    while (true) {
                        int i2 = com.json.adqualitysdk.sdk.i.g.f60;
                        if (i2 >= i) {
                            break;
                        }
                        com.json.adqualitysdk.sdk.i.g.f58 = cArr[i2];
                        com.json.adqualitysdk.sdk.i.g.f62 = cArr[com.json.adqualitysdk.sdk.i.g.f60 + 1];
                        if (com.json.adqualitysdk.sdk.i.g.f58 == com.json.adqualitysdk.sdk.i.g.f62) {
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b);
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b);
                        } else {
                            com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c;
                            com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c;
                            com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c;
                            com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c;
                            if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                                com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c) - 1) % c;
                                com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c) - 1) % c;
                                int i3 = (com.json.adqualitysdk.sdk.i.g.f59 * c) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i4 = (com.json.adqualitysdk.sdk.i.g.f61 * c) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i5 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                                com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c) - 1) % c;
                                com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c) - 1) % c;
                                int i6 = (com.json.adqualitysdk.sdk.i.g.f59 * c) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i7 = (com.json.adqualitysdk.sdk.i.g.f61 * c) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i8 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (com.json.adqualitysdk.sdk.i.g.f59 * c) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i10 = (com.json.adqualitysdk.sdk.i.g.f61 * c) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i11 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i11] = cArr2[i9];
                                cArr3[i11 + 1] = cArr2[i10];
                            }
                        }
                        com.json.adqualitysdk.sdk.i.g.f60 += 2;
                    }
                }
                str2 = new String(cArr3);
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if ((!r.c(r.this) ? '4' : (char) 21) != 21) {
                int i = f5986g + 61;
                f5985f = i % 128;
                int i2 = i % 2;
                m.m1020(b((ViewConfiguration.getTouchSlop() >> 8) + 12, "\u0001\u0002\u0003\u0004\u0000\t\u0007\b\t\u0005\u000b\f", (byte) (Color.alpha(0) + 62)).intern(), b(55 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), "\u000e\u0002\u000e\n\u0005\u0011\u0011\u0012\u0005\u0011\u0011\u0012\u0013\u000f\u0012\f\u0005\u0011\u0000\u0014\u0018\u0006\u0001\u0002\u0003\u0004\u0000\t\u0007\b\u0005\u0012\u0005\u000e\n\u0010\u000b\u0015\u0012\n\u0002\f\u0010\u0005\u000b\b\b\u0007\u0000\t\b\u0015\u0010\u0002}", (byte) (79 - (ViewConfiguration.getPressedStateDuration() >> 16))).intern());
                return;
            }
            if ((r.b(r.this) != null ? '3' : (char) 14) != 14) {
                r.b(r.this).m302(this.h);
                int i3 = f5985f + 1;
                f5986g = i3 % 128;
                int i4 = i3 % 2;
            }
        }
    }

    final class e extends il {
        e() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (r.a(r.this) != null) {
                r.a(r.this).adQualitySdkInitSuccess();
                r.S(r.this, null);
            }
        }
    }

    final class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            jx.m983(intent);
        }
    }

    final class g extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ISAdQualityInitError f5988d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ String f5989e;

        g(ISAdQualityInitError iSAdQualityInitError, String str) {
            this.f5988d = iSAdQualityInitError;
            this.f5989e = str;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (r.a(r.this) != null) {
                r.a(r.this).adQualitySdkInitFailed(this.f5988d, this.f5989e);
                r.S(r.this, null);
            }
        }
    }

    static {
        k();
        a = null;
        int i = f5960e + 113;
        f5959d = i % 128;
        int i2 = i % 2;
    }

    private r() {
    }

    private synchronized void A(ISAdQualityLogLevel iSAdQualityLogLevel) {
        int i = f5960e + 47;
        int i2 = i % 128;
        f5959d = i2;
        if ((i % 2 != 0 ? (char) 0 : '1') != '1') {
            this.l = iSAdQualityLogLevel;
            int i3 = 32 / 0;
        } else {
            this.l = iSAdQualityLogLevel;
        }
        int i4 = i2 + 55;
        f5960e = i4 % 128;
        if ((i4 % 2 == 0 ? ',' : '-') != '-') {
            int i5 = 78 / 0;
        }
    }

    static /* synthetic */ void B(r rVar) {
        int i = f5960e + 1;
        f5959d = i % 128;
        int i2 = i % 2;
        rVar.L(true);
        int i3 = f5960e + 109;
        f5959d = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 6 : (char) 28) != 6) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void C(r rVar, boolean z) {
        int i = f5960e + 107;
        f5959d = i % 128;
        boolean z2 = i % 2 != 0;
        rVar.Z(z);
        if (z2) {
            throw null;
        }
    }

    private synchronized void D(boolean z) {
        int i = f5959d + 97;
        f5960e = i % 128;
        if (i % 2 == 0) {
        }
        this.f5962g = true;
    }

    static /* synthetic */ Context E(r rVar, Context context) {
        int i = f5960e;
        int i2 = i + 23;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        rVar.m = context;
        int i4 = i + 31;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
        return context;
    }

    static /* synthetic */ am F(r rVar) {
        int i = f5960e + 109;
        f5959d = i % 128;
        boolean z = i % 2 != 0;
        am amVar = rVar.n;
        if (z) {
            throw null;
        }
        return amVar;
    }

    static /* synthetic */ iq G(r rVar, iq iqVar) {
        int i = f5960e + 55;
        int i2 = i % 128;
        f5959d = i2;
        int i3 = i % 2;
        rVar.t = iqVar;
        int i4 = i2 + 19;
        f5960e = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return iqVar;
    }

    static /* synthetic */ ir H(r rVar, ir irVar) {
        int i = f5959d + 45;
        int i2 = i % 128;
        f5960e = i2;
        char c2 = i % 2 == 0 ? '5' : '+';
        rVar.q = irVar;
        if (c2 != '+') {
            int i3 = 91 / 0;
        }
        int i4 = i2 + 23;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
        return irVar;
    }

    private void I(Application application, String str, ISAdQualityConfig iSAdQualityConfig) {
        int i = f5959d + 9;
        f5960e = i % 128;
        int i2 = i % 2;
        u(application, null, str, iSAdQualityConfig);
        int i3 = f5960e + 55;
        f5959d = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ void J(r rVar, Context context, String str) {
        int i = f5960e + 103;
        f5959d = i % 128;
        if ((i % 2 != 0 ? (char) 20 : '>') != '>') {
            rVar.P(context, str, true, true, true);
        } else {
            rVar.P(context, str, true, false, true);
        }
        int i2 = f5960e + 53;
        f5959d = i2 % 128;
        if (i2 % 2 == 0) {
            return;
        }
        int i3 = 22 / 0;
    }

    static /* synthetic */ void K(r rVar, ISAdQualityInitError iSAdQualityInitError, String str) {
        int i = f5959d + 79;
        f5960e = i % 128;
        char c2 = i % 2 == 0 ? '5' : 'b';
        rVar.W(iSAdQualityInitError, str);
        if (c2 == 'b') {
        } else {
            throw null;
        }
    }

    private synchronized void L(boolean z) {
        int i = f5959d + 45;
        f5960e = i % 128;
        try {
            if (!(i % 2 != 0)) {
                m1036();
                throw null;
            }
            if (m1036()) {
                m.m1020(N(12 - TextUtils.getOffsetBefore("", 0), (char) (Color.red(0) + 2131), View.MeasureSpec.getSize(0) + 74).intern(), N(36 - Color.blue(0), (char) (39326 - TextUtils.getOffsetBefore("", 0)), (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS).intern());
                int i2 = f5960e + 91;
                f5959d = i2 % 128;
                int i3 = i2 % 2;
                return;
            }
            if (!o()) {
                int i4 = f5960e + 109;
                f5959d = i4 % 128;
                int i5 = i4 % 2;
                m.m1020(N((ViewConfiguration.getTouchSlop() >> 8) + 12, (char) (2131 - (ViewConfiguration.getJumpTapTimeout() >> 16)), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 74).intern(), N(58 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) (21988 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)), 378 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern());
                return;
            }
            String strIntern = N(28 - TextUtils.indexOf("", "", 0), (char) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 437 - (ViewConfiguration.getWindowTouchSlop() >> 8)).intern();
            if (z) {
                StringBuilder sb = new StringBuilder();
                sb.append(strIntern);
                sb.append(N((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 24, (char) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) - 1), 465 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern());
                strIntern = sb.toString();
            }
            m.m1024(N(13 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 2130), 74 - (ViewConfiguration.getMinimumFlingVelocity() >> 16)).intern(), strIntern);
            W(ISAdQualityInitError.AD_QUALITY_SDK_WAS_SHUTDOWN, strIntern);
            this.i = true;
            ao.m303().mo307();
            id.m828(this.m).m830();
            this.o.m367();
            this.q.m853();
            this.r.m262();
            hq.m769();
        } catch (Exception e2) {
            jy.m993(N(12 - (ViewConfiguration.getScrollDefaultDelay() >> 16), (char) (Color.rgb(0, 0, 0) + 16779347), Process.getGidForName("") + 75).intern(), N(TextUtils.getOffsetBefore("", 0) + 19, (char) (KeyEvent.keyCodeFromString("") + 64365), Gravity.getAbsoluteGravity(0, 0) + 489).intern(), (Throwable) e2, true, false, true);
        }
    }

    static /* synthetic */ ir M(r rVar) {
        int i = f5960e;
        int i2 = i + 5;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        ir irVar = rVar.q;
        int i4 = i + 7;
        f5959d = i4 % 128;
        if (i4 % 2 == 0) {
            return irVar;
        }
        int i5 = 20 / 0;
        return irVar;
    }

    private static String N(int i, char c2, int i2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) b[i2 + i3]) ^ (((long) i3) * c)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private void O(Context context) {
        String strM879;
        int i = f5959d + 59;
        f5960e = i % 128;
        if (!(i % 2 == 0)) {
            strM879 = this.s.m879(N(TextUtils.getTrimmedLength("") + 10, (char) (TextUtils.getOffsetBefore("", 0) + 62860), 940 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern());
            if (TextUtils.isEmpty(strM879)) {
                return;
            }
        } else {
            strM879 = this.s.m879(N(79 >>> TextUtils.getTrimmedLength(""), (char) (62860 % TextUtils.getOffsetBefore("", 0)), 4164 >>> (AudioTrack.getMinVolume() > 2.0f ? 1 : (AudioTrack.getMinVolume() == 2.0f ? 0 : -1))).intern());
            if (TextUtils.isEmpty(strM879)) {
                return;
            }
        }
        new ix(context, N(26 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) View.MeasureSpec.makeMeasureSpec(0, 0), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 950).intern(), N(((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.EM, (char) (1351 - TextUtils.lastIndexOf("", '0')), 975 - Color.argb(0, 0, 0, 0)).intern()).m874(N((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 10, (char) (62860 - KeyEvent.normalizeMetaState(0)), (Process.myPid() >> 22) + 940).intern(), strM879);
        this.s.m873(N(10 - View.MeasureSpec.getMode(0), (char) (62859 - ImageFormat.getBitsPerPixel(0)), 940 - Drawable.resolveOpacity(0, 0)).intern());
        int i2 = f5959d + 63;
        f5960e = i2 % 128;
        int i3 = i2 % 2;
    }

    private void P(Context context, String str, boolean z, boolean z2, boolean z3) {
        int i;
        String strM293 = l().m293();
        l().m292(str);
        if ((str == null ? '\\' : 'C') != '\\') {
            if (str.equals(N(17 - (KeyEvent.getMaxKeyCode() >> 16), (char) (35766 - Color.argb(0, 0, 0, 0)), (Process.myTid() >> 22) + 773).intern())) {
                String strIntern = N(Color.blue(0) + 12, (char) (2132 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 74).intern();
                StringBuilder sb = new StringBuilder();
                sb.append(N(View.combineMeasuredStates(0, 0) + 40, (char) (39533 - KeyEvent.keyCodeFromString("")), AndroidCharacter.getMirror('0') + 742).intern());
                sb.append(str);
                sb.append(N(78 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (char) Color.blue(0), ((byte) KeyEvent.getModifierMetaStateMask()) + 831).intern());
                m.m1020(strIntern, sb.toString());
                i = f5959d + 41;
            } else {
                String strIntern2 = N(((Process.getThreadPriority(0) + 20) >> 6) + 12, (char) (2132 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), 75 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))).intern();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(N(34 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (25675 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))), Color.red(0) + 907).intern());
                sb2.append(str);
                m.m1026(strIntern2, sb2.toString());
                i = f5959d + 63;
            }
            f5960e = i % 128;
            int i2 = i % 2;
        } else {
            m.m1020(N((ViewConfiguration.getKeyRepeatDelay() >> 16) + 12, (char) (View.MeasureSpec.getSize(0) + 2131), (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 73).intern(), N(92 - Process.getGidForName(""), (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 1), Drawable.resolveOpacity(0, 0) + 680).intern());
        }
        ao.m303().mo323(context, l(), true);
        if (z) {
            this.o.m368(context, new a(z2, strM293, z3));
        }
    }

    static /* synthetic */ void Q(r rVar, Context context) {
        int i = f5960e + 71;
        f5959d = i % 128;
        boolean z = i % 2 != 0;
        rVar.V(context);
        if (!z) {
            return;
        }
        int i2 = 46 / 0;
    }

    private boolean R(String str) {
        if ((m1036() ? '0' : 'I') != 'I') {
            int i = f5959d + 9;
            f5960e = i % 128;
            int i2 = i % 2;
            m.m1020(N(MotionEvent.axisFromString("") + 13, (char) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 2131), 74 - TextUtils.getTrimmedLength("")).intern(), N(52 - Drawable.resolveOpacity(0, 0), (char) (51032 - TextUtils.indexOf("", "", 0)), TextUtils.lastIndexOf("", '0', 0, 0) + 530).intern());
            return false;
        }
        if ((!o() ? (char) 28 : '1') != '1') {
            m.m1020(N(12 - View.combineMeasuredStates(0, 0), (char) (TextUtils.getTrimmedLength("") + 2131), (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 74).intern(), N(64 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) (Process.myTid() >> 22), (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 580).intern());
            return false;
        }
        if ((TextUtils.isEmpty(str) ? (char) 16 : '$') != 16) {
            return true;
        }
        int i3 = f5960e + 53;
        f5959d = i3 % 128;
        int i4 = i3 % 2;
        m.m1020(N((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 13, (char) (2131 - (ViewConfiguration.getDoubleTapTimeout() >> 16)), 75 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))).intern(), N(34 - Color.alpha(0), (char) (37998 - TextUtils.lastIndexOf("", '0', 0, 0)), 646 - KeyEvent.keyCodeFromString("")).intern());
        int i5 = f5959d + 7;
        f5960e = i5 % 128;
        int i6 = i5 % 2;
        return false;
    }

    static /* synthetic */ ISAdQualityInitListener S(r rVar, ISAdQualityInitListener iSAdQualityInitListener) {
        int i = f5959d;
        int i2 = i + 87;
        f5960e = i2 % 128;
        boolean z = i2 % 2 != 0;
        rVar.u = iSAdQualityInitListener;
        if (!z) {
            int i3 = 31 / 0;
        }
        int i4 = i + 39;
        f5960e = i4 % 128;
        int i5 = i4 % 2;
        return iSAdQualityInitListener;
    }

    static /* synthetic */ ag T(r rVar, ag agVar) {
        int i = f5960e;
        int i2 = i + 15;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        rVar.r = agVar;
        int i4 = i + 31;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
        return agVar;
    }

    private void U(Activity activity, String str, ISAdQualityConfig iSAdQualityConfig) {
        int i = f5959d + 27;
        f5960e = i % 128;
        int i2 = i % 2;
        u(activity.getApplication(), activity, str, iSAdQualityConfig);
        int i3 = f5960e + 35;
        f5959d = i3 % 128;
        if ((i3 % 2 != 0 ? b4.R : 'I') == 'I') {
        } else {
            throw null;
        }
    }

    private void V(Context context) {
        context.registerReceiver(new f(), new IntentFilter(N(37 - (ViewConfiguration.getTouchSlop() >> 8), (char) (5191 - Gravity.getAbsoluteGravity(0, 0)), 1107 - Color.argb(0, 0, 0, 0)).intern()), null, t.m1045());
        int i = f5960e + 41;
        f5959d = i % 128;
        int i2 = i % 2;
    }

    private void W(ISAdQualityInitError iSAdQualityInitError, String str) {
        t.m1046(new g(iSAdQualityInitError, str));
        int i = f5959d + 35;
        f5960e = i % 128;
        int i2 = i % 2;
    }

    static /* synthetic */ void X(r rVar, Context context) {
        int i = f5959d + 79;
        f5960e = i % 128;
        boolean z = i % 2 == 0;
        rVar.O(context);
        if (z) {
            int i2 = 17 / 0;
        }
    }

    static /* synthetic */ void Y(r rVar, ISAdQualityLogLevel iSAdQualityLogLevel) {
        int i = f5959d + 63;
        f5960e = i % 128;
        boolean z = i % 2 == 0;
        rVar.A(iSAdQualityLogLevel);
        if (!z) {
        } else {
            throw null;
        }
    }

    private synchronized void Z(boolean z) {
        int i = f5959d + 97;
        int i2 = i % 128;
        f5960e = i2;
        if ((i % 2 == 0 ? (char) 0 : (char) 30) == 0) {
            this.j = z;
            throw null;
        }
        this.j = z;
        int i3 = i2 + 9;
        f5959d = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ ISAdQualityInitListener a(r rVar) {
        int i = f5960e;
        int i2 = i + 73;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        ISAdQualityInitListener iSAdQualityInitListener = rVar.u;
        int i4 = i + 49;
        f5959d = i4 % 128;
        if (i4 % 2 == 0) {
            return iSAdQualityInitListener;
        }
        int i5 = 2 / 0;
        return iSAdQualityInitListener;
    }

    static /* synthetic */ boolean a0(r rVar) {
        int i = f5960e + 11;
        f5959d = i % 128;
        char c2 = i % 2 != 0 ? (char) 22 : ';';
        boolean zR = rVar.r();
        if (c2 != ';') {
            int i2 = 61 / 0;
        }
        int i3 = f5959d + 59;
        f5960e = i3 % 128;
        int i4 = i3 % 2;
        return zR;
    }

    static /* synthetic */ an b(r rVar) {
        int i = f5959d + 55;
        f5960e = i % 128;
        char c2 = i % 2 == 0 ? '>' : (char) 29;
        an anVar = rVar.w;
        if (c2 != 29) {
            int i2 = 83 / 0;
        }
        return anVar;
    }

    static /* synthetic */ boolean c(r rVar) {
        int i = f5960e + 11;
        f5959d = i % 128;
        if (!(i % 2 == 0)) {
            rVar.o();
            throw null;
        }
        boolean zO = rVar.o();
        int i2 = f5960e + 65;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        return zO;
    }

    static /* synthetic */ ix d(r rVar) {
        int i = f5960e;
        int i2 = i + 17;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        ix ixVar = rVar.s;
        int i4 = i + 109;
        f5959d = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return ixVar;
        }
        int i5 = 19 / 0;
        return ixVar;
    }

    private void e() {
        t.m1046(new e());
        int i = f5959d + 17;
        f5960e = i % 128;
        if (!(i % 2 == 0)) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void f(r rVar) {
        int i = f5959d + 85;
        f5960e = i % 128;
        int i2 = i % 2;
        rVar.D(true);
        int i3 = f5959d + 65;
        f5960e = i3 % 128;
        int i4 = i3 % 2;
    }

    private synchronized boolean g() {
        boolean z;
        int i = f5960e + 49;
        int i2 = i % 128;
        f5959d = i2;
        int i3 = i % 2;
        z = this.h;
        int i4 = i2 + 27;
        f5960e = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 3 : (char) 28) == 3) {
            throw null;
        }
        return z;
    }

    static /* synthetic */ ISAdQualityAdListener h(r rVar) {
        int i = f5960e + 17;
        int i2 = i % 128;
        f5959d = i2;
        int i3 = i % 2;
        ISAdQualityAdListener iSAdQualityAdListener = rVar.p;
        int i4 = i2 + 51;
        f5960e = i4 % 128;
        if ((i4 % 2 == 0 ? 'G' : '1') == '1') {
            return iSAdQualityAdListener;
        }
        int i5 = 70 / 0;
        return iSAdQualityAdListener;
    }

    static /* synthetic */ void i(r rVar) {
        int i = f5960e + 25;
        f5959d = i % 128;
        int i2 = i % 2;
        rVar.w(false);
        int i3 = f5959d + 89;
        f5960e = i3 % 128;
        if (!(i3 % 2 == 0)) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ ax j(r rVar) {
        int i = f5960e;
        int i2 = i + 125;
        f5959d = i2 % 128;
        char c2 = i2 % 2 != 0 ? '#' : ';';
        ax axVar = rVar.o;
        if (c2 == '#') {
            throw null;
        }
        int i3 = i + 37;
        f5959d = i3 % 128;
        int i4 = i3 % 2;
        return axVar;
    }

    static void k() {
        char[] cArr = new char[1386];
        ByteBuffer.wrap("\u0000I<)xµµ\nñ¹.\u0017j½§:ã¹ >\\½\u0099mÕü\u0012yN\u0082\u008bOÇÎ\u0004s@à}g¹éön2\u0015n\u008c«\u0015çÊ$\u0007`±\u009d6Ù¦\u0016)R¾\u008f4Ë\u009a\bUDÜ\u0081O½\u0082úq6ãsc¯þì$(\u001cd\u009d¡RÝ\u0083\u001a\u0000VÀ\u0093.Ï\u00ad\f>H\u00ad\u0085bÁýþU:ÄwC³Òðw,ìik¥£âG\u001eðZ\u008a\u0097\u0018Ó\u0087\u0010\u000bL\u0083\u0089(Å¿\u0002?>¤\b\u00124Mpö½HùÚ&]bæ¯qëú(JTÓ\u0091&\r\u009d1ýua¸Þüm#Ãgiªîîm-êQi\u0094¹Ø(\u001f\u00adCV\u0086\u009bÊ\u001a\t§M4p³´=ûº?ÁcX¦Áê\u001e)Ñmf\u0090þÔc\u001bù_v\u0082íÆN\u0005\u0083I\u001b\u008c\u0090°\u001a÷\u00ad;&&»\u001aÛ^G\u0093ø×K\båLO\u0081ÈÅK\u0006ÌzO¿ìó\u00194\u0084h\u0015\u00adôá;\"\u0086f\u000f[\u0088\u009f\u0013Ð\u0091\u0014âHm\u008døÁ}\u0002¶FA»ÏÿT0Öt[©Öíh.¥b=§´\u009bpÜ\u008c\u0010\u0001UÂ\u0089\u001dÊ\u008e\u000eéBi\u0087õûj<ñpvµ\u0088éI*ÒnV£ÉçnØ«\u001c,Q»\u00953\u0000C<\u001bx\u009aµIñ\u009c.Bjµ§8ã¹ >\\\u00ad\u0099_ÕÔ\u0012[NÖ\u008bCÇ\u0080\u00047@´}G¹ÛöC2\u0018n§«\u0005ç\u008b$\b`·\u009d,Ù«\u0016lR\u0095\u008f\u0004Ëñ\b\u0014DÙ\u0081I½Ñú<6åsx¯ÿìp(\u001ad\u0097¡\u0005Ý\u0082\u001aH\u0000C<\u001bx\u009aµIñ\u009c.Bjµ§8ã¹ >\\\u00ad\u0099_ÕÔ\u0012[NÖ\u008bCÇ\u0080\u0004S@Ç}O¹ìöS2\tn\u0097«\u001cç\u0083$\u0010`§\u009dxÙ\u0081\u0016\bR\u008d\u008f`ËÍ\b]DÚ\u0081@½\u0082úr6ãs|¯æì$(\u0011d\u008a¡RÝ\u0089\u001a\u000bV\u0090\u0093.Ï\u00ad\fnH½\u00851ÁÙþD:\u0090wC³Àð02\u0018\u000e@JÁ\u0087\u0012ÃÇ\u001c\u0019Xî\u0095cÑâ\u0012enö«\u0004ç\u008f \u0000|\u008d¹\u0018õÛ6lrïO4\u008b£Ä)\u0000l\\È\u0099RÕ\u0091\u0016\\Rä¯më®$c`½½yù\u0084:Ov\u009b³\u0006\u008f\u0095È+\u0004íA$\u009d£Þ\u007f\u001a@VÎ\u0093YïÃ(Dd\u0095\u0099×¥·á+,\u0094h'·\u0089ó#>¤z'¹ Å#\u0000óLb\u008bç×\u0012\u0012Ï^_\u009d÷Ù*äñ zoî«\u0087÷\t2\u008a~\r½Úù3\u0004®@9\u008f¦Ë<\u0016±RS\u0091ÄÝ\u001eU¬iÌ-Pàï¤\\{ò?Xòß¶\\uÛ\tXÌ\u0088\u0080\u0019G\u009c\u001biÞ´\u0092$Q\u008c\u0015Q(\u0085ì\b£\u0091gü;aþµ²fqï5RÈÉ\u008c^CÈ\u0007OÚÌ\u009e%]´\u0011/Ôíèj¯Ùc\u001d&\u009aúO¹\u008f}þ1xôó\u0088)O÷\u0003jÆ\u009f\u009aBYÃ\u001dXÐÓ\u0094=«¼o\"\"¡æo\u0000I<)xµµ\nñ¹.\u0017j½§:ã¹ >\\½\u0099\u001eÕë\u0012vNç\u008b\u0006Ç×\u0004{@ç}.¹ûöj2\tn\u0082«\u0014ç\u0085$\u0013`°\u0000 <\u001cx\u0086µ\u0001ñ\u0085.Bj\u009d§2ã\u0081 ?\\¥\u0099RÕÑ\u0012FNÕ\u008b\u0006ÇÐ\u0004v@õ}z¹îöm2\u000en\u009bû(Çe\u0083ëNl\n÷Õ/\u0091Â\\S\u0018ÈÛS§Ýb:.»é8µáp/<¢ÿ\u0000»\u0097\u001f\u001d#PgÞªYîÂ1\u001au÷¸küü?fCõ\u0086\bÊ\u0087\rJQ\u0081\u0094\rØ\u009d\u001b0_\u0085b2¦ðÇ\u001bûC¿Âr\u00116Äé\u001a\u00adç`f$éç|\u009bû^\u0003\u0012ÀÕ\u001f\u0089\u0087L\u001b\u0000\u008aÃb\u0087¥º2~ð1wõ\u0004©çl{ óãX§×Zu\u001eëÑx\u0095÷Hl\f\u009bÏL\u0083¥F4z±=dñ¹´)h¡+|ïU£Èf_\u001aÀÝZ\u0091×Tu\bâË8\u0000Y<\u0015x\u0081µNñ\u0085.\u0017j¯§\"ãð #\\ª\u0099WÕÌ\u0012[NÍ\u008bJÇÉ\u0004`@ñ}.¹ÁöQ2=n\u0092«!ç\u009f$\u0005`²\u009d1Ù¦\u00165Ræ\u008f\u0013Ëþ\b\u007fD\u008e\u0081J½Çúz6ùsb¯ïì$(\u001dd\u0099¡\u001eÝ\u0080\u001a\u000fV\u008e\u0093=Ïô\fiH«\u0085*ÁÝþX:×wO³ñðm,ýi`¥Åâb\u001e§\u0094!¨pìì!!eòº~þÖ3Kw\u009f´LÈÏ\rqA´\u0086<Ú\u00ad\u001fnS»\u0090UÔ\u0099é\u0004-Çb\u0003¦fúõ?ss¥°dôÃ\t\u0017MØ\u0082NÆÙ\u001b[_¬\u0000E<(x¦µ!ñº.Cjü§#ã£ /\\¶\u0099\u001eÕñ\u0012vN\u008c\u008bOÇÓ\u0004:@ú}{¹äön2RnÖ« ç\u0086$\u0001`¿\u009d+Ù·\u0016lR«\u008f!ËÑ\bQD\u008e\u0081[½×ún6ós0¯þìk(^d\u0088¡\u0013Ý\u009f\u001a\u0015VÀ\u0093;Ïô\f8H©\u0085.ÁÕþR:\u0090wD³Ëðp,µi|¥ùâj\u001eìZÚ\u0097\u0001Ó\u009d\u0010\rL\u0090\u0089|Å\u009f\u0002\u0014>ê{0·Ñô\u00180ûm\u007f©çæD\"Ë_a\u009bïØd\u0014ëP\u0088\u008d\u000fÉÐ\u00069B \u007f\u0015»ö\u008b×·¢ó;>¬z6¥½á\u0004,\u0087hK«\u0085×\u001d\u0012ý^#\u0099óÅ{\u0000þLb\u009a(¦EâË/Lk×´.ð\u0091=byÒºRÆ\u008e\u0003!O°\u0088\u007fÔ´\u00118]¤\u009e\u0019Ú\u009eçC#\u0091l\u0007¨tô»1y}â¾oúÒ\u0007@CÓ\u008cUÈ\u008b\u0015XQ¤\u0092<Þ±\u001be'\u0086`5¬Û\u0000.<Zx¤µ\u0002ñ\u008d.\u0003j¯§3ãð '\\¥\u0099UÕÝ\u0012\u0012Nß\u008bSÇÒ\u0004\u007f@´}z¹çö\"2\fn\u0097«\u0003ç\u0099$D`¿\u009dxÙ§\u0016\"R¯\u008f1ËÏ\bQD\u008e\u0081]½Ñúy6äs0¯Ãì@(^d\u009e¡\u001dÝ\u009e\u001aFV\u0085\u0093;Ï·\f&Hè\u00857ÁÏþS:Âw\n³Ððq,¸i[¥ßâG\u001eäZ«\u0097\u0001Ó\u008f\u0010\u0004L\u008b\u0089(Å¯\u0002p>\u0099{\u0000·õô\u0016d\u0015XY\u001cÍÑP\u0095\u0084Jg\u000eÃÃ[\u0087øDW8ýý\u0013±\u0098v\u0017*\u0094ï\u0013£Ì`\u0005$\u009c\u0019\tÝä\u0092;VC\nßÏN\u0083\u0086@a\u0004Öù4½÷rs6°ë,õåÉ\u0098\u008d\f@Ì\u0004\u0017Û\u008b\u009f#R©\u0016\u0015Õ¢\u0000t<\bx\u0095µ\rñ\u008d.\u0000j½§5ã» d\\¯\u0099HÕ\u0096\u0012VNÎ\u008b\bÇÁ\u0004t@õ}b¹ñöv2\u0015n\u0095«\u0003\u0005;9]}Ó°KôÌ+Ko¹¢mæý%aYþ\u009c\u0013Ð\u0084\u0017WKÐ\u008e\u000fÂ\u0086\u00013E°x?¼´ó#7WkÍ\u0000C<\u001bx\u009aµIñ\u009c.Bj¯§3ã¤ j\\\u00ad\u0099PÕÌ\u0012WNÞ\u008bHÇÁ\u0004v@´}z¹íöq2\bnÖ«\u001dç\u0085$\u0000`»\u009dxÙÿ\u0016lR\u008f\u008f\u0013Ëû\bPDÿ\u0081]½Ãúp6ÿsd¯óì$(-d¼¡9ÝÌ\u001a\u0011V\u0081\u0093)Ïô\f=H \u00857ÁÈþR:ßw]³Êð0\u0000M<\u000fx\u0087µ\u001añÈ.\u0011j¹§\"ãð #\\ª\u0099JÕÝ\u0012@NÂ\u008bGÇÌ\u0004:@à}k¹ûöv2\\n\u009b«\u001fç\u008e$\u0001`þ\u009d:Ù·\u0016*R©\u008f2Ëß\b\u0014DÇ\u0081F½Ëúh6ÿsq¯æìm(\u0004d\u0091¡\u001cÝ\u008b\u001aG\u0014&(Sl×¡[åÀ:L~ÿ³?÷þ4cH÷\u008d\u001cÁ\u0091\u0006\u0001ZÅ\u009f\u0000Ó\u0084\u0010)Tºi&\u00ad¡âk&yzð¿cóù0ftË\u0089FÍÊ\u0002HFÉ\u009bFß³\u001c4P¬\u0095+#à\u001f¸[9\u0096êÒ?\ráI\f\u0084\u0090À\u0007\u0003É\u007f\u0006ºùö;1ýmf¨öäw'ÜcY^È\u009aYÕ\u0081\u0011òMu\u0088\u009aÄ\u001a\u0007\u0086C\u0019¾ªú\u00045\u008eq\t¬\u008aèm+îg-¢Ø\u009eEÙô\u0015\u0015PÄ\u008cHÏÔ\u000býG(\u0082¹þ:9±u'°\u0096ì\u0000/\u0083kE\u0000C<\u001bx\u009aµIñ\u009c.Bj¯§3ã¾ .\\ä\u0099]ÕÍ\u0012ANØ\u008bIÇÍ\u0004:@ù}k¹ìök2\u001dn\u0082«\u0019ç\u0085$\n`þ\u009d*Ù·\u0016:R£\u008f.ËÏ\bQD\u008e\u0081\u0005½\u0082úU6ÅsQ¯îìU(\u000bd\u0099¡\u001eÝ\u0085\u001a\u0012V\u0099\u0093zÏ\u0087\f\nH\u0083\u0085bÁËþW:Ãw\n³×ðv,íif¥èâi\u001e÷Z\u0094\u0097Z\u0000C<\u001bx\u009aµIñ\u009c.Bj¯§3ã¾ .\\ä\u0099]ÕÍ\u0012ANØ\u008bIÇÍ\u0004:@ù}k¹ìök2\u001dn\u0082«\u0019ç\u0085$\n`þ\u009d*Ù·\u0016:R£\u008f.ËÏ\bQD\u008e\u0081\u0005½\u0082úU6ÅsQ¯îìU(\u000bd\u0099¡\u001eÝ\u0085\u001a\u0012V\u0099\u0093zÏ\u0087\f\nH\u0083\u0085bÁÕþE:\u0090wD³Ëðj,¸i{¥ââo\u001eôZ\u0093\u0097\u0015Ó\u0082\u0010\u0001L\u0098\u00899Å²\u0002~\u0000C<\u001bx\u009aµIñ\u009c.Bj¯§3ã¤ j\\·\u0099[Õß\u0012_NÉ\u008bHÇÔ\u0004:@¹}.¹ÁöQ2=n\u0092«!ç\u009f$\u0005`²\u009d1Ù¦\u00165Ræ\u008f\u0013Ëþ\b\u007fD\u008e\u0081_½Ãúo6¶sc¯âìq(\nd\u009c¡\u001dÝ\u009b\u001a\bVÎ".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1386);
        b = cArr;
        c = -7009500586331390854L;
    }

    private synchronized ak l() {
        ak akVar;
        int i = f5960e;
        int i2 = i + 73;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        akVar = this.f5961f;
        int i4 = i + 69;
        f5959d = i4 % 128;
        if ((i4 % 2 != 0 ? 'W' : 'X') != 'X') {
            throw null;
        }
        return akVar;
    }

    static /* synthetic */ void m(r rVar) {
        int i = f5959d + 35;
        f5960e = i % 128;
        boolean z = i % 2 == 0;
        rVar.e();
        if (z) {
            int i2 = 73 / 0;
        }
        int i3 = f5960e + 65;
        f5959d = i3 % 128;
        int i4 = i3 % 2;
    }

    static /* synthetic */ ag n(r rVar) {
        int i = f5960e + 19;
        f5959d = i % 128;
        boolean z = i % 2 == 0;
        ag agVar = rVar.r;
        if (z) {
            return agVar;
        }
        throw null;
    }

    private synchronized boolean o() {
        boolean z;
        int i = f5960e;
        int i2 = i + 113;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        z = this.f5962g;
        int i4 = i + 53;
        f5959d = i4 % 128;
        if ((i4 % 2 != 0 ? 'N' : '$') == 'N') {
            throw null;
        }
        return z;
    }

    static /* synthetic */ Context p(r rVar) {
        int i = f5959d + 53;
        int i2 = i % 128;
        f5960e = i2;
        int i3 = i % 2;
        Context context = rVar.m;
        int i4 = i2 + 125;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
        return context;
    }

    static /* synthetic */ iq q(r rVar) {
        int i = f5960e + 17;
        int i2 = i % 128;
        f5959d = i2;
        int i3 = i % 2;
        iq iqVar = rVar.t;
        int i4 = i2 + 65;
        f5960e = i4 % 128;
        int i5 = i4 % 2;
        return iqVar;
    }

    private synchronized boolean r() {
        boolean z;
        int i = f5960e;
        int i2 = i + 105;
        f5959d = i2 % 128;
        int i3 = i2 % 2;
        z = this.j;
        int i4 = i + 121;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
        return z;
    }

    static /* synthetic */ ak s(r rVar) {
        int i = f5959d + 73;
        f5960e = i % 128;
        int i2 = i % 2;
        ak akVarL = rVar.l();
        int i3 = f5960e + 113;
        f5959d = i3 % 128;
        if (i3 % 2 == 0) {
            return akVarL;
        }
        int i4 = 84 / 0;
        return akVarL;
    }

    static /* synthetic */ ix t(r rVar, ix ixVar) {
        int i = f5960e + 5;
        f5959d = i % 128;
        boolean z = i % 2 != 0;
        rVar.s = ixVar;
        if (z) {
            throw null;
        }
        return ixVar;
    }

    private void u(Application application, Activity activity, String str, @Nullable ISAdQualityConfig iSAdQualityConfig) {
        String strIntern = N(12 - View.combineMeasuredStates(0, 0), (char) (KeyEvent.getDeadChar(0, 0) + 2131), (ViewConfiguration.getLongPressTimeout() >> 16) + 74).intern();
        if (iSAdQualityConfig == null) {
            iSAdQualityConfig = new ISAdQualityConfig.Builder().build();
        }
        ISAdQualityConfig iSAdQualityConfig2 = iSAdQualityConfig;
        if (g()) {
            String strIntern2 = N(Gravity.getAbsoluteGravity(0, 0) + 40, (char) (3540 - (ViewConfiguration.getEdgeSlop() >> 16)), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 86).intern();
            m.m1024(strIntern, strIntern2);
            v(iSAdQualityConfig2.getAdQualityInitListener(), ISAdQualityInitError.AD_QUALITY_ALREADY_INITIALIZED, strIntern2);
            return;
        }
        if (o()) {
            String strIntern3 = N(59 - TextUtils.getTrimmedLength(""), (char) (9970 - Color.alpha(0)), Process.getGidForName("") + 127).intern();
            m.m1024(strIntern, strIntern3);
            v(iSAdQualityConfig2.getAdQualityInitListener(), ISAdQualityInitError.AD_QUALITY_ALREADY_INITIALIZED, strIntern3);
            return;
        }
        if ((m1036() ? (char) 18 : '\t') == 18) {
            int i = f5959d + 95;
            f5960e = i % 128;
            int i2 = i % 2;
            String strIntern4 = N((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 48, (char) Gravity.getAbsoluteGravity(0, 0), 185 - TextUtils.getOffsetAfter("", 0)).intern();
            m.m1020(strIntern, strIntern4);
            v(iSAdQualityConfig2.getAdQualityInitListener(), ISAdQualityInitError.AD_QUALITY_SDK_WAS_SHUTDOWN, strIntern4);
            return;
        }
        if ((TextUtils.isEmpty(iSAdQualityConfig2.getUserId()) ? '\"' : (char) 22) == '\"') {
            int i3 = f5959d + 43;
            f5960e = i3 % 128;
            int i4 = i3 % 2;
            if (iSAdQualityConfig2.isUserIdSet()) {
                String strIntern5 = N(Color.rgb(0, 0, 0) + 16777276, (char) (ViewConfiguration.getDoubleTapTimeout() >> 16), (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 233).intern();
                m.m1020(strIntern, strIntern5);
                v(iSAdQualityConfig2.getAdQualityInitListener(), ISAdQualityInitError.ILLEGAL_USER_ID, strIntern5);
                return;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            this.u = iSAdQualityConfig2.getAdQualityInitListener();
            w(true);
            jb.m899().mo900(application, activity);
            iy.m886().m888();
            ja.m895().m897();
            t.m1044(new c(iSAdQualityConfig2, str, application, activity));
            return;
        }
        int i5 = f5960e + 7;
        f5959d = i5 % 128;
        int i6 = i5 % 2;
        String strIntern6 = N(ImageFormat.getBitsPerPixel(0) + 50, (char) (Color.argb(0, 0, 0, 0) + 12891), 293 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern();
        m.m1020(strIntern, strIntern6);
        v(iSAdQualityConfig2.getAdQualityInitListener(), ISAdQualityInitError.ILLEGAL_APP_KEY, strIntern6);
    }

    private void v(ISAdQualityInitListener iSAdQualityInitListener, ISAdQualityInitError iSAdQualityInitError, String str) {
        t.m1046(new b(iSAdQualityInitListener, iSAdQualityInitError, str));
        int i = f5959d + 19;
        f5960e = i % 128;
        int i2 = i % 2;
    }

    private synchronized void w(boolean z) {
        int i = f5960e + 31;
        int i2 = i % 128;
        f5959d = i2;
        int i3 = i % 2;
        this.h = z;
        int i4 = i2 + 107;
        f5960e = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ al x(r rVar, al alVar) {
        int i = f5960e + 57;
        f5959d = i % 128;
        char c2 = i % 2 != 0 ? (char) 14 : 'F';
        rVar.v = alVar;
        if (c2 != 14) {
            return alVar;
        }
        throw null;
    }

    static /* synthetic */ an y(r rVar, an anVar) {
        int i = f5959d + 75;
        f5960e = i % 128;
        char c2 = i % 2 == 0 ? '.' : '\f';
        rVar.w = anVar;
        if (c2 == '.') {
            int i2 = 2 / 0;
        }
        return anVar;
    }

    static /* synthetic */ ax z(r rVar, ax axVar) {
        int i = f5959d + 45;
        int i2 = i % 128;
        f5960e = i2;
        int i3 = i % 2;
        rVar.o = axVar;
        int i4 = i2 + 77;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
        return axVar;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static r m1033() {
        synchronized (r.class) {
            if (a == null) {
                a = new r();
            }
        }
        return a;
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    public void changeUserId(String str) {
        int i = f5960e + 75;
        f5959d = i % 128;
        int i2 = i % 2;
        try {
            if (R(str)) {
                boolean z = !str.equals(l().m293());
                boolean zMo903 = jb.m899().mo903();
                if ((z ? 'a' : '<') != '<') {
                    if (zMo903) {
                        int i3 = f5960e + 85;
                        f5959d = i3 % 128;
                        int i4 = i3 % 2;
                        this.r.m263();
                    }
                }
                P(this.m, str, z, true, zMo903);
                int i5 = f5960e + 87;
                f5959d = i5 % 128;
                if (i5 % 2 == 0) {
                    return;
                }
                int i6 = 67 / 0;
            }
        } catch (Exception e2) {
            String strIntern = N((ViewConfiguration.getKeyRepeatDelay() >> 16) + 12, (char) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 2131), TextUtils.getCapsMode("", 0, 0) + 74).intern();
            StringBuilder sb = new StringBuilder();
            sb.append(N(21 - (ViewConfiguration.getWindowTouchSlop() >> 8), (char) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 8023), (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 508).intern());
            sb.append(str);
            jy.m993(strIntern, sb.toString(), (Throwable) e2, true, false, true);
        }
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    public void initialize(Context context, String str) {
        int i = f5959d + 37;
        f5960e = i % 128;
        char c2 = i % 2 == 0 ? 'C' : ';';
        initialize(context, str, null);
        if (c2 == ';') {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    public void initialize(Context context, String str, ISAdQualityConfig iSAdQualityConfig) {
        if (context instanceof Application) {
            I((Application) context, str, iSAdQualityConfig);
            return;
        }
        if ((context != null ? '\'' : '1') == '\'') {
            if (!(!(context.getApplicationContext() instanceof Application))) {
                I((Application) context.getApplicationContext(), str, iSAdQualityConfig);
                int i = f5960e + 63;
                f5959d = i % 128;
                int i2 = i % 2;
                return;
            }
        }
        if (context instanceof Activity) {
            U((Activity) context, str, iSAdQualityConfig);
            int i3 = f5959d + 95;
            f5960e = i3 % 128;
            int i4 = i3 % 2;
            return;
        }
        String strIntern = N((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 73, (char) KeyEvent.getDeadChar(0, 0), (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern();
        m.m1020(N((ViewConfiguration.getTapTimeout() >> 16) + 12, (char) (2132 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))), 75 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1))).intern(), strIntern);
        this.u = iSAdQualityConfig.getAdQualityInitListener();
        W(ISAdQualityInitError.EXCEPTION_ON_INIT, strIntern);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if ((m1036() ? 22 : ';') != ';') goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        if (m1036() != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
    
        com.json.adqualitysdk.sdk.i.m.m1020(N(12 - android.view.KeyEvent.getDeadChar(0, 0), (char) (2131 - (android.media.AudioTrack.getMinVolume() > 0.0f ? 1 : (android.media.AudioTrack.getMinVolume() == 0.0f ? 0 : -1))), android.view.KeyEvent.keyCodeFromString("") + 74).intern(), N(68 - (android.os.Process.getElapsedCpuTime() > 0 ? 1 : (android.os.Process.getElapsedCpuTime() == 0 ? 0 : -1)), (char) (android.util.TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (android.util.TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (android.view.KeyEvent.getMaxKeyCode() >> 16) + 1197).intern());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0076, code lost:
    
        if (o() != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
    
        r0 = 25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007b, code lost:
    
        r0 = 'U';
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007d, code lost:
    
        if (r0 == 'U') goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007f, code lost:
    
        r9 = com.json.adqualitysdk.sdk.i.r.f5959d + 43;
        com.json.adqualitysdk.sdk.i.r.f5960e = r9 % 128;
        r9 = r9 % 2;
        com.json.adqualitysdk.sdk.i.m.m1020(N(android.graphics.Color.rgb(0, 0, 0) + 16777228, (char) (android.graphics.Color.blue(0) + 2131), 74 - (android.media.AudioTrack.getMinVolume() > 0.0f ? 1 : (android.media.AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern(), N(73 - android.text.TextUtils.indexOf("", "", 0, 0), (char) (android.view.ViewConfiguration.getScrollDefaultDelay() >> 16), android.graphics.ImageFormat.getBitsPerPixel(0) + 1265).intern());
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c6, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c7, code lost:
    
        r8.v.m297(r9);
        r9 = com.json.adqualitysdk.sdk.i.r.f5959d + 91;
        com.json.adqualitysdk.sdk.i.r.f5960e = r9 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d6, code lost:
    
        if ((r9 % 2) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00da, code lost:
    
        r9 = 99 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00de, code lost:
    
        return;
     */
    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void sendCustomMediationRevenue(com.json.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue r9) {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.r.sendCustomMediationRevenue(com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue):void");
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    public void setAdListener(ISAdQualityAdListener iSAdQualityAdListener) {
        if (m1036()) {
            int i = f5960e + 105;
            f5959d = i % 128;
            int i2 = i % 2;
            m.m1020(N((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 12, (char) (((byte) KeyEvent.getModifierMetaStateMask()) + 2132), 74 - Color.argb(0, 0, 0, 0)).intern(), N(53 - View.resolveSize(0, 0), (char) (9123 - TextUtils.getOffsetAfter("", 0)), 1144 - TextUtils.indexOf("", "")).intern());
            return;
        }
        this.p = iSAdQualityAdListener;
        int i3 = f5960e + 105;
        f5959d = i3 % 128;
        if ((i3 % 2 != 0 ? 'R' : '\r') != '\r') {
            int i4 = 13 / 0;
        }
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    public void setSegment(ISAdQualitySegment iSAdQualitySegment) {
        int i = f5959d + 95;
        f5960e = i % 128;
        int i2 = i % 2;
        if (!(m1036())) {
            t.m1044(new d(iSAdQualitySegment));
            return;
        }
        int i3 = f5960e + 53;
        f5959d = i3 % 128;
        int i4 = i3 % 2;
        m.m1020(N(13 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 2132), (ViewConfiguration.getDoubleTapTimeout() >> 16) + 74).intern(), N(TextUtils.getOffsetAfter("", 0) + 49, (char) ((-1) - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))), 1337 - KeyEvent.keyCodeFromString("")).intern());
        int i5 = f5960e + 97;
        f5959d = i5 % 128;
        if ((i5 % 2 != 0 ? (char) 19 : 'B') != 19) {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    @Deprecated
    public void setUserConsent(boolean z) {
        int i = f5960e + 103;
        f5959d = i % 128;
        int i2 = i % 2;
        l().m289(z);
        int i3 = f5959d + 41;
        f5960e = i3 % 128;
        if ((i3 % 2 == 0 ? 'P' : '7') != 'P') {
            return;
        }
        int i4 = 56 / 0;
    }

    @Override // com.json.adqualitysdk.sdk.IronSourceAdQuality
    public synchronized void shutdown() {
        int i = f5960e + 49;
        f5959d = i % 128;
        if (i % 2 != 0) {
            L(true);
        } else {
            L(false);
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized ax m1034() {
        ax axVar;
        int i = f5960e + 63;
        int i2 = i % 128;
        f5959d = i2;
        int i3 = i % 2;
        axVar = this.o;
        int i4 = i2 + 81;
        f5960e = i4 % 128;
        int i5 = i4 % 2;
        return axVar;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized ISAdQualityLogLevel m1035() {
        int i = f5959d + 115;
        f5960e = i % 128;
        if ((i % 2 == 0 ? '$' : 'K') != 'K') {
            throw null;
        }
        return this.l;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized boolean m1036() {
        int i = f5959d + 51;
        f5960e = i % 128;
        if ((i % 2 == 0 ? '0' : 'G') != 'G') {
            throw null;
        }
        return this.i;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized boolean m1037() {
        boolean z;
        int i = f5960e;
        int i2 = i + 97;
        f5959d = i2 % 128;
        if (i2 % 2 != 0) {
            z = this.k;
            int i3 = 85 / 0;
        } else {
            z = this.k;
        }
        int i4 = i + 21;
        f5959d = i4 % 128;
        if ((i4 % 2 != 0 ? 'O' : 'B') == 'O') {
            throw null;
        }
        return z;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1038() {
        int i = f5959d + 83;
        f5960e = i % 128;
        if ((i % 2 == 0 ? '\'' : (char) 23) == '\'') {
            m1036();
            throw null;
        }
        if (m1036()) {
            m.m1020(N(View.resolveSizeAndState(0, 0, 0) + 12, (char) (2131 - Color.alpha(0)), Drawable.resolveOpacity(0, 0) + 74).intern(), N(60 - KeyEvent.getDeadChar(0, 0), (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1), 1000 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))).intern());
            return;
        }
        if (o()) {
            int i2 = f5960e + 9;
            f5959d = i2 % 128;
            int i3 = i2 % 2;
            m.m1020(N(12 - KeyEvent.keyCodeFromString(""), (char) (Color.alpha(0) + 2131), 74 - TextUtils.indexOf("", "", 0)).intern(), N((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 47, (char) (ViewConfiguration.getFadingEdgeLength() >> 16), (ViewConfiguration.getScrollDefaultDelay() >> 16) + 1059).intern());
            return;
        }
        this.k = true;
        int i4 = f5960e + 123;
        f5959d = i4 % 128;
        int i5 = i4 % 2;
    }
}
