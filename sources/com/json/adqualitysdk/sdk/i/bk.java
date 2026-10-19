package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.facebook.ads.Ad;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.facebook.ads.BuildConfig;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdSdkVersion;
import com.json.adqualitysdk.sdk.i.az;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class bk extends az {
    private static int t = 54;
    private static long u = -2279948992112736615L;
    private static int v = 0;
    private static int w = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.w(bk.this, (WeakHashMap) list.get(0), chVar);
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.p((AdView) list.get(0));
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.v();
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.o();
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.t((Ad) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bk.D((AdView) list.get(0), (AdListener) list.get(1));
            return null;
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.s();
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bk.n((AdAdapter) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bk.z((InterstitialAd) list.get(0), (InterstitialAdListener) list.get(1));
            return null;
        }
    }

    class j extends WeakHashMap<View, WeakReference<Object>> implements gy<WeakHashMap<View, WeakReference<Object>>> {
        private static char a = 433;
        private static char b = 15591;
        private static char c = 51770;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char f5382d = 56019;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5383e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5384f = 1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ch f5385g;

        public j(WeakHashMap<View, WeakReference<Object>> weakHashMap, ch chVar) {
            super(weakHashMap);
            this.f5385g = chVar;
        }

        private static String a(String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (o.f139) {
                char[] cArr2 = new char[cArr.length];
                o.f138 = 0;
                char[] cArr3 = new char[2];
                while (true) {
                    int i2 = o.f138;
                    if (i2 < cArr.length) {
                        cArr3[0] = cArr[i2];
                        cArr3[1] = cArr[i2 + 1];
                        int i3 = 58224;
                        for (int i4 = 0; i4 < 16; i4++) {
                            cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5382d)));
                            cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + a)) ^ ((cArr3[1] >>> 5) + b)));
                            i3 -= 40503;
                        }
                        int i5 = o.f138;
                        cArr2[i5] = cArr3[0];
                        cArr2[i5 + 1] = cArr3[1];
                        o.f138 = i5 + 2;
                    } else {
                        str2 = new String(cArr2, 0, i);
                    }
                }
            }
            return str2;
        }

        private WeakReference<Object> b(View view, WeakReference<Object> weakReference) {
            int i = f5383e + 73;
            f5384f = i % 128;
            int i2 = i % 2;
            bk.this.f(this, this.f5385g, a("ꡠ\uea8a\ud88f鰿캮礰\udcd6\udd68\ue304栘ᓝ\uf5a6莨ᱻ⃞\uf8a7虩\ue314㪿穈ཛㅇ칅愇", 23 - (KeyEvent.getMaxKeyCode() >> 16)).intern(), view, weakReference);
            WeakReference<Object> weakReference2 = (WeakReference) super.put(view, weakReference);
            int i3 = f5383e + 15;
            f5384f = i3 % 128;
            int i4 = i3 % 2;
            return weakReference2;
        }

        private WeakHashMap<View, WeakReference<Object>> c() {
            int i = f5383e + 111;
            int i2 = i % 128;
            f5384f = i2;
            int i3 = i % 2;
            int i4 = i2 + 113;
            f5383e = i4 % 128;
            if ((i4 % 2 != 0 ? 'I' : '^') == '^') {
                return this;
            }
            throw null;
        }

        @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
        public /* synthetic */ Object put(Object obj, Object obj2) {
            int i = f5384f + 73;
            f5383e = i % 128;
            int i2 = i % 2;
            WeakReference<Object> weakReferenceB = b((View) obj, (WeakReference) obj2);
            int i3 = f5383e + 27;
            f5384f = i3 % 128;
            if ((i3 % 2 == 0 ? 'C' : 'P') == 'P') {
                return weakReferenceB;
            }
            int i4 = 6 / 0;
            return weakReferenceB;
        }

        @Override // com.json.adqualitysdk.sdk.i.gy
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ WeakHashMap<View, WeakReference<Object>> mo406() {
            int i = f5384f + 9;
            f5383e = i % 128;
            int i2 = i % 2;
            WeakHashMap<View, WeakReference<Object>> weakHashMapC = c();
            int i3 = f5383e + 39;
            f5384f = i3 % 128;
            if (i3 % 2 != 0) {
                return weakHashMapC;
            }
            throw null;
        }
    }

    public bk(String str) {
        super(str);
    }

    private static String A(int i2, boolean z, int i3, int i4, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.c.f35) {
            char[] cArr2 = new char[i4];
            com.json.adqualitysdk.sdk.i.c.f36 = 0;
            while (true) {
                int i5 = com.json.adqualitysdk.sdk.i.c.f36;
                if (i5 >= i4) {
                    break;
                }
                com.json.adqualitysdk.sdk.i.c.f37 = cArr[i5];
                cArr2[com.json.adqualitysdk.sdk.i.c.f36] = (char) (com.json.adqualitysdk.sdk.i.c.f37 + i2);
                int i6 = com.json.adqualitysdk.sdk.i.c.f36;
                cArr2[i6] = (char) (cArr2[i6] - t);
                com.json.adqualitysdk.sdk.i.c.f36 = i6 + 1;
            }
            if (i3 > 0) {
                com.json.adqualitysdk.sdk.i.c.f38 = i3;
                char[] cArr3 = new char[i4];
                System.arraycopy(cArr2, 0, cArr3, 0, i4);
                int i7 = com.json.adqualitysdk.sdk.i.c.f38;
                System.arraycopy(cArr3, 0, cArr2, i4 - i7, i7);
                int i8 = com.json.adqualitysdk.sdk.i.c.f38;
                System.arraycopy(cArr3, i8, cArr2, 0, i4 - i8);
            }
            if (z) {
                char[] cArr4 = new char[i4];
                com.json.adqualitysdk.sdk.i.c.f36 = 0;
                while (true) {
                    int i9 = com.json.adqualitysdk.sdk.i.c.f36;
                    if (i9 >= i4) {
                        break;
                    }
                    cArr4[i9] = cArr2[(i4 - i9) - 1];
                    com.json.adqualitysdk.sdk.i.c.f36 = i9 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    private static String B(AdView adView) {
        int i2 = v + 31;
        w = i2 % 128;
        int i3 = i2 % 2;
        String placementId = adView.getPlacementId();
        int i4 = w + 55;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 24 : 'W') == 'W') {
            return placementId;
        }
        int i5 = 88 / 0;
        return placementId;
    }

    private static String C(String str, int i2) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (com.json.adqualitysdk.sdk.i.f.f54) {
            char[] cArrM713 = com.json.adqualitysdk.sdk.i.f.m713(u, cArr, i2);
            com.json.adqualitysdk.sdk.i.f.f52 = 4;
            while (true) {
                int i3 = com.json.adqualitysdk.sdk.i.f.f52;
                if (i3 < cArrM713.length) {
                    com.json.adqualitysdk.sdk.i.f.f53 = i3 - 4;
                    cArrM713[com.json.adqualitysdk.sdk.i.f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) com.json.adqualitysdk.sdk.i.f.f53) * u));
                    com.json.adqualitysdk.sdk.i.f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    static /* synthetic */ void D(AdView adView, AdListener adListener) {
        int i2 = w + 117;
        v = i2 % 128;
        int i3 = i2 % 2;
        q(adView, adListener);
        int i4 = w + 43;
        v = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
    }

    private static String k() {
        int i2 = w + 79;
        v = i2 % 128;
        String strIntern = C("뎚돼祓㾫蕆ࠗ㘌\ue5a2ꦜ弹⊿௦蜀䒯䓋\ued50ﳄꨊ好윱\uda5c迫珠\ud89c、\uf563鐎뉹ⶁ\udb3b꺾韥୫삟샚楎惏♢", -TextUtils.indexOf("", (i2 % 2 != 0 ? 'M' : '^') != '^' ? (char) 4 : '0')).intern();
        int i3 = w + 111;
        v = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    private static DynamicLoader l() {
        DynamicLoader dynamicLoader;
        int i2 = w + 81;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 23 : 'J') != 23) {
            dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        } else {
            dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
            int i3 = 6 / 0;
        }
        int i4 = w + 77;
        v = i4 % 128;
        int i5 = i4 % 2;
        return dynamicLoader;
    }

    private static String m() {
        int i2 = v + 39;
        w = i2 % 128;
        return ((i2 % 2 == 0 ? '1' : (char) 22) != 22 ? A(24291 >> Color.red(1), true, 3 >>> TextUtils.getCapsMode("", 0, 1), 3 >> (AudioTrack.getMaxVolume() > 1.0f ? 1 : (AudioTrack.getMaxVolume() == 1.0f ? 0 : -1)), "\u0005\ufffa\u000b\ufffe\ufffa\f￩\u000e") : A(161 - Color.red(0), false, TextUtils.getCapsMode("", 0, 0) + 2, 9 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), "\u0005\ufffa\u000b\ufffe\ufffa\f￩\u000e")).intern();
    }

    static /* synthetic */ AdPlacementType n(AdAdapter adAdapter) {
        int i2 = v + 27;
        w = i2 % 128;
        int i3 = i2 % 2;
        AdPlacementType adPlacementTypeU = u(adAdapter);
        int i4 = w + 83;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '<' : '\f') != '<') {
            return adPlacementTypeU;
        }
        int i5 = 91 / 0;
        return adPlacementTypeU;
    }

    static /* synthetic */ String o() {
        int i2 = v + 7;
        w = i2 % 128;
        if (!(i2 % 2 != 0)) {
            m();
            throw null;
        }
        String strM = m();
        int i3 = v + 69;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return strM;
        }
        throw null;
    }

    static /* synthetic */ String p(AdView adView) {
        int i2 = w + 3;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'M' : '(') == 'M') {
            B(adView);
            throw null;
        }
        String strB = B(adView);
        int i3 = v + 77;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return strB;
        }
        throw null;
    }

    private static void q(AdView adView, AdListener adListener) {
        int i2 = w + 5;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? ']' : '>';
        adView.setAdListener(adListener);
        if (c2 == ']') {
            throw null;
        }
        int i3 = w + 73;
        v = i3 % 128;
        int i4 = i3 % 2;
    }

    private static void r(InterstitialAd interstitialAd, InterstitialAdListener interstitialAdListener) {
        int i2 = v + 53;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        interstitialAd.setAdListener(interstitialAdListener);
        if (z) {
            throw null;
        }
    }

    static /* synthetic */ DynamicLoader s() {
        DynamicLoader dynamicLoaderL;
        int i2 = v + 125;
        w = i2 % 128;
        if (i2 % 2 == 0) {
            dynamicLoaderL = l();
            int i3 = 4 / 0;
        } else {
            dynamicLoaderL = l();
        }
        int i4 = w + 123;
        v = i4 % 128;
        int i5 = i4 % 2;
        return dynamicLoaderL;
    }

    static /* synthetic */ String t(Ad ad) {
        int i2 = w + 121;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strY = y(ad);
        int i4 = v + 81;
        w = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return strY;
        }
        throw null;
    }

    private static AdPlacementType u(AdAdapter adAdapter) {
        int i2 = v + 81;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            return adAdapter.getPlacementType();
        }
        adAdapter.getPlacementType();
        throw null;
    }

    static /* synthetic */ String v() {
        String strK;
        int i2 = w + 35;
        v = i2 % 128;
        if (i2 % 2 == 0) {
            strK = k();
        } else {
            strK = k();
            int i3 = 39 / 0;
        }
        int i4 = w + 55;
        v = i4 % 128;
        if (i4 % 2 == 0) {
            return strK;
        }
        int i5 = 11 / 0;
        return strK;
    }

    static /* synthetic */ WeakHashMap w(bk bkVar, WeakHashMap weakHashMap, ch chVar) {
        int i2 = w + 17;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        WeakHashMap<View, WeakReference<Object>> weakHashMapX = bkVar.x(weakHashMap, chVar);
        if (!z) {
            int i3 = 11 / 0;
        }
        int i4 = w + 51;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? 'P' : 'I') == 'I') {
            return weakHashMapX;
        }
        int i5 = 97 / 0;
        return weakHashMapX;
    }

    private WeakHashMap<View, WeakReference<Object>> x(WeakHashMap<View, WeakReference<Object>> weakHashMap, ch chVar) {
        j jVar = new j(weakHashMap, chVar);
        int i2 = w + 83;
        v = i2 % 128;
        int i3 = i2 % 2;
        return jVar;
    }

    private static String y(Ad ad) {
        int i2 = v + 11;
        w = i2 % 128;
        int i3 = i2 % 2;
        String placementId = ad.getPlacementId();
        int i4 = w + 103;
        v = i4 % 128;
        int i5 = i4 % 2;
        return placementId;
    }

    static /* synthetic */ void z(InterstitialAd interstitialAd, InterstitialAdListener interstitialAdListener) {
        int i2 = w + 5;
        v = i2 % 128;
        int i3 = i2 % 2;
        r(interstitialAd, interstitialAdListener);
        int i4 = v + 63;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(A(152 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), false, Color.red(0) + 4, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 23, "\ufff3\u0006\u0002\u0014\u0004\u0002\u0011￭\t\ufffe\u0000\u0002\n\u0002\u000b\u0011￦\u0001￣\u000f\f\n\uffde\u0001").intern(), new b());
        map.put(A(152 - ((byte) KeyEvent.getModifierMetaStateMask()), true, 2 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), 19 - TextUtils.lastIndexOf("", '0', 0, 0), "\u0002\u0004\u0001\uffde\n\f\u000f￣\u0001￦\u0011\u000b\u0002\n\u0002\u0000\ufffe\t￭\u0011").intern(), new e());
        map.put(A(156 - TextUtils.getCapsMode("", 0, 0), true, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 2, 13 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), "\uffff\r\f\uffff\b\uffff\u000e\r\u0003￦\ufffeￛ\u000e").intern(), new f());
        map.put(A(156 - Process.getGidForName(""), false, 32 - ExpandableListView.getPackedPositionChild(0L), 37 - (ViewConfiguration.getPressedStateDuration() >> 16), "\u000e�\u0002\ufffe\u0007￼\ufffe\uffe7\ufffe\r\u0010\b\u000b\u0004ￚ￼\r\u0002\u000f\u0002\r\u0012\uffef\u0002\ufffe\u0010￭\u0012\t\ufffe￤\ufffe\u0012\u0000\ufffe\rￚ").intern(), new d());
        map.put(A((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 156, true, TextUtils.indexOf((CharSequence) "", '0') + 3, 41 - TextUtils.lastIndexOf("", '0', 0, 0), "\uffff\u0001\u0013\uffff￥\n\u000f\u0005\f\ufffb\uffe7\ufffe\f\ufffb\uffdd\ufffe\b\uffdf\u0013\u000e\u0003\u0010\u0003\u000e�ￛ\u0005\f\t\u0011\u000e\uffff￨\uffff�\b\uffff\u0003\ufffe\u000fￛ\u000e").intern(), new c());
        map.put(A(158 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), true, 18 - (ViewConfiguration.getScrollBarSize() >> 8), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 24, "\u0001￤￼\uffd9\u0004\ufff9\f\u0001\f\u000b\n�\f\u0006￡\f�\u000b\n�\u0006�\f\u000b").intern(), new i());
        map.put(C("䒩䓎ᵏ害吲\ud974烿ꍰ庴㬠\uf3c5䴲瀈₱閄ꮌ\u0be4츒蠉臵", -MotionEvent.axisFromString("")).intern(), new g());
        map.put(C("ܐݷ䣷ซࢬ藪琦ꞽᴘ溗꽙䧷㎵甏줸꽚䡨鮷풂蔯", -((byte) KeyEvent.getModifierMetaStateMask())).intern(), new h());
        map.put(C("䃀䂣\ud84d麦ࢉ藞ざ\ue3fc嫐︾꽋එ瑆\ue5a6줇\ueb06ྚଆ풖셯⤇⻪︪\udecc썼告\u19dc됫\uded5稶⍳", -ImageFormat.getBitsPerPixel(0)).intern(), new a());
        int i2 = v + 79;
        w = i2 % 128;
        if (i2 % 2 != 0) {
            return map;
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03aa  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 1170
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bk.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = w + 41;
        v = i2 % 128;
        int i3 = i2 % 2;
        try {
            try {
                try {
                    String str = (String) hq.m770().m772().m733(AdSdkVersion.class, String.class).get(null);
                    int i4 = v + 19;
                    w = i4 % 128;
                    if (i4 % 2 != 0) {
                        return str;
                    }
                    int i5 = 36 / 0;
                    return str;
                } catch (Throwable unused) {
                    return hq.m770().m771().m775(BuildConfig.class, A(130 - KeyEvent.keyCodeFromString(""), true, TextUtils.indexOf("", "", 0, 0) + 2, 11 - KeyEvent.normalizeMetaState(0), "\u0010\u0012\uffde￢\uffdf\u0011￢\u0018\u0010\u000f\u0018").intern());
                }
            } catch (Throwable unused2) {
                return null;
            }
        } catch (Throwable unused3) {
            return (String) hq.m770().m772().m733(AdSdkVersion.class, String.class).get(null);
        }
    }
}
