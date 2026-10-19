package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.os.Bundle;
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
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.amazon.aps.ads.ApsAd;
import com.amazon.aps.ads.ApsAdRequest;
import com.amazon.aps.ads.model.ApsAdFormat;
import com.amazon.device.ads.AdRegistration;
import com.amazon.device.ads.AdType;
import com.amazon.device.ads.DTBAdResponse;
import com.amazon.device.ads.DTBAdSize;
import com.amazon.device.ads.DTBAdView;
import com.amazon.device.ads.DTBFetchFactory;
import com.amazon.device.ads.DTBFetchManager;
import com.json.adqualitysdk.sdk.i.az;
import com.json.mediationsdk.logger.IronSourceError;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class bg extends az {
    private static char[] t = null;
    private static long u = 0;
    private static int v = 0;
    private static int w = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.H((ApsAd) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.P();
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.O((ApsAd) list.get(0));
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.t((ApsAd) list.get(0));
        }
    }

    final class e implements az.d {
        e() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.Y((ApsAd) list.get(0));
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.b0((ApsAd) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.Z((DTBAdResponse) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.M((DTBAdResponse) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.B((ApsAd) list.get(0));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.T((DTBAdResponse) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.U((DTBAdSize) list.get(0));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.K((DTBAdResponse) list.get(0));
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.A((DTBAdResponse) list.get(0));
        }
    }

    final class n implements az.d {
        n() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.a0((DTBAdResponse) list.get(0));
        }
    }

    final class o implements az.d {
        o() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.C((DTBAdResponse) list.get(0));
        }
    }

    final class p implements az.d {
        p() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.G();
        }
    }

    final class q implements az.d {
        q() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.V((DTBAdSize) list.get(0));
        }
    }

    final class r implements az.d {
        r() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.c0((DTBAdResponse) list.get(0), (DTBAdSize) list.get(1));
        }
    }

    final class s implements az.d {
        s() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.J((DTBAdSize) list.get(0));
        }
    }

    final class t implements az.d {
        t() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.W(bg.this, (ThreadPoolExecutor) list.get(0), chVar);
        }
    }

    final class u implements az.d {
        u() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.L((ApsAd) list.get(0));
        }
    }

    final class v implements az.d {
        v() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bg.Q(bg.this, (HashMap) list.get(0), chVar);
        }
    }

    final class w implements az.d {
        w() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(bg.N((DTBAdSize) list.get(0)));
        }
    }

    class x extends HashMap<String, DTBFetchManager> implements gy<HashMap<String, DTBFetchManager>> {
        private static char[] a = {'D', 'T', 'B', 'F', 'e', 't', 'c', 'h', 'M', 'a', 'n', 'g', 'r', 'k', 'H', 's', 'p', '.', 'u', 'E', 'G', 'I', 'J', 'K', 'L'};
        private static char b = 5;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5372d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ch f5373e;

        public x(HashMap<String, DTBFetchManager> map, ch chVar) {
            super(map);
            this.f5373e = chVar;
        }

        private HashMap<String, DTBFetchManager> d() {
            int i = c + 79;
            int i2 = i % 128;
            f5372d = i2;
            if (!(i % 2 != 0)) {
                throw null;
            }
            int i3 = i2 + 121;
            c = i3 % 128;
            int i4 = i3 % 2;
            return this;
        }

        private DTBFetchManager e(String str, DTBFetchManager dTBFetchManager) {
            int i = f5372d + 1;
            c = i % 128;
            int i2 = i % 2;
            bg.this.f(this, this.f5373e, f((byte) (7 - TextUtils.getOffsetBefore("", 0)), "\u0001\u0002\u0003\u0004\u0000\t\u0007\b\t\u0005\u000e\u0005\u000e\u0001\r\u000e\u0013\u000e\u0011\u0005\t\u0005\u0011\u0012\u0011\u0013{", 27 - (Process.myPid() >> 22)).intern(), str, dTBFetchManager);
            DTBFetchManager dTBFetchManager2 = (DTBFetchManager) super.put(str, dTBFetchManager);
            int i3 = f5372d + 79;
            c = i3 % 128;
            if (!(i3 % 2 != 0)) {
                return dTBFetchManager2;
            }
            throw null;
        }

        private static String f(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                char[] cArr2 = a;
                char c2 = b;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
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
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b2);
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b2);
                        } else {
                            com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c2;
                            com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c2;
                            com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c2;
                            com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c2;
                            if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                                com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c2) - 1) % c2;
                                int i3 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i4 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i5 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                                com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c2) - 1) % c2;
                                int i6 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i7 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i8 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i10 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
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

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public /* synthetic */ Object put(Object obj, Object obj2) {
            int i = c + 67;
            f5372d = i % 128;
            int i2 = i % 2;
            DTBFetchManager dTBFetchManagerE = e((String) obj, (DTBFetchManager) obj2);
            int i3 = f5372d + 105;
            c = i3 % 128;
            int i4 = i3 % 2;
            return dTBFetchManagerE;
        }

        @Override // com.json.adqualitysdk.sdk.i.gy
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ HashMap<String, DTBFetchManager> mo406() {
            int i = f5372d + 61;
            c = i % 128;
            int i2 = i % 2;
            HashMap<String, DTBFetchManager> mapD = d();
            int i3 = c + 61;
            f5372d = i3 % 128;
            int i4 = i3 % 2;
            return mapD;
        }
    }

    class y extends ThreadPoolExecutor implements gy<ThreadPoolExecutor> {
        private static char[] a = {'T', 'B', 'E', 'x', 'e', 'c', 'u', 't', 'o', 'r', 'S', 'v', 'i', '.', 'U', 'V'};
        private static char b = 4;
        private static int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5375d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ch f5376e;

        /* JADX WARN: Illegal instructions before constructor call */
        public y(ThreadPoolExecutor threadPoolExecutor, ch chVar) {
            int corePoolSize = threadPoolExecutor.getCorePoolSize();
            int maximumPoolSize = threadPoolExecutor.getMaximumPoolSize();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            super(corePoolSize, maximumPoolSize, threadPoolExecutor.getKeepAliveTime(timeUnit), timeUnit, threadPoolExecutor.getQueue());
            this.f5376e = chVar;
        }

        private static String a(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (com.json.adqualitysdk.sdk.i.g.f56) {
                char[] cArr2 = a;
                char c2 = b;
                char[] cArr3 = new char[i];
                if (i % 2 != 0) {
                    i--;
                    cArr3[i] = (char) (cArr[i] - b2);
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
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60] = (char) (com.json.adqualitysdk.sdk.i.g.f58 - b2);
                            cArr3[com.json.adqualitysdk.sdk.i.g.f60 + 1] = (char) (com.json.adqualitysdk.sdk.i.g.f62 - b2);
                        } else {
                            com.json.adqualitysdk.sdk.i.g.f59 = com.json.adqualitysdk.sdk.i.g.f58 / c2;
                            com.json.adqualitysdk.sdk.i.g.f55 = com.json.adqualitysdk.sdk.i.g.f58 % c2;
                            com.json.adqualitysdk.sdk.i.g.f61 = com.json.adqualitysdk.sdk.i.g.f62 / c2;
                            com.json.adqualitysdk.sdk.i.g.f57 = com.json.adqualitysdk.sdk.i.g.f62 % c2;
                            if (com.json.adqualitysdk.sdk.i.g.f55 == com.json.adqualitysdk.sdk.i.g.f57) {
                                com.json.adqualitysdk.sdk.i.g.f59 = ((com.json.adqualitysdk.sdk.i.g.f59 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f61 = ((com.json.adqualitysdk.sdk.i.g.f61 + c2) - 1) % c2;
                                int i3 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i4 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i5 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i5] = cArr2[i3];
                                cArr3[i5 + 1] = cArr2[i4];
                            } else if (com.json.adqualitysdk.sdk.i.g.f59 == com.json.adqualitysdk.sdk.i.g.f61) {
                                com.json.adqualitysdk.sdk.i.g.f55 = ((com.json.adqualitysdk.sdk.i.g.f55 + c2) - 1) % c2;
                                com.json.adqualitysdk.sdk.i.g.f57 = ((com.json.adqualitysdk.sdk.i.g.f57 + c2) - 1) % c2;
                                int i6 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
                                int i7 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i8 = com.json.adqualitysdk.sdk.i.g.f60;
                                cArr3[i8] = cArr2[i6];
                                cArr3[i8 + 1] = cArr2[i7];
                            } else {
                                int i9 = (com.json.adqualitysdk.sdk.i.g.f59 * c2) + com.json.adqualitysdk.sdk.i.g.f57;
                                int i10 = (com.json.adqualitysdk.sdk.i.g.f61 * c2) + com.json.adqualitysdk.sdk.i.g.f55;
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

        private ThreadPoolExecutor b() {
            int i = c + 113;
            int i2 = i % 128;
            f5375d = i2;
            int i3 = i % 2;
            int i4 = i2 + 67;
            c = i4 % 128;
            int i5 = i4 % 2;
            return this;
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            int i = f5375d + 31;
            c = i % 128;
            int i2 = i % 2;
            bg.this.f(this, this.f5376e, a((byte) (View.combineMeasuredStates(0, 0) + 66), "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\t\n\b\u0006\n\b\r\u0004\u0005\f\u0007\u0000\u0005\u0006\u0007\u0004§", 25 - Drawable.resolveOpacity(0, 0)).intern(), runnable);
            super.execute(runnable);
            int i3 = f5375d + 91;
            c = i3 % 128;
            if (i3 % 2 == 0) {
            } else {
                throw null;
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.gy
        /* JADX INFO: renamed from: ﾇ */
        public final /* synthetic */ ThreadPoolExecutor mo406() {
            int i = c + 93;
            f5375d = i % 128;
            if (i % 2 == 0) {
                b();
                throw null;
            }
            ThreadPoolExecutor threadPoolExecutorB = b();
            int i2 = c + 99;
            f5375d = i2 % 128;
            if (i2 % 2 != 0) {
                return threadPoolExecutorB;
            }
            int i3 = 24 / 0;
            return threadPoolExecutorB;
        }
    }

    static {
        char[] cArr = new char[1191];
        ByteBuffer.wrap("¦ÞnÐ6ÉþÆ\u0086\u0083N\u009e\u0016¨Þ\u0098æý®\u0081v½>°Æ¢\u0000AÈn\u0090FX{ Oè[°Ox2@\"\b;Ð\u0010\u0098\u0007`\u0017(ì\u0000DÈ^\u0090VX_ KèF°Ux0@9\b.Ð\u001d\u0000cÈe\u0090yX0 Iè_°]x<@?\b4ÐJ\u0098\n`\u001d(ôðå¸õ\u0080ÅH\u0084\u0010ÕØÚ »hü0\u0098ø²À²\u0088»Qg\u0019záq©TqE9B\u00019tG¼]äU,TTE\u009cEÄZ\f74 |-¤\u000eì\u0019\u0014\u0012\\à\u0084ãÌÔôÀ<ÝdÞ¬ËÔ¢\u001c¥D¦\u001e\u009dÖ\u009b\u008e\u0087FÎ>·ö¡®£fÂ^Á\u0016ÊÎ´\u0086ô~ã6\nî\u001b¦\u000b\u009e;Vz\u000e+Æ$¾Ev\u0002.fæLÞL\u0096MO\u0094\u0007\u0084ÿ\u0083·®o¡'¼\u001f××À\u008fÃGÁ?ú÷Í¯ág\f_\u0007\u0017\u0012Ï3\u0087$\u007f?\u0000DÈ^\u0090VX_ Lès°_x2@9\b,Ð\r\u0098\u001a`\u0001.\u0004æ\u0002¾\u001evW\u000e.Æ8\u009e:V[nX&Sþ-¶mNz\u0006\u0093Þ\u0082\u0096\u0092®¢fã>²ö½\u008eÜF\u009b\u001eÿÖÕîÕ¦Ü\u007f\u00077(Ï\u001c\u00871_\"\u0017'/NçY¿J\u0000DÈ^\u0090VX_ Lè{°Rx2@5\b(Ð\u0017\u0098\u001a`\u0011(öðå¸÷\u0080Ì\u0000DÈ^\u0090VX_ Lè~°Sx'@4\b?Ð\u0016\u0000DÈ^\u0090VX_ Lè`°Yx7@%\b?Ð\u0017\u0098\u001a\u0000DÈ^\u0090VX_ Lè`°Yx5@ \b5Ð\n\u0098\u001d`\u001d÷©?³g»¯²×¡\u001f\u0089G¸\u008fÎ·Ê\u0000cÈe\u0090yX0 Iè_°]x<@?\b4ÐJ\u0098\n`\u001d(ôðå¸õ\u0080ÅH\u0084\u0010ÕØÚ »hü0\u0098ø²À²\u0088»Q`\u0019Xáq©Gq[\u0000DÈ^\u0090VX_ Lèa°Ux<@51êùð¡øiñ\u0011âÙÊ\u0081ûI\u008dq\u00899§á¿©°Q¦\u0019CÁP\u0089L±Myh!séu\u0091\bY\b\u0000DÈ^\u0090VXX MèF°_x.@\u0016\b;Ð\u0007\u0098\u001a`\u0017(ððõ\u0000DÈ^\u0090VXX MèF°_x.@\u001d\b;Ð\n\u0098\u000f`\u001f(çðþ\u0000DÈ^\u0090VXL Mè\\°Xx#@\"\b?Ð\u0016½Zu@-HåA\u009dRUn\rCÅ6ý µ!m\b%<Ý\u000f\u0095ïMæ\u0005í=ÐõÑ\u00adØ\u0000DÈ^\u0090VX_ Lèp°]x5@5\b\u0018Ð\u0005\u0098\u0000`\u0016(çðþ¸Ú\u0080ÉHÙ\u0010ÀØÛ ¦h·0®\u0000DÈ^\u0090VX_ Lèp°]x5@5\b\u0013Ð\n\u0098\u001a`\u001d(ððÿ¸â\u0080ÉHÞ\u0010ÝØß ¤h\u009e0µø\u0095À\u0084\u0088\u009fQj\u0019káj\u0000DÈ^\u0090VX_ Lèq°]x*@<\b8Ð\u0005\u0098\r`\u0013\u0000DÈ^\u0090VX_ Lèw°Dx6@1\b4Ð\u0000\u0098\u000b`\u001c(Îðå¸å\u0080ÔHÏ\u0010ÚØÛ º\u0000oÈu\u0090}Xt gèP°yx\u0019@\u001e\b\u0003Ð<\u00981`:(ÝðÎ¸Ü\u0080çHÍ\u0010öØæ \u0097h\u009c0\u0099ø¨À©\u0000DÈ^\u0090VX_ Lè~°Ux5@$\b?Ð\n\u0098\u000b`\n\u0000TÈH\u0090YX\u007f FèS°[x#@\"\b\u0012Ð\u0005\u0098\u001d`\u0010(Ïðí¸æ\u001eÍÖÑ\u008eÈFÿ>ÔöÈ®Ðf«^¦\u0016±Î®\u0086\u0092~\u00936mî|¦l\u009e\\²#z\u0018\"\u0005ê5\u0092$Z$\u0002;ÊVòAºLbo*xÒs\u009a\u0081B\u0082\nµ2¡ú¼¢¿jª\u0012ÃÚÄ\u0082Ç\u0000cÈe\u0090yX0 Iè_°]x<@?\b4ÐJ\u0098\u000f`\b(ñð¢¸÷\u0080ÄHÙ\u0010\u009aØß «h¦0µø\u0090À\u0099\u0088\u008eQ}\u0019 áY©Rq_9\u007f\u0001.É>\u00911Y,!\u001bé\u0006±\u0015yòAù\tûÑÈ\u0099ïaÛ)¶ñ¥¹ \u0081\u0089I\u009e\u0011\u008d¿9w\u0002/\u001fç'\u009f4W\u000b\u000f'ÇJÿA·Tou'bßy\u0000cÈe\u0090yX0 Iè_°]x<@?\b4ÐJ\u0098\u000f`\b(ñð¢¸÷\u0080ÄHÙ\u0010\u009aØß «h¦0µø\u0090À\u0099\u0088\u008eQ}\u0019 áY©Rq_9w\u0001$É\u000b\u00917Y*!\u0001é\u0004±\u0015yòAéé\"!\u0019y\u0004±<É/\u0001\u0007Y6\u0091@©Dð_8d`yî'&\u001c~\u0001¶9Î*:\u0003ò8ª%b\u001d\u001a\u000eÒ3\u008a\u0011Bjzf2jêI¢@ZV\u0012¥Ê¼\u0000AÈz\u0090gX_ Lè~°Ux5@$\b?Ð\n\u0098\u000b`\nl|¤GüZ4bLq\u0084]Üd\u0014\n,\u0018d\u0002¼*ô'\f\tDÖ\u009cÂÔßìø$ù|ì´ñ\u001e¬Ö\u0097\u008e\u008aF²>¡ö\u0099®¾fÙ^Ð\u0016ÖÎý\u0000AÈz\u0090gX_ Lèf°Ex6@5\u0000AÈz\u0090gX_ Lè`°Yx7@%\b?Ð\u0017\u0098\u001aèÀ ÈxÇ°øÈÿ\u0000åXÐ\u0090\u0084¨\u008eTs\u009c{Ät\fLtY¼RäK,:\u0014\u0002\\/\u0084\u0013Ì\u000e4\u0003|ä¤áìËÔÚ\u001cÍDÔ\u008cËô²<¥d\u00ad\u0000gÈo\u0090`X_ Lè`°Yx5@ \b5Ð\n\u0098\u001d`\u001d(Àðå¸ò\u0080éHÎ\u0000gÈo\u0090`X_ Lè`°Yx5@ \b5Ð\n\u0098\u001d`\u001d(Áðþ¸ó\u0080ÁHÞ\u0010ÝØÈ \u00adh\u009b0¸Ñ\u009e\u0019\u0096A\u0099\u0089¦ñµ9\u0099a ©Ì\u0091ÙÙÌ\u0001óIä±äù2!\u0018i\u001fQ+\u00996Á>\t4qX¹DáK)J\u0011{Yo\u0000gÈo\u0090`X_ Lè`°Yx5@ \b5Ð\n\u0098\u001d`\u001d(Ððé¸ø\u0080ÄHÏ\u0010ÆØ× ¦hµ0\u0091ø\u0087À\u0080¹ðqø)÷áÈ\u0099ÛQ÷\tÎÁ¢ù·±¢i\u009d!\u008aÙ\u008a\u0091GI~\u0001o9SñX©Qa@\u00191Ñ\"\u0089\tA\u0004y\t1\tèÿ ü\u0000gÈo\u0090`XZ MèT°]x3@<\b.Ð2\u0098\u0007`\u001c(çðã¸×\u0080ÄHÙ\u0010æØÛ ¹h§0¹ø\u0095À\u0084\u0088¹Qq\u0019}ál©MqA9f\u0001!É8\u00915Y3!\u001b\u0000gÈo\u0090`X_ Lè`°Yx5@ \b5Ð\n\u0098\u001d`\u001d(Ãðè¸åª+b#:,ò\u0013\u008a\u0000B,\u001a\u0015Òyêl¢yzF2QÊQ\u0082\u009eZ²\u0012³*\u008fâ\u0083º¨r\u009d\níÂð\u009aä\u0000gÈo\u0090`X_ Lèa°Ux<@5\b\tÐ\b\u0098\u0001`\f(×ðÙ¸ß\u0080ä\u0000gÈo\u0090`X_ Lèa°Ux<@5\b\u001bÐ\u0000\u0098:`\u0001(òðé¨[`S8\\ðc\u0088p@]\u0018iÐ\u0000è\t 6x-00È\u0017\u0080ÛXÄ\u0010Þ(õàø¸ïpñ\u0000iÈy\u0090UXz {è[°Fx#@\u0019\b4Ð\u0010\u0098\u000b`\n(ñðø¸ÿ\u0080ÔHÃ\u0010ÕØÒ \u0089h¶\u0000cÈx\u0090qX\u007f \\èW°hx\u0004@\u0016\b?Ð\u0010\u0098\r`\u0010(Äðí¸õ\u0080ÔHÅ\u0010ÆØÇ \u0085h³0²ø\u0087À\u0097\u0088\u009fQv\u0019Cáy©R\u0000cÈx\u0090qX\u007f \\èW°hx\u0004@\u0015\b\"Ð\u0001\u0098\r`\r(öðã¸ä\u0080óHÏ\u0010ÆØÈ ¡h±0¹^\u0097\u0096\u009fÎ\u0090\u0006¯~¨¶±î\u008d&Ò\u001eòVÏ\u008eåÆë>ív\u0001®\bþa6inf¦ZÞG\u0016PNs\u0086.¾0ö3¬²dº<µô\u009b\u008c\u008fD\u008e\u001c\u008aÔöìÕ¤à|Ø4ÕÌÙ\u00adZeR=]õp\u008dyE`\u001duÕ.í\u0018¥\u000e}=\u0000gÈo\u0090`X_ XèA°}x\"@\u0016\b5Ð\u0016\u0098\u0003`\u0019(ö\u0000gÈo\u0090`X_ Lè~°Sx'@4\b?Ð\u0016[J\u0093BËM\u0003r{a³Iëx#\u000e\u001b\n".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1191);
        t = cArr;
        u = -5955783007700989942L;
    }

    public bg(String str) {
        super(str);
    }

    static /* synthetic */ List A(DTBAdResponse dTBAdResponse) {
        int i2 = w + 5;
        v = i2 % 128;
        int i3 = i2 % 2;
        List<DTBAdSize> listN = n(dTBAdResponse);
        int i4 = v + 17;
        w = i4 % 128;
        int i5 = i4 % 2;
        return listN;
    }

    static /* synthetic */ DTBAdView B(ApsAd apsAd) {
        int i2 = v + 25;
        w = i2 % 128;
        if (!(i2 % 2 != 0)) {
            m(apsAd);
            throw null;
        }
        DTBAdView dTBAdViewM = m(apsAd);
        int i3 = v + 49;
        w = i3 % 128;
        int i4 = i3 % 2;
        return dTBAdViewM;
    }

    static /* synthetic */ Map C(DTBAdResponse dTBAdResponse) {
        int i2 = w + 87;
        v = i2 % 128;
        int i3 = i2 % 2;
        Map<String, String> mapL = l(dTBAdResponse);
        int i4 = v + 7;
        w = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return mapL;
        }
        int i5 = 69 / 0;
        return mapL;
    }

    private static String D(ApsAd apsAd) {
        int i2 = v + 87;
        w = i2 % 128;
        int i3 = i2 % 2;
        String bidInfo = apsAd.getBidInfo();
        int i4 = w + 91;
        v = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
        return bidInfo;
    }

    private static String E(DTBAdResponse dTBAdResponse) {
        int i2 = v + 19;
        w = i2 % 128;
        int i3 = i2 % 2;
        String crid = dTBAdResponse.getCrid();
        int i4 = w + 7;
        v = i4 % 128;
        int i5 = i4 % 2;
        return crid;
    }

    private static boolean F(DTBAdSize dTBAdSize) {
        int i2 = v + 39;
        w = i2 % 128;
        int i3 = i2 % 2;
        boolean zIsInterstitialAd = dTBAdSize.isInterstitialAd();
        int i4 = v + 87;
        w = i4 % 128;
        if (i4 % 2 != 0) {
            return zIsInterstitialAd;
        }
        int i5 = 8 / 0;
        return zIsInterstitialAd;
    }

    static /* synthetic */ String G() {
        String strM409;
        int i2 = v + 3;
        w = i2 % 128;
        if (!(i2 % 2 != 0)) {
            strM409 = m409();
            int i3 = 78 / 0;
        } else {
            strM409 = m409();
        }
        int i4 = v + 75;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strM409;
    }

    static /* synthetic */ String H(ApsAd apsAd) {
        int i2 = w + 1;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strD = D(apsAd);
        int i4 = w + 81;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strD;
    }

    private static String I(DTBAdResponse dTBAdResponse, DTBAdSize dTBAdSize) {
        int i2 = w + 59;
        v = i2 % 128;
        int i3 = i2 % 2;
        String pricePoints = dTBAdResponse.getPricePoints(dTBAdSize);
        int i4 = v + 11;
        w = i4 % 128;
        if (i4 % 2 != 0) {
            return pricePoints;
        }
        int i5 = 61 / 0;
        return pricePoints;
    }

    static /* synthetic */ String J(DTBAdSize dTBAdSize) {
        int i2 = w + 81;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strD0 = d0(dTBAdSize);
        int i4 = w + 121;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strD0;
    }

    static /* synthetic */ HashMap K(DTBAdResponse dTBAdResponse) {
        int i2 = v + 101;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? 'E' : (char) 24) == 24) {
            return p(dTBAdResponse);
        }
        p(dTBAdResponse);
        throw null;
    }

    static /* synthetic */ ApsAdRequest L(ApsAd apsAd) {
        int i2 = v + 105;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? ':' : '0';
        ApsAdRequest apsAdRequestW = w(apsAd);
        if (c2 != '0') {
            int i3 = 24 / 0;
        }
        int i4 = v + 113;
        w = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
        return apsAdRequestW;
    }

    static /* synthetic */ String M(DTBAdResponse dTBAdResponse) {
        int i2 = w + 13;
        v = i2 % 128;
        if (i2 % 2 != 0) {
            E(dTBAdResponse);
            throw null;
        }
        String strE = E(dTBAdResponse);
        int i3 = w + 23;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? '/' : 'W') != '/') {
            return strE;
        }
        throw null;
    }

    static /* synthetic */ boolean N(DTBAdSize dTBAdSize) {
        int i2 = v + 49;
        w = i2 % 128;
        int i3 = i2 % 2;
        boolean zF = F(dTBAdSize);
        int i4 = v + 41;
        w = i4 % 128;
        int i5 = i4 % 2;
        return zF;
    }

    static /* synthetic */ ApsAdFormat O(ApsAd apsAd) {
        int i2 = w + 123;
        v = i2 % 128;
        int i3 = i2 % 2;
        ApsAdFormat apsAdFormatO = o(apsAd);
        int i4 = v + 55;
        w = i4 % 128;
        int i5 = i4 % 2;
        return apsAdFormatO;
    }

    static /* synthetic */ DTBFetchFactory P() {
        DTBFetchFactory dTBFetchFactoryQ;
        int i2 = v + 105;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? 'U' : '<') != 'U') {
            dTBFetchFactoryQ = q();
        } else {
            dTBFetchFactoryQ = q();
            int i3 = 44 / 0;
        }
        int i4 = v + 29;
        w = i4 % 128;
        int i5 = i4 % 2;
        return dTBFetchFactoryQ;
    }

    static /* synthetic */ x Q(bg bgVar, HashMap map, ch chVar) {
        int i2 = w + 89;
        v = i2 % 128;
        int i3 = i2 % 2;
        x xVarR = bgVar.R(map, chVar);
        int i4 = w + 79;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? 'T' : '\f') == '\f') {
            return xVarR;
        }
        int i5 = 36 / 0;
        return xVarR;
    }

    private x R(HashMap<String, DTBFetchManager> map, ch chVar) {
        x xVar = new x(map, chVar);
        int i2 = w + 43;
        v = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return xVar;
        }
        int i3 = 95 / 0;
        return xVar;
    }

    private y S(ThreadPoolExecutor threadPoolExecutor, ch chVar) {
        y yVar = new y(threadPoolExecutor, chVar);
        int i2 = v + 23;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return yVar;
        }
        throw null;
    }

    static /* synthetic */ String T(DTBAdResponse dTBAdResponse) {
        int i2 = v + 31;
        w = i2 % 128;
        int i3 = i2 % 2;
        String strV = v(dTBAdResponse);
        int i4 = w + 15;
        v = i4 % 128;
        int i5 = i4 % 2;
        return strV;
    }

    static /* synthetic */ JSONObject U(DTBAdSize dTBAdSize) {
        int i2 = w + 103;
        v = i2 % 128;
        int i3 = i2 % 2;
        JSONObject jSONObjectY = y(dTBAdSize);
        int i4 = w + 107;
        v = i4 % 128;
        int i5 = i4 % 2;
        return jSONObjectY;
    }

    static /* synthetic */ AdType V(DTBAdSize dTBAdSize) {
        int i2 = w + 79;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? (char) 11 : 'J';
        AdType adTypeU = u(dTBAdSize);
        if (c2 != 'J') {
            int i3 = 98 / 0;
        }
        int i4 = w + 123;
        v = i4 % 128;
        int i5 = i4 % 2;
        return adTypeU;
    }

    static /* synthetic */ y W(bg bgVar, ThreadPoolExecutor threadPoolExecutor, ch chVar) {
        int i2 = v + 119;
        w = i2 % 128;
        int i3 = i2 % 2;
        y yVarS = bgVar.S(threadPoolExecutor, chVar);
        int i4 = w + 95;
        v = i4 % 128;
        int i5 = i4 % 2;
        return yVarS;
    }

    private static String X(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) t[i3 + i4]) ^ (((long) i4) * u)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    static /* synthetic */ String Y(ApsAd apsAd) {
        int i2 = w + 47;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? '@' : '/') != '/') {
            r(apsAd);
            throw null;
        }
        String strR = r(apsAd);
        int i3 = w + 79;
        v = i3 % 128;
        int i4 = i3 % 2;
        return strR;
    }

    static /* synthetic */ String Z(DTBAdResponse dTBAdResponse) {
        int i2 = w + 5;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 2 : 'Q') != 2) {
            return x(dTBAdResponse);
        }
        x(dTBAdResponse);
        throw null;
    }

    static /* synthetic */ Bundle a0(DTBAdResponse dTBAdResponse) {
        int i2 = w + 93;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? 'R' : 'Y';
        Bundle bundleS = s(dTBAdResponse);
        if (c2 != 'Y') {
            int i3 = 64 / 0;
        }
        return bundleS;
    }

    static /* synthetic */ String b0(ApsAd apsAd) {
        int i2 = w + 67;
        v = i2 % 128;
        int i3 = i2 % 2;
        String strZ = z(apsAd);
        int i4 = v + 67;
        w = i4 % 128;
        int i5 = i4 % 2;
        return strZ;
    }

    static /* synthetic */ String c0(DTBAdResponse dTBAdResponse, DTBAdSize dTBAdSize) {
        int i2 = w + 67;
        v = i2 % 128;
        char c2 = i2 % 2 != 0 ? (char) 24 : 'M';
        String strI = I(dTBAdResponse, dTBAdSize);
        if (c2 == 24) {
            int i3 = 74 / 0;
        }
        return strI;
    }

    private static String d0(DTBAdSize dTBAdSize) {
        int i2 = w + 35;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'A' : '<') != '<') {
            dTBAdSize.getSlotUUID();
            throw null;
        }
        String slotUUID = dTBAdSize.getSlotUUID();
        int i3 = w + 1;
        v = i3 % 128;
        int i4 = i3 % 2;
        return slotUUID;
    }

    private static ApsAdRequest k(ApsAd apsAd) {
        int i2 = v + 21;
        w = i2 % 128;
        if (!(i2 % 2 == 0)) {
            return apsAd.getAdLoader();
        }
        apsAd.getAdLoader();
        throw null;
    }

    private static Map<String, String> l(DTBAdResponse dTBAdResponse) {
        int i2 = v + 89;
        w = i2 % 128;
        int i3 = i2 % 2;
        Map<String, String> defaultVideoAdsRequestCustomParams = dTBAdResponse.getDefaultVideoAdsRequestCustomParams();
        int i4 = w + 117;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '?' : 'D') != '?') {
            return defaultVideoAdsRequestCustomParams;
        }
        throw null;
    }

    private static DTBAdView m(ApsAd apsAd) {
        int i2 = v + 37;
        w = i2 % 128;
        int i3 = i2 % 2;
        DTBAdView adView = apsAd.getAdView();
        int i4 = w + 25;
        v = i4 % 128;
        int i5 = i4 % 2;
        return adView;
    }

    private static List<DTBAdSize> n(DTBAdResponse dTBAdResponse) {
        int i2 = v + 103;
        w = i2 % 128;
        int i3 = i2 % 2;
        List<DTBAdSize> dTBAds = dTBAdResponse.getDTBAds();
        int i4 = v + 105;
        w = i4 % 128;
        int i5 = i4 % 2;
        return dTBAds;
    }

    private static ApsAdFormat o(ApsAd apsAd) {
        int i2 = w + 37;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        ApsAdFormat apsAdFormat = apsAd.getApsAdFormat();
        if (!z) {
            int i3 = 61 / 0;
        }
        int i4 = v + 125;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? 'U' : 'D') == 'D') {
            return apsAdFormat;
        }
        int i5 = 4 / 0;
        return apsAdFormat;
    }

    private static HashMap<String, Object> p(DTBAdResponse dTBAdResponse) {
        int i2 = w + 123;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        HashMap<String, Object> renderingMap = dTBAdResponse.getRenderingMap();
        if (!z) {
            int i3 = 28 / 0;
        }
        return renderingMap;
    }

    private static DTBFetchFactory q() {
        int i2 = v + 83;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '[' : 'O') != '[') {
            return DTBFetchFactory.getInstance();
        }
        DTBFetchFactory.getInstance();
        throw null;
    }

    private static String r(ApsAd apsAd) {
        int i2 = w + 105;
        v = i2 % 128;
        int i3 = i2 % 2;
        String slotUuid = apsAd.getSlotUuid();
        int i4 = w + 51;
        v = i4 % 128;
        int i5 = i4 % 2;
        return slotUuid;
    }

    private static Bundle s(DTBAdResponse dTBAdResponse) {
        int i2 = v + 71;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? 'a' : ',') != 'a') {
            return dTBAdResponse.getRenderingBundle();
        }
        dTBAdResponse.getRenderingBundle();
        throw null;
    }

    static /* synthetic */ ApsAdRequest t(ApsAd apsAd) {
        int i2 = w + 43;
        v = i2 % 128;
        int i3 = i2 % 2;
        ApsAdRequest apsAdRequestK = k(apsAd);
        int i4 = v + 3;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 28 : '\b') != 28) {
            return apsAdRequestK;
        }
        throw null;
    }

    private static AdType u(DTBAdSize dTBAdSize) {
        int i2 = w + 51;
        v = i2 % 128;
        int i3 = i2 % 2;
        AdType dTBAdType = dTBAdSize.getDTBAdType();
        int i4 = w + 53;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '1' : 'H') != '1') {
            return dTBAdType;
        }
        int i5 = 26 / 0;
        return dTBAdType;
    }

    private static String v(DTBAdResponse dTBAdResponse) {
        int i2 = v + 53;
        w = i2 % 128;
        if (!(i2 % 2 != 0)) {
            dTBAdResponse.getBidId();
            throw null;
        }
        String bidId = dTBAdResponse.getBidId();
        int i3 = v + 119;
        w = i3 % 128;
        if ((i3 % 2 == 0 ? '1' : '/') != '1') {
            return bidId;
        }
        throw null;
    }

    private static ApsAdRequest w(ApsAd apsAd) {
        int i2 = v + 33;
        w = i2 % 128;
        int i3 = i2 % 2;
        ApsAdRequest apsAdRequest = apsAd.getApsAdRequest();
        int i4 = w + 59;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 15 : '@') != 15) {
            return apsAdRequest;
        }
        int i5 = 37 / 0;
        return apsAdRequest;
    }

    private static String x(DTBAdResponse dTBAdResponse) {
        int i2 = w + 87;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        String impressionUrl = dTBAdResponse.getImpressionUrl();
        if (!z) {
            int i3 = 47 / 0;
        }
        int i4 = w + 59;
        v = i4 % 128;
        int i5 = i4 % 2;
        return impressionUrl;
    }

    private static JSONObject y(DTBAdSize dTBAdSize) {
        int i2 = w + 121;
        v = i2 % 128;
        if (i2 % 2 != 0) {
            dTBAdSize.getPubSettings();
            throw null;
        }
        JSONObject pubSettings = dTBAdSize.getPubSettings();
        int i3 = v + 107;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return pubSettings;
        }
        throw null;
    }

    private static String z(ApsAd apsAd) {
        int i2 = v + 53;
        w = i2 % 128;
        int i3 = i2 % 2;
        String pricePoint = apsAd.getPricePoint();
        int i4 = w + 75;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 28 : 'T') != 28) {
            return pricePoint;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    private static String m409() {
        int i2 = w + 77;
        v = i2 % 128;
        int i3 = i2 % 2;
        String appKey = AdRegistration.getAppKey();
        int i4 = v + 55;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '2' : (char) 20) != '2') {
            return appKey;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(X((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 9, 754 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) (59559 - (ViewConfiguration.getLongPressTimeout() >> 16))).intern(), new p());
        map.put(X((ViewConfiguration.getWindowTouchSlop() >> 8) + 23, 761 - TextUtils.lastIndexOf("", '0', 0), (char) ((ViewConfiguration.getTouchSlop() >> 8) + 21524)).intern(), new b());
        map.put(X(Gravity.getAbsoluteGravity(0, 0) + 18, 785 - View.combineMeasuredStates(0, 0), (char) ((Process.getThreadPriority(0) + 20) >> 6)).intern(), new j());
        map.put(X(TextUtils.getTrimmedLength("") + 23, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 802, (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), new h());
        map.put(X(26 - View.resolveSize(0, 0), Color.rgb(0, 0, 0) + 16778042, (char) (Color.argb(0, 0, 0, 0) + 53753)).intern(), new g());
        map.put(X(TextUtils.indexOf("", "", 0, 0) + 25, TextUtils.lastIndexOf("", '0', 0) + 853, (char) Drawable.resolveOpacity(0, 0)).intern(), new l());
        map.put(X((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 28, 876 - TextUtils.lastIndexOf("", '0', 0), (char) (47511 - (ViewConfiguration.getKeyRepeatTimeout() >> 16))).intern(), new n());
        map.put(X(ExpandableListView.getPackedPositionChild(0L) + 38, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + TypedValues.Custom.TYPE_DIMENSION, (char) ((-1) - Process.getGidForName(""))).intern(), new o());
        map.put(X((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 15, 942 - (ViewConfiguration.getScrollDefaultDelay() >> 16), (char) TextUtils.getTrimmedLength("")).intern(), new m());
        map.put(X((ViewConfiguration.getTouchSlop() >> 8) + 23, (-16776258) - Color.rgb(0, 0, 0), (char) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 43596)).intern(), new r());
        map.put(X(16 - TextUtils.indexOf((CharSequence) "", '0', 0), (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 980, (char) ExpandableListView.getPackedPositionGroup(0L)).intern(), new s());
        map.put(X(View.MeasureSpec.getMode(0) + 15, (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 997, (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), new q());
        map.put(X(21 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), 1013 - (ViewConfiguration.getWindowTouchSlop() >> 8), (char) (43068 - View.MeasureSpec.getMode(0))).intern(), new k());
        map.put(X(TextUtils.getCapsMode("", 0, 0) + 22, (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT, (char) (ViewConfiguration.getTouchSlop() >> 8)).intern(), new w());
        map.put(X(29 - ((byte) KeyEvent.getModifierMetaStateMask()), (Process.myPid() >> 22) + 1055, (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) - 1)).intern(), new v());
        map.put(X(23 - TextUtils.getOffsetAfter("", 0), 1085 - KeyEvent.normalizeMetaState(0), (char) (ViewConfiguration.getMinimumFlingVelocity() >> 16)).intern(), new t());
        map.put(X(TextUtils.getOffsetBefore("", 0) + 15, 1107 - ExpandableListView.getPackedPositionChild(0L), (char) (View.MeasureSpec.getMode(0) + 24304)).intern(), new u());
        map.put(X(TextUtils.getOffsetBefore("", 0) + 10, 1123 - View.combineMeasuredStates(0, 0), (char) (65030 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)))).intern(), new a());
        map.put(X(12 - MotionEvent.axisFromString(""), ExpandableListView.getPackedPositionType(0L) + 1133, (char) (44245 - Color.alpha(0))).intern(), new f());
        map.put(X((ViewConfiguration.getFadingEdgeLength() >> 16) + 11, 1146 - TextUtils.getCapsMode("", 0, 0), (char) (44348 - TextUtils.lastIndexOf("", '0'))).intern(), new e());
        map.put(X(TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 15, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 1157, (char) View.MeasureSpec.makeMeasureSpec(0, 0)).intern(), new c());
        map.put(X(11 - KeyEvent.getDeadChar(0, 0), (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 1170, (char) (KeyEvent.getMaxKeyCode() >> 16)).intern(), new d());
        map.put(X((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 8, 1182 - TextUtils.getOffsetBefore("", 0), (char) (23340 - ((byte) KeyEvent.getModifierMetaStateMask()))).intern(), new i());
        int i2 = w + 11;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'U' : '\b') == '\b') {
            return map;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﮐ */
    public final String mo378() {
        int i2 = w + 85;
        v = i2 % 128;
        int i3 = i2 % 2;
        String version = AdRegistration.getVersion();
        int i4 = v + 3;
        w = i4 % 128;
        int i5 = i4 % 2;
        return version;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:167:0x06e6  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.lang.Class mo384(java.lang.String r21) {
        /*
            Method dump skipped, instruction units count: 2120
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.bg.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = v + 113;
        w = i2 % 128;
        int i3 = i2 % 2;
        Matcher matcher = Pattern.compile(X((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 12, MotionEvent.axisFromString("") + 1, (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 42735)).intern()).matcher(mo378());
        if (!(matcher.matches())) {
            return null;
        }
        String strGroup = matcher.group(1);
        int i4 = w + 15;
        v = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return strGroup;
        }
        int i5 = 27 / 0;
        return strGroup;
    }
}
