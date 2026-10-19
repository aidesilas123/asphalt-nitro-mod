package com.json.adqualitysdk.sdk.i;

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
import com.json.adqualitysdk.sdk.i.az;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.webview.WebView;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.bridge.Invocation;
import com.unity3d.services.core.webview.bridge.NativeCallback;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class cb extends az {
    private static int u = 118;
    private static boolean v = true;
    private static boolean w = true;
    private static int y = 0;
    private static int z = 1;
    private static char[] t = {163, 203, 228, 223, 234, 239, 183, 218, 233, 191, 187, 238, 219, 194, 232, 205, 216, 204, 237, 230, 200, 231, 235, 236, 185, 215, 221, 229, 195, 240, 201, 222, 227, 184, 226, 220, 217, 197, 202, 189, 198, 186, 196, 207, 199, 188};
    private static int[] x = {510903257, -984269154, -1629705363, 1430767742, 203284688, 981084787, -2046322257, 1094028475, 581269003, -1141765647, -646021274, 1704718752, -1455106867, 1260854608, 1118947334, -2058710457, -674034699, -1182091718};

    final class a implements az.d {
        a(cb cbVar) {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.m422();
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            cb.w((IUnityAdsListener) list.get(0));
            return null;
        }
    }

    public static class c extends az {
        private static long t = 6845401004151176293L;
        private static int u = 0;
        private static int v = 1;

        public c(String str) {
            super(str);
        }

        private static String k(String str, int i) {
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
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i2))) ^ t);
                        com.json.adqualitysdk.sdk.i.h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.az
        final Map<String, az.d> j() {
            HashMap map = new HashMap();
            int i = u + 77;
            v = i % 128;
            int i2 = i % 2;
            return map;
        }

        @Override // com.json.adqualitysdk.sdk.i.az
        /* JADX INFO: renamed from: ｋ */
        public final Class mo384(String str) {
            byte b = -1;
            switch (str.hashCode()) {
                case 252148886:
                    if (str.equals(k("簤⩪탦罊■찆窦⃫콉痏᰽쪕焕έ", 22123 - (ViewConfiguration.getJumpTapTimeout() >> 16)).intern())) {
                        b = 0;
                    }
                    break;
                case 961844241:
                    if (str.equals(k("簧\uf2f3懥탮䟜뛄◹铍ஸ窽", View.MeasureSpec.getSize(0) + 36599).intern())) {
                        int i = u + 39;
                        v = i % 128;
                        int i2 = i % 2;
                        b = 2;
                    }
                    break;
                case 1067215379:
                    if (!(str.equals(k("簆줵ᙶ揶꣬\uf630䍶袨헤⍡桷뗾ˢ䠳镥\ue2a2\u2ffc甩쉮ྻ咧ꈬ\uef6e㒢臣켧ᑱ憳꺯\uf404䅦躪\udbeb℟湉뮮Ð丛魈", Gravity.getAbsoluteGravity(0, 0) + 46399).intern()) ? false : true)) {
                        int i3 = v + 59;
                        int i4 = i3 % 128;
                        u = i4;
                        int i5 = i3 % 2;
                        int i6 = i4 + 99;
                        v = i6 % 128;
                        int i7 = i6 % 2;
                        b = 3;
                    }
                    break;
                case 1531208100:
                    if ((str.equals(k("簆調煮\ue852曜\udd74吾틴䦄쀝㻿뗺Ⱳ\uab17⇝顮\u173c跥Җ荟醴炫\uef63昃\udc83孿툯䣱잟㹋듫㏦ꩄℒ鿶ᙲ贠\u0bce芶弄矩\ueea7敍\udc1d嫕텫", 34483 - Color.red(0)).intern()) ? 'a' : '>') == 'a') {
                        b = 1;
                    }
                    break;
            }
            if (b == 0 || b == 1) {
                return AdUnitActivity.class;
            }
            if (b == 2 || b == 3) {
                return BannerView.class;
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
        
            if ((r0 == null) != false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
        
            r1 = com.ironsource.adqualitysdk.sdk.i.cb.c.v + 119;
            com.ironsource.adqualitysdk.sdk.i.cb.c.u = r1 % 128;
            r1 = r1 % 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        
            r1 = com.ironsource.adqualitysdk.sdk.i.cb.c.v + 7;
            com.ironsource.adqualitysdk.sdk.i.cb.c.u = r1 % 128;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        
            if ((r1 % 2) == 0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
        
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
        
            if (r2 == false) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
        
            return r0.split(k("籈", 52783 - android.graphics.Color.alpha(0)).intern())[0];
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
        
            return r0.split(k("籈", 52783 / android.graphics.Color.alpha(0)).intern())[0];
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        
            if (r0 != null) goto L19;
         */
        @Override // com.json.adqualitysdk.sdk.i.az
        /* JADX INFO: renamed from: ﾇ */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.String mo385() {
            /*
                r5 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.cb.c.u
                int r0 = r0 + 49
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.c.v = r1
                int r0 = r0 % 2
                r1 = 59
                if (r0 != 0) goto L11
                r0 = 59
                goto L13
            L11:
                r0 = 94
            L13:
                r2 = 1
                r3 = 0
                if (r0 == r1) goto L1e
                java.lang.String r0 = com.unity3d.ads.UnityAds.getVersion()
                if (r0 == 0) goto L2c
                goto L38
            L1e:
                java.lang.String r0 = com.unity3d.ads.UnityAds.getVersion()
                r1 = 68
                int r1 = r1 / r3
                if (r0 == 0) goto L29
                r1 = 0
                goto L2a
            L29:
                r1 = 1
            L2a:
                if (r1 == 0) goto L38
            L2c:
                r0 = 0
                int r1 = com.ironsource.adqualitysdk.sdk.i.cb.c.v
                int r1 = r1 + 119
                int r2 = r1 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.c.u = r2
                int r1 = r1 % 2
                return r0
            L38:
                int r1 = com.ironsource.adqualitysdk.sdk.i.cb.c.v
                int r1 = r1 + 7
                int r4 = r1 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.c.u = r4
                int r1 = r1 % 2
                if (r1 == 0) goto L45
                goto L46
            L45:
                r2 = 0
            L46:
                r1 = 52783(0xce2f, float:7.3965E-41)
                java.lang.String r4 = "籈"
                if (r2 == 0) goto L61
                int r2 = android.graphics.Color.alpha(r3)
                int r1 = r1 / r2
                java.lang.String r1 = k(r4, r1)
                java.lang.String r1 = r1.intern()
                java.lang.String[] r0 = r0.split(r1)
                r0 = r0[r3]
                goto L74
            L61:
                int r2 = android.graphics.Color.alpha(r3)
                int r1 = r1 - r2
                java.lang.String r1 = k(r4, r1)
                java.lang.String r1 = r1.intern()
                java.lang.String[] r0 = r0.split(r1)
                r0 = r0[r3]
            L74:
                return r0
            L75:
                r0 = move-exception
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.cb.c.mo385():java.lang.String");
        }
    }

    final class d implements az.d {
        d(cb cbVar) {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.m421((String) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            cb.p((IUnityAdsListener) list.get(0));
            return null;
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            cb.z((BannerView) list.get(0), (BannerView.IListener) list.get(1));
            return null;
        }
    }

    final class g implements az.d {
        g(cb cbVar) {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.m423();
        }
    }

    final class h implements az.d {
        h(cb cbVar) {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.m420((String) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.m((BannerView) list.get(0));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.r((BannerView) list.get(0));
        }
    }

    final class k implements az.d {
        k(cb cbVar) {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            cb.m424(list.get(0));
            return null;
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.this.m425(list.get(0), chVar);
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            cb.t((IUnityAdsListener) list.get(0));
            return null;
        }
    }

    final class n implements az.d {
        n() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return cb.n();
        }
    }

    class o extends WebViewApp implements gy<WebViewApp> {
        private static char[] a = {'W', 51744, 38120, 24217, 10621, 62268, 48617, 34722, 21080, 7197, 59036, 45188, 31577, 17909, 3985, 55918, 42034, 28372, 14506, 879, 52520, 38854, 24975, 11351, 63005, 49369, 58810, 12237, 28933, 47988, 52368, 5841, 22532, 25167, 47029, 63984, 881, 21885, 40628, 40984, 60028, 16259, 16863, 35641, 56647, 59010, 10447, 29221, 33898, 51634, 5088, 9506, 28298, 45287, 64004, 3151, 20872, 39895, 44330, 63341, 'W', 51744, 38120, 24217, 10621, 62268, 48617, 34722, 21080, 7197, 59036, 45200, 31577, 17909, 3985, 55918, 42034, 28372, 14506, 879, 52514, 38856, 24967, 11359, 62989, 49359, 35687, 21764, 8163, 59829, 46195, 40777, 21822, 3062, 49543, 46691, 27682, 8951, 6332, 52550, 33539, 31106, 12187, 58439, 56044, 37053, 17761, 15129, 61934, 42918, 40023, 21011, 2258, 65159, 45932, 26902, 24531, 5205, 51767, 33019, 30395, 11105, 57636, 55250, 36242, 16974, 14352, 61150, 42126, 39247, 20467, 22501, 40338, 50010, 2347, 32463, 42126, 59995, 53264, 1514, 19375, 45358, 59170, 11499, 4679, 22563, 36316, 62336, 14705, 28417, 21704, 39585, 'W', 51744, 38120, 24217, 10621, 62268, 48617, 34722, 21080, 7197, 59036, 45200, 31577, 17909, 3973, 55908, 42046, 28403, 14515, 888, 52497, 38875, 24975, 11335, 62993, 49362, 35692, 64895, 14088, 27072, 41905, 54357, 3604, 16577, 31370, 44912, 57653, 7092, 19884, 34417, 47303, 62090, 10086, 22798, 37848, 50588, 65091, 'W', 51744, 38120, 24217, 10621, 62268, 48617, 34722, 21080, 7197, 59036, 45214, 31570, 17911, 4009, 55904, 42037, 28376, 14527, 875, 52492, 38854, 24970, 64463, 12728, 28528, 42241, 53989, 2212, 18033, 31802, 43456, 59269, 7428, 19206, 32970, 48751, 62513, 8696, 24493, 38222, 49955, 63723, 13968, 27731, 39447, 55240, 3467, 4438, 56097, 34281, 20376, 14460, 57917, 44264, 38563, 17241, 3356, 63389, 41348, 27224, 21741, 7848, 52092, 46388, 32727, 10682, 4722, 56329, 34506, 28814, 15697, 59154};
        private static long b = -1208999605479290299L;
        private static long c = -7716382514673342316L;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5394d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5395e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WebViewApp f5396f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ch f5397g;

        o(WebViewApp webViewApp, ch chVar) {
            this.f5396f = webViewApp;
            this.f5397g = chVar;
        }

        private WebViewApp a() {
            int i = f5394d;
            int i2 = i + 63;
            f5395e = i2 % 128;
            if (i2 % 2 == 0) {
                throw null;
            }
            WebViewApp webViewApp = this.f5396f;
            int i3 = i + 29;
            f5395e = i3 % 128;
            int i4 = i3 % 2;
            return webViewApp;
        }

        private static String b(int i, int i2, char c2) {
            String str;
            synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
                char[] cArr = new char[i];
                com.json.adqualitysdk.sdk.i.e.f51 = 0;
                while (true) {
                    int i3 = com.json.adqualitysdk.sdk.i.e.f51;
                    if (i3 < i) {
                        cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                        com.json.adqualitysdk.sdk.i.e.f51 = i3 + 1;
                    } else {
                        str = new String(cArr);
                    }
                }
            }
            return str;
        }

        private static String c(String str, int i) {
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
                        cArr2[i2] = (char) (((long) (cArr[i2] ^ (com.json.adqualitysdk.sdk.i.h.f64 * i2))) ^ c);
                        com.json.adqualitysdk.sdk.i.h.f65++;
                    } else {
                        str2 = new String(cArr2);
                    }
                }
            }
            return str2;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
        @Override // com.unity3d.services.core.webview.WebViewApp
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void addCallback(com.unity3d.services.core.webview.bridge.NativeCallback r8) {
            /*
                r7 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.cb.o.f5395e
                int r0 = r0 + 61
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.o.f5394d = r1
                int r0 = r0 % 2
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L10
                r0 = 0
                goto L11
            L10:
                r0 = 1
            L11:
                java.lang.String r3 = ""
                r4 = 55352(0xd838, float:7.7565E-41)
                java.lang.String r5 = "⣃\uf0c6题ꁧ䠡ᇢ㦩셔\ue95c넋媜抨\u0a64툻ﯕ菌ꮈ獟ᬨⓠ첻鑼"
                if (r0 == r2) goto L38
                com.ironsource.adqualitysdk.sdk.i.cb r0 = com.json.adqualitysdk.sdk.i.cb.this
                com.ironsource.adqualitysdk.sdk.i.ch r6 = r7.f5397g
                int r3 = android.view.MotionEvent.axisFromString(r3)
                int r3 = r3 * r4
                java.lang.String r3 = c(r5, r3)
                java.lang.String r3 = r3.intern()
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r2[r1] = r8
                r0.f(r7, r6, r3, r2)
                com.unity3d.services.core.webview.WebViewApp r0 = r7.f5396f
                if (r0 == 0) goto L5d
                goto L58
            L38:
                com.ironsource.adqualitysdk.sdk.i.cb r0 = com.json.adqualitysdk.sdk.i.cb.this
                com.ironsource.adqualitysdk.sdk.i.ch r6 = r7.f5397g
                int r3 = android.view.MotionEvent.axisFromString(r3)
                int r3 = r3 + r4
                java.lang.String r3 = c(r5, r3)
                java.lang.String r3 = r3.intern()
                java.lang.Object[] r4 = new java.lang.Object[r2]
                r4[r1] = r8
                r0.f(r7, r6, r3, r4)
                com.unity3d.services.core.webview.WebViewApp r0 = r7.f5396f
                if (r0 == 0) goto L55
                r1 = 1
            L55:
                if (r1 == r2) goto L58
                goto L5d
            L58:
                com.unity3d.services.core.webview.WebViewApp r0 = r7.f5396f
                r0.addCallback(r8)
            L5d:
                int r8 = com.ironsource.adqualitysdk.sdk.i.cb.o.f5395e
                int r8 = r8 + 115
                int r0 = r8 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.o.f5394d = r0
                int r8 = r8 % 2
                if (r8 != 0) goto L6a
                return
            L6a:
                r8 = 0
                throw r8     // Catch: java.lang.Throwable -> L6c
            L6c:
                r8 = move-exception
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.cb.o.addCallback(com.unity3d.services.core.webview.bridge.NativeCallback):void");
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public NativeCallback getCallback(String str) {
            cb.this.f(this, this.f5397g, c("⣃鋔岼ڭ쁩詈琽㿖琉ꎩ淈흤配嬁ۑ샞誨璍㹬\uf84aꈓ淶", 47654 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))).intern(), str);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? 'L' : 'B') == 'B') {
                int i = f5395e + 1;
                f5394d = i % 128;
                int i2 = i % 2;
                return null;
            }
            int i3 = f5395e + 79;
            f5394d = i3 % 128;
            if (!(i3 % 2 != 0)) {
                return webViewApp.getCallback(str);
            }
            webViewApp.getCallback(str);
            throw null;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public Configuration getConfiguration() {
            int i = f5394d + 29;
            f5395e = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(27 - (Process.myTid() >> 22), 152 - KeyEvent.getDeadChar(0, 0), (char) (ExpandableListView.getPackedPositionChild(0L) + 1)).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if (!(webViewApp != null)) {
                return null;
            }
            int i3 = f5394d + 71;
            f5395e = i3 % 128;
            if ((i3 % 2 == 0 ? ',' : '3') == '3') {
                return webViewApp.getConfiguration();
            }
            webViewApp.getConfiguration();
            throw null;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public ErrorState getErrorStateFromWebAppCode() {
            int i = f5395e + 25;
            f5394d = i % 128;
            if ((i % 2 != 0 ? (char) 26 : (char) 1) != 26) {
                cb.this.f(this, this.f5397g, c("⣃繪藀⬓犑駶⽁盨鰼⎗䪴遚➵䴿钫㯳䅖\ue8b0㸀䕆\uecfc㉂妲\uef1c㙚巅\ue345ઠ倷\ue77eໜ吐ﮄğꡁￊԼ겖", (ViewConfiguration.getEdgeSlop() >> 16) + 22171).intern(), new Object[0]);
                if ((this.f5396f == null ? (char) 6 : (char) 16) == 6) {
                    return null;
                }
            } else {
                cb.this.f(this, this.f5397g, c("⣃繪藀⬓犑駶⽁盨鰼⎗䪴遚➵䴿钫㯳䅖\ue8b0㸀䕆\uecfc㉂妲\uef1c㙚巅\ue345ઠ倷\ue77eໜ吐ﮄğꡁￊԼ겖", 13119 / (ViewConfiguration.getEdgeSlop() * 80)).intern(), new Object[1]);
                if ((this.f5396f != null ? (char) 16 : (char) 5) != 16) {
                    return null;
                }
            }
            ErrorState errorStateFromWebAppCode = this.f5396f.getErrorStateFromWebAppCode();
            int i2 = f5394d + 53;
            f5395e = i2 % 128;
            int i3 = i2 % 2;
            return errorStateFromWebAppCode;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public int getWebAppFailureCode() {
            int i = f5395e + 81;
            f5394d = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(AndroidCharacter.getMirror('0') - 17, View.resolveSize(0, 0) + 60, (char) KeyEvent.getDeadChar(0, 0)).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? (char) 21 : 'D') != 21) {
                return 0;
            }
            int i3 = f5395e + 89;
            f5394d = i3 % 128;
            boolean z = i3 % 2 != 0;
            int webAppFailureCode = webViewApp.getWebAppFailureCode();
            if (z) {
                int i4 = 32 / 0;
            }
            return webAppFailureCode;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public String getWebAppFailureMessage() {
            int i = f5395e + 89;
            f5394d = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(34 - (KeyEvent.getMaxKeyCode() >> 16), 26 - (ViewConfiguration.getTapTimeout() >> 16), (char) (Process.getGidForName("") + 58862)).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if (!(webViewApp == null)) {
                return webViewApp.getWebAppFailureMessage();
            }
            int i3 = f5395e + 43;
            f5394d = i3 % 128;
            if (!(i3 % 2 != 0)) {
                return null;
            }
            int i4 = 14 / 0;
            return null;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public WebView getWebView() {
            int i = f5394d + 15;
            f5395e = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(Color.argb(0, 0, 0, 0) + 21, 130 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (22450 - TextUtils.indexOf("", "", 0, 0))).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? (char) 23 : '-') == '-') {
                return null;
            }
            int i3 = f5394d + 3;
            f5395e = i3 % 128;
            if (i3 % 2 == 0) {
                webViewApp.getWebView();
                throw null;
            }
            WebView webView = webViewApp.getWebView();
            int i4 = f5395e + 75;
            f5394d = i4 % 128;
            if ((i4 % 2 != 0 ? 'L' : '3') == '3') {
                return webView;
            }
            int i5 = 29 / 0;
            return webView;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public boolean invokeCallback(Invocation invocation) {
            int i = f5394d + 49;
            f5395e = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(24 - TextUtils.lastIndexOf("", '0', 0, 0), (Process.myTid() >> 22) + 222, (char) (64408 - TextUtils.indexOf("", ""))).intern(), invocation);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? 'Z' : 'C') != 'Z') {
                int i3 = f5395e + 87;
                f5394d = i3 % 128;
                int i4 = i3 % 2;
                return false;
            }
            int i5 = f5394d + 39;
            f5395e = i5 % 128;
            if (i5 % 2 != 0) {
                return webViewApp.invokeCallback(invocation);
            }
            webViewApp.invokeCallback(invocation);
            throw null;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp, com.unity3d.services.core.webview.bridge.IWebViewBridgeInvoker
        public boolean invokeMethod(String str, String str2, Method method, Object... objArr) {
            cb.this.f(this, this.f5397g, b(24 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), 199 - ExpandableListView.getPackedPositionGroup(0L), (char) Drawable.resolveOpacity(0, 0)).intern(), str, str2, method, Arrays.asList(objArr));
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? (char) 14 : (char) 4) == 4) {
                int i = f5394d + 43;
                f5395e = i % 128;
                int i2 = i % 2;
                return false;
            }
            int i3 = f5395e + 63;
            f5394d = i3 % 128;
            char c2 = i3 % 2 != 0 ? 'A' : (char) 25;
            boolean zInvokeMethod = webViewApp.invokeMethod(str, str2, method, objArr);
            if (c2 == 25) {
                return zInvokeMethod;
            }
            int i4 = 88 / 0;
            return zInvokeMethod;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public boolean isWebAppInitialized() {
            int i = f5394d + 33;
            f5395e = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, c("⣃왒\uf5b0\ue32b鉱臞뼱꺠巼䭟竤槼݃㚄␛퍻싥\uf037\uef92黄豆뮢ꫢ塘瞽攓ᑳϟㄥ₇", ExpandableListView.getPackedPositionGroup(0L) + 61091).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? '\b' : (char) 30) != '\b') {
                return false;
            }
            int i3 = f5394d + 125;
            f5395e = i3 % 128;
            int i4 = i3 % 2;
            return webViewApp.isWebAppInitialized();
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public boolean isWebAppLoaded() {
            cb.this.f(this, this.f5397g, c("⣃䨊\ued003ꌑ옖礁鰈㼼刷\uf574栴謣\u2e7c䅋\ue443ݥ멏\udd42灹鍧㙢ꥢ챼潸", 25339 - TextUtils.getTrimmedLength("")).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if (webViewApp == null) {
                return false;
            }
            int i = f5394d + 75;
            f5395e = i % 128;
            int i2 = i % 2;
            boolean zIsWebAppLoaded = webViewApp.isWebAppLoaded();
            int i3 = f5395e + 19;
            f5394d = i3 % 128;
            int i4 = i3 % 2;
            return zIsWebAppLoaded;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void removeCallback(NativeCallback nativeCallback) {
            cb.this.f(this, this.f5397g, b(25 - TextUtils.indexOf("", ""), ExpandableListView.getPackedPositionType(0L) + 247, (char) (4353 - KeyEvent.keyCodeFromString(""))).intern(), nativeCallback);
            WebViewApp webViewApp = this.f5396f;
            if (webViewApp != null) {
                int i = f5395e + 121;
                f5394d = i % 128;
                boolean z = i % 2 == 0;
                webViewApp.removeCallback(nativeCallback);
                if (!z) {
                    throw null;
                }
            }
            int i2 = f5394d + 51;
            f5395e = i2 % 128;
            int i3 = i2 % 2;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void resetWebViewAppInitialization() {
            int i = f5394d + 39;
            f5395e = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b((Process.myPid() >> 22) + 40, TextUtils.indexOf("", "", 0) + 91, (char) ((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 40734)).intern(), new Object[0]);
            WebViewApp webViewApp = this.f5396f;
            if (!(webViewApp == null)) {
                int i3 = f5394d + 119;
                f5395e = i3 % 128;
                char c2 = i3 % 2 == 0 ? 'O' : '!';
                webViewApp.resetWebViewAppInitialization();
                if (c2 != '!') {
                    int i4 = 95 / 0;
                }
            }
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public boolean sendEvent(Enum r10, Enum r11, Object... objArr) {
            int i = f5395e + 101;
            f5394d = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(20 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 179 - View.resolveSize(0, 0), (char) (Color.blue(0) + 64808)).intern(), r10, r11, Arrays.asList(objArr));
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? (char) 17 : '.') == '.') {
                return false;
            }
            boolean zSendEvent = webViewApp.sendEvent(r10, r11, objArr);
            int i3 = f5395e + 71;
            f5394d = i3 % 128;
            int i4 = i3 % 2;
            return zSendEvent;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void setConfiguration(Configuration configuration) {
            int i = f5395e + 95;
            f5394d = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, c("⣃儂\udb10䔛켱䥎\uf351絰\ue77c慯\uebc4ᖖ龕ᦷ莝ෆ럊㇑믫◺긝⠉列\udc35䘵쁀䩔", Color.rgb(0, 0, 0) + 16808435).intern(), configuration);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? (char) 14 : '*') != '*') {
                int i3 = f5394d + 89;
                f5395e = i3 % 128;
                int i4 = i3 % 2;
                webViewApp.setConfiguration(configuration);
            }
            int i5 = f5395e + 37;
            f5394d = i5 % 128;
            if ((i5 % 2 != 0 ? (char) 27 : 'G') == 'G') {
            } else {
                throw null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
        @Override // com.unity3d.services.core.webview.WebViewApp
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void setWebAppFailureCode(int r9) {
            /*
                r8 = this;
                int r0 = com.ironsource.adqualitysdk.sdk.i.cb.o.f5394d
                int r0 = r0 + 47
                int r1 = r0 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.o.f5395e = r1
                int r0 = r0 % 2
                java.lang.String r1 = ""
                java.lang.String r2 = "⣃䙌\uf58c擵鈉ŀ낍\u2ffe崌챁篘\ueaf8ᠭ띹⚕嗢쌦牘\ue1aeუ踖㵴곃\uda03䥙\uf893ៃ蔸㑗ꎙ틗"
                r3 = 1
                r4 = 0
                if (r0 != 0) goto L3e
                com.ironsource.adqualitysdk.sdk.i.cb r0 = com.json.adqualitysdk.sdk.i.cb.this
                com.ironsource.adqualitysdk.sdk.i.ch r5 = r8.f5397g
                r6 = 28891(0x70db, float:4.0485E-41)
                r7 = 67
                int r1 = android.text.TextUtils.indexOf(r1, r7, r4)
                int r1 = r6 >> r1
                java.lang.String r1 = c(r2, r1)
                java.lang.String r1 = r1.intern()
                java.lang.Object[] r2 = new java.lang.Object[r4]
                java.lang.Integer r4 = java.lang.Integer.valueOf(r9)
                r2[r3] = r4
                r0.f(r8, r5, r1, r2)
                com.unity3d.services.core.webview.WebViewApp r0 = r8.f5396f
                if (r0 == 0) goto L39
                r0 = 1
                goto L3b
            L39:
                r0 = 33
            L3b:
                if (r0 == r3) goto L6a
                goto L6f
            L3e:
                com.ironsource.adqualitysdk.sdk.i.cb r0 = com.json.adqualitysdk.sdk.i.cb.this
                com.ironsource.adqualitysdk.sdk.i.ch r5 = r8.f5397g
                r6 = 48
                int r1 = android.text.TextUtils.indexOf(r1, r6, r4)
                int r1 = r1 + 28350
                java.lang.String r1 = c(r2, r1)
                java.lang.String r1 = r1.intern()
                java.lang.Object[] r2 = new java.lang.Object[r3]
                java.lang.Integer r3 = java.lang.Integer.valueOf(r9)
                r2[r4] = r3
                r0.f(r8, r5, r1, r2)
                com.unity3d.services.core.webview.WebViewApp r0 = r8.f5396f
                r1 = 12
                if (r0 == 0) goto L66
                r0 = 44
                goto L68
            L66:
                r0 = 12
            L68:
                if (r0 == r1) goto L6f
            L6a:
                com.unity3d.services.core.webview.WebViewApp r0 = r8.f5396f
                r0.setWebAppFailureCode(r9)
            L6f:
                int r9 = com.ironsource.adqualitysdk.sdk.i.cb.o.f5394d
                int r9 = r9 + 111
                int r0 = r9 % 128
                com.ironsource.adqualitysdk.sdk.i.cb.o.f5395e = r0
                int r9 = r9 % 2
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.cb.o.setWebAppFailureCode(int):void");
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void setWebAppFailureMessage(String str) {
            cb.this.f(this, this.f5397g, c("⣃抰뱴\uf601ǹ宴镥⼒竬뒭츰ᠬ叽\uedad❍焾賦욄ၶ\uaa37\ue5c6㾠䥫茯\udef9梿ꉫﰂ㟭䆺魹픪惓몐", 19009 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), str);
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? (char) 2 : (char) 7) != 7) {
                int i = f5395e + 55;
                f5394d = i % 128;
                boolean z = i % 2 != 0;
                webViewApp.setWebAppFailureMessage(str);
                if (z) {
                    throw null;
                }
                int i2 = f5394d + 37;
                f5395e = i2 % 128;
                int i3 = i2 % 2;
            }
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void setWebAppInitialized(boolean z) {
            int i = f5394d + 79;
            f5395e = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, c("⣃㮴\u0e7cᄍ早䢨孽긶닌薉\ue808\ufb10쿍퉡┅৺Ღ潀爾䛻ꦹ뱓輓鏓\ue685쥈\uddfa₺㍢ؠ櫦", 4932 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern(), Boolean.valueOf(z));
            WebViewApp webViewApp = this.f5396f;
            if ((webViewApp != null ? 'N' : (char) 17) != 17) {
                webViewApp.setWebAppInitialized(z);
                int i3 = f5394d + 9;
                f5395e = i3 % 128;
                int i4 = i3 % 2;
            }
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void setWebAppLoaded(boolean z) {
            int i = f5395e + 105;
            f5394d = i % 128;
            int i2 = i % 2;
            cb.this.f(this, this.f5397g, b(26 - (ViewConfiguration.getKeyRepeatDelay() >> 16), Color.argb(0, 0, 0, 0), (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) - 1)).intern(), Boolean.valueOf(z));
            WebViewApp webViewApp = this.f5396f;
            if (webViewApp == null) {
                return;
            }
            webViewApp.setWebAppLoaded(z);
            int i3 = f5394d + 43;
            f5395e = i3 % 128;
            int i4 = i3 % 2;
        }

        @Override // com.unity3d.services.core.webview.WebViewApp
        public void setWebView(WebView webView) {
            int i = f5394d + 15;
            f5395e = i % 128;
            if (i % 2 == 0) {
                cb cbVar = cb.this;
                ch chVar = this.f5397g;
                String strIntern = c("⣃\u1718圤靹흙\u177c垕鞊\ud7ac៕垠韤혝ᘵ噽陖홦ᚻ嚟隺훗", 6457 >> MotionEvent.axisFromString("")).intern();
                Object[] objArr = new Object[0];
                objArr[1] = webView;
                cbVar.f(this, chVar, strIntern, objArr);
                if (this.f5396f == null) {
                    return;
                }
            } else {
                cb.this.f(this, this.f5397g, c("⣃\u1718圤靹흙\u177c垕鞊\ud7ac៕垠韤혝ᘵ噽陖홦ᚻ嚟隺훗", 16360 - MotionEvent.axisFromString("")).intern(), webView);
                if (!(this.f5396f != null)) {
                    return;
                }
            }
            int i2 = f5395e + 51;
            f5394d = i2 % 128;
            if (!(i2 % 2 != 0)) {
                this.f5396f.setWebView(webView);
            } else {
                this.f5396f.setWebView(webView);
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.gy
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ WebViewApp mo406() {
            int i = f5395e + 31;
            f5394d = i % 128;
            if ((i % 2 == 0 ? 'c' : (char) 31) != 'c') {
                a();
                throw null;
            }
            WebViewApp webViewAppA = a();
            int i2 = f5394d + 11;
            f5395e = i2 % 128;
            int i3 = i2 % 2;
            return webViewAppA;
        }
    }

    public cb(String str) {
        super(str);
    }

    private static Object k() {
        int i2 = z + 5;
        y = i2 % 128;
        int i3 = i2 % 2;
        IUnityAdsListener listener = UnityAds.getListener();
        int i4 = z + 15;
        y = i4 % 128;
        if ((i4 % 2 != 0 ? '_' : (char) 21) != '_') {
            return listener;
        }
        int i5 = 35 / 0;
        return listener;
    }

    private static void l(IUnityAdsListener iUnityAdsListener) {
        int i2 = z + 125;
        y = i2 % 128;
        int i3 = i2 % 2;
        UnityAds.removeListener(iUnityAdsListener);
        int i4 = z + 55;
        y = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ BannerView.IListener m(BannerView bannerView) {
        int i2 = y + 109;
        z = i2 % 128;
        int i3 = i2 % 2;
        BannerView.IListener iListenerU = u(bannerView);
        int i4 = y + 61;
        z = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 29 : '\'') == '\'') {
            return iListenerU;
        }
        int i5 = 18 / 0;
        return iListenerU;
    }

    static /* synthetic */ Object n() {
        int i2 = z + 99;
        y = i2 % 128;
        int i3 = i2 % 2;
        Object objK = k();
        int i4 = z + 17;
        y = i4 % 128;
        int i5 = i4 % 2;
        return objK;
    }

    private static String o(int[] iArr, int i2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) x.clone();
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

    static /* synthetic */ void p(IUnityAdsListener iUnityAdsListener) {
        int i2 = z + 15;
        y = i2 % 128;
        int i3 = i2 % 2;
        l(iUnityAdsListener);
        int i4 = z + 99;
        y = i4 % 128;
        int i5 = i4 % 2;
    }

    private static void q(BannerView bannerView, BannerView.IListener iListener) {
        int i2 = z + 105;
        y = i2 % 128;
        int i3 = i2 % 2;
        bannerView.setListener(iListener);
        int i4 = y + 73;
        z = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ String r(BannerView bannerView) {
        int i2 = z + 95;
        y = i2 % 128;
        int i3 = i2 % 2;
        String strX = x(bannerView);
        int i4 = y + 53;
        z = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 1 : 'K') == 'K') {
            return strX;
        }
        throw null;
    }

    private static String s(int[] iArr, String str, int i2, String str2) throws UnsupportedEncodingException {
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
            char[] cArr2 = t;
            int i3 = u;
            if (w) {
                int length = bArr.length;
                com.json.adqualitysdk.sdk.i.k.f129 = length;
                char[] cArr3 = new char[length];
                com.json.adqualitysdk.sdk.i.k.f130 = 0;
                while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                    int i4 = com.json.adqualitysdk.sdk.i.k.f130;
                    int i5 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                    int i6 = com.json.adqualitysdk.sdk.i.k.f130;
                    cArr3[i4] = (char) (cArr2[bArr[i5 - i6] + i2] - i3);
                    com.json.adqualitysdk.sdk.i.k.f130 = i6 + 1;
                }
                return new String(cArr3);
            }
            if (v) {
                int length2 = cArr.length;
                com.json.adqualitysdk.sdk.i.k.f129 = length2;
                char[] cArr4 = new char[length2];
                com.json.adqualitysdk.sdk.i.k.f130 = 0;
                while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                    int i7 = com.json.adqualitysdk.sdk.i.k.f130;
                    int i8 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                    int i9 = com.json.adqualitysdk.sdk.i.k.f130;
                    cArr4[i7] = (char) (cArr2[cArr[i8 - i9] - i2] - i3);
                    com.json.adqualitysdk.sdk.i.k.f130 = i9 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            com.json.adqualitysdk.sdk.i.k.f129 = length3;
            char[] cArr5 = new char[length3];
            com.json.adqualitysdk.sdk.i.k.f130 = 0;
            while (com.json.adqualitysdk.sdk.i.k.f130 < com.json.adqualitysdk.sdk.i.k.f129) {
                int i10 = com.json.adqualitysdk.sdk.i.k.f130;
                int i11 = com.json.adqualitysdk.sdk.i.k.f129 - 1;
                int i12 = com.json.adqualitysdk.sdk.i.k.f130;
                cArr5[i10] = (char) (cArr2[iArr[i11 - i12] - i2] - i3);
                com.json.adqualitysdk.sdk.i.k.f130 = i12 + 1;
            }
            return new String(cArr5);
        }
    }

    static /* synthetic */ void t(IUnityAdsListener iUnityAdsListener) {
        int i2 = y + 1;
        z = i2 % 128;
        char c2 = i2 % 2 == 0 ? '6' : '\b';
        y(iUnityAdsListener);
        if (c2 == '6') {
            throw null;
        }
        int i3 = z + 87;
        y = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
    }

    private static BannerView.IListener u(BannerView bannerView) {
        int i2 = z + 79;
        y = i2 % 128;
        int i3 = i2 % 2;
        BannerView.IListener listener = bannerView.getListener();
        int i4 = y + 101;
        z = i4 % 128;
        if ((i4 % 2 == 0 ? 'G' : ']') != 'G') {
            return listener;
        }
        throw null;
    }

    private static void v(IUnityAdsListener iUnityAdsListener) {
        int i2 = y + 41;
        z = i2 % 128;
        int i3 = i2 % 2;
        UnityAds.addListener(iUnityAdsListener);
        int i4 = y + 11;
        z = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ void w(IUnityAdsListener iUnityAdsListener) {
        int i2 = y + 11;
        z = i2 % 128;
        boolean z2 = i2 % 2 == 0;
        v(iUnityAdsListener);
        if (z2) {
            throw null;
        }
        int i3 = y + 121;
        z = i3 % 128;
        int i4 = i3 % 2;
    }

    private static String x(BannerView bannerView) {
        int i2 = z + 115;
        y = i2 % 128;
        int i3 = i2 % 2;
        String placementId = bannerView.getPlacementId();
        int i4 = z + 53;
        y = i4 % 128;
        int i5 = i4 % 2;
        return placementId;
    }

    private static void y(IUnityAdsListener iUnityAdsListener) {
        int i2 = y + 47;
        z = i2 % 128;
        int i3 = i2 % 2;
        UnityAds.setListener(iUnityAdsListener);
        int i4 = z + 19;
        y = i4 % 128;
        if (!(i4 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void z(BannerView bannerView, BannerView.IListener iListener) {
        int i2 = y + 63;
        z = i2 % 128;
        char c2 = i2 % 2 == 0 ? (char) 30 : 'W';
        q(bannerView, iListener);
        if (c2 == 30) {
            throw null;
        }
        int i3 = z + 105;
        y = i3 % 128;
        int i4 = i3 % 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Enum m420(java.lang.String r7) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.cb.z
            int r0 = r0 + 125
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cb.y = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            r3 = 0
            if (r0 != r2) goto L8f
            int r0 = r7.hashCode()
            r4 = 183181625(0xaeb2139, float:2.2642174E-32)
            r5 = 4
            r6 = -1
            if (r0 == r4) goto L50
            r4 = 2066319421(0x7b29883d, float:8.802614E35)
            if (r0 == r4) goto L26
        L24:
            r1 = -1
            goto L7a
        L26:
            int[] r0 = new int[r5]
            r0 = {x0096: FILL_ARRAY_DATA , data: [-1799536643, 504056464, -1243306243, 892933821} // fill-array
            int r4 = android.view.ViewConfiguration.getScrollDefaultDelay()
            int r4 = r4 >> 16
            int r4 = r4 + 6
            java.lang.String r0 = o(r0, r4)
            java.lang.String r0 = r0.intern()
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L24
            int r7 = com.json.adqualitysdk.sdk.i.cb.z
            int r7 = r7 + 87
            int r0 = r7 % 128
            com.json.adqualitysdk.sdk.i.cb.y = r0
            int r7 = r7 % 2
            if (r7 == 0) goto L4e
            goto L7a
        L4e:
            r1 = 1
            goto L7a
        L50:
            int[] r0 = new int[r5]
            r0 = {x00a2: FILL_ARRAY_DATA , data: [155594781, -1739150510, 1120371864, -1713041262} // fill-array
            int r4 = android.os.Process.myTid()
            int r4 = r4 >> 22
            int r4 = r4 + 8
            java.lang.String r0 = o(r0, r4)
            java.lang.String r0 = r0.intern()
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L6d
            r7 = 0
            goto L6e
        L6d:
            r7 = 1
        L6e:
            if (r7 == r2) goto L24
            int r7 = com.json.adqualitysdk.sdk.i.cb.y
            int r7 = r7 + 61
            int r0 = r7 % 128
            com.json.adqualitysdk.sdk.i.cb.z = r0
            int r7 = r7 % 2
        L7a:
            if (r1 == 0) goto L82
            if (r1 == r2) goto L7f
            return r3
        L7f:
            com.unity3d.services.core.request.WebRequestEvent r7 = com.unity3d.services.core.request.WebRequestEvent.FAILED
            return r7
        L82:
            com.unity3d.services.core.request.WebRequestEvent r7 = com.unity3d.services.core.request.WebRequestEvent.COMPLETE
            int r0 = com.json.adqualitysdk.sdk.i.cb.y
            int r0 = r0 + 123
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.cb.z = r1
            int r0 = r0 % 2
            return r7
        L8f:
            r7.hashCode()
            throw r3     // Catch: java.lang.Throwable -> L93
        L93:
            r7 = move-exception
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cb.m420(java.lang.String):java.lang.Enum");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011c  */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Enum m421(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 490
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cb.m421(java.lang.String):java.lang.Enum");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m422() {
        int i2 = z + 69;
        y = i2 % 128;
        int i3 = i2 % 2;
        String gameId = ClientProperties.getGameId();
        int i4 = z + 35;
        y = i4 % 128;
        if ((i4 % 2 != 0 ? 'D' : '!') != 'D') {
            return gameId;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m423() {
        int i2 = y + 47;
        z = i2 % 128;
        int i3 = i2 % 2;
        WebViewApp currentApp = WebViewApp.getCurrentApp();
        int i4 = z + 43;
        y = i4 % 128;
        int i5 = i4 % 2;
        return currentApp;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m424(Object obj) {
        int i2 = z + 17;
        y = i2 % 128;
        boolean z2 = i2 % 2 == 0;
        WebViewApp.setCurrentApp((o) obj);
        if (!z2) {
            int i3 = 16 / 0;
        }
        int i4 = z + 35;
        y = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(s(null, null, 127 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), "\u0094\u0094\u0087\u0093\u008d\u0084\u0092\u0091\u008d\u0090\u0085\u0083\u008d\u008f\u008f\u0097\u0099\u0085\u008d\u009b").intern(), new g(this));
        map.put(s(null, null, KeyEvent.keyCodeFromString("") + 127, "\u0094\u0094\u0087\u0093\u008d\u0084\u0092\u0091\u008d\u0090¢§\u008d\u0085\u009a\u008d\u008f¥").intern(), new l());
        map.put(s(null, null, Color.rgb(0, 0, 0) + 16777343, "\u0094\u0094\u0087\u0093\u008d\u0084\u0092\u0091\u008d\u0090\u0085\u0083\u008d\u008f\u008f\u0097\u0099\u0085\u008d\u0089").intern(), new k(this));
        map.put(s(null, null, 126 - ExpandableListView.getPackedPositionChild(0L), "\u0088\u008a\u008d¡\u009a¨\u0085\u008d\u009b").intern(), new a(this));
        map.put(s(null, null, ImageFormat.getBitsPerPixel(0) + 128, "\u008f\u008d\u0083\u008d\u0085\u0089\u0084\u008e\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0085\u008d\u009b").intern(), new n());
        map.put(s(null, null, ExpandableListView.getPackedPositionChild(0L) + 128, "\u008f\u008d\u0083\u008d\u0085\u0089\u0084\u008e\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0085\u008d\u0089").intern(), new m());
        map.put(s(null, null, 126 - TextUtils.lastIndexOf("", '0', 0, 0), "\u008f\u008d\u0083\u008d\u0085\u0089\u0084\u008e\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0088\u0088\u009a").intern(), new b());
        map.put(s(null, null, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 127, "\u008f\u008d\u0083\u008d\u0085\u0089\u0084\u008e\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u008d\u0098\u009c¡\u008d\u008f").intern(), new e());
        map.put(o(new int[]{-664429836, -1967105756, 59012030, 2099258313, 417398896, -1233673109, 2081814609, 853335570, -632814708, -1210345142, -1895848926, 1530812825}, 23 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern(), new d(this));
        map.put(s(null, null, 127 - (ViewConfiguration.getKeyRepeatDelay() >> 16), "\u0085\u0083\u008d\u0098\u008b\u0085\u0089\u008d\u0097\u0096\u008d\u0095\u0091\u008d\u0090\u0085\u008d\u009b").intern(), new h(this));
        map.put(s(null, null, TextUtils.indexOf("", "") + 127, "\u0088\u008a\u0085\u0083\u008d¡\u008d¥\u009a£©\u0085\u008d\u009b").intern(), new j());
        map.put(s(null, null, 127 - (ViewConfiguration.getFadingEdgeLength() >> 16), "\u008f\u008d\u0083\u008d\u0085\u0089\u0084\u008e\u008f\u008d\u0083\u0083\u009a¢\u0085\u008d\u009b").intern(), new i());
        map.put(s(null, null, View.MeasureSpec.getSize(0) + 127, "\u008f\u008d\u0083\u008d\u0085\u0089\u0084\u008e\u008f\u008d\u0083\u0083\u009a¢\u0085\u008d\u0089").intern(), new f());
        int i2 = y + 55;
        z = i2 % 128;
        if ((i2 % 2 == 0 ? 'R' : 'S') != 'R') {
            return map;
        }
        int i3 = 94 / 0;
        return map;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Object m425(Object obj, ch chVar) {
        o oVar = new o((WebViewApp) obj, chVar);
        int i2 = y + 51;
        z = i2 % 128;
        int i3 = i2 % 2;
        return oVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0124  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo384(java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 1886
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cb.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = y + 33;
        z = i2 % 128;
        if ((i2 % 2 == 0 ? 'Y' : '\t') == 'Y') {
            UnityAds.getVersion();
            throw null;
        }
        String version = UnityAds.getVersion();
        if (!(version != null)) {
            return null;
        }
        String str = version.split(s(null, null, View.MeasureSpec.getSize(0) + 127, "\u0081").intern())[0];
        int i3 = z + 39;
        y = i3 % 128;
        int i4 = i3 % 2;
        return str;
    }
}
