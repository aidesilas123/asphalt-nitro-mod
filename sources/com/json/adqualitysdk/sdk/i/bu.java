package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.i.az;
import com.ogury.sdk.Ogury;
import io.presage.Presage;
import io.presage.common.AdConfig;
import io.presage.common.PresageSdk;
import io.presage.common.network.models.RewardItem;
import io.presage.interstitial.InterstitialActivity;
import io.presage.interstitial.PresageInterstitial;
import io.presage.interstitial.PresageInterstitialCallback;
import io.presage.interstitial.optinvideo.PresageOptinVideo;
import io.presage.interstitial.optinvideo.PresageOptinVideoCallback;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class bu extends az {
    private static char u = 6;
    private static int x = 0;
    private static int y = 1;
    private static char[] t = {'i', 'o', '.', 'p', 'r', 'e', 's', 'a', 'g', 'n', 't', 'l', 'I', 'A', 'c', 'v', 'y', 'u', 'U', 'O', 'P', 'S', 'd', 'k', 'C', 'b', 'V', 'm', 'f', 'h', 'D', 'M', 'j', 'q', 'w', 'x'};
    private static char[] v = {2116, 28200, 50415, 14985, 37203, 63241, 28091, 50281, 14881, 37063, 63106, 27992, 50120, 14753, 36963, 62977, 27851, 49823, 14655, 40933, 'P', 26169, 52467, 12946, 39245, 65296, 26023, 'P', 26169, 52467, 12946, 39245, 65296, 26023, 52292, 12854, 39127, 65163, 25931, 52215, 12731, 39027, 65041, 25817, 51866, 12586, 'P', 26169, 52467, 12946, 39245, 65296, 26023, 52292, 12854, 39127, 65163, 25931, 52215, 12731, 39027, 65041, 25817, 51866, 12586, 38866, 64957, 25675, 51742, 12511, 38761, 64816, 25589, 25563, 1458, 44920, 20761, 64198, 40091, 1580, 45001, 20899, 64348, 40204, 1756, 43097, 21037, 64501, 40331, 1876, 22016, 12393, 39587, 25794, 53021, 43328, 13303, 39442, 25720, 52871, 43223, 13063, 40322, 26614, 52782, 43088, 12943, 40168, 26487, 49581, 44000, 12821, 40003, 26254, 49459, 37054, 63170, 23565, 41580, 2482, 28671, 62823, 23701, 41681, 2082, 'A', 26159, 52437, 12942, 39234, 65297, 26027, 52330, '-'};
    private static long w = 3728011623298131531L;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bu.r((PresageOptinVideo) list.get(0), (PresageOptinVideoCallback) list.get(1));
            return null;
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            bu.n((PresageInterstitial) list.get(0), (PresageInterstitialCallback) list.get(1));
            return null;
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return bu.l();
        }
    }

    public bu(String str) {
        super(str);
    }

    private static void k(PresageOptinVideo presageOptinVideo, PresageOptinVideoCallback presageOptinVideoCallback) {
        int i = x + 99;
        y = i % 128;
        boolean z = i % 2 == 0;
        presageOptinVideo.setOptinVideoCallback(presageOptinVideoCallback);
        if (z) {
            throw null;
        }
    }

    static /* synthetic */ Presage l() {
        int i = y + 51;
        x = i % 128;
        if (!(i % 2 != 0)) {
            return m();
        }
        m();
        throw null;
    }

    private static Presage m() {
        int i = x + 31;
        y = i % 128;
        int i2 = i % 2;
        Presage presage = Presage.getInstance();
        int i3 = x + 69;
        y = i3 % 128;
        if ((i3 % 2 == 0 ? '3' : '@') == '@') {
            return presage;
        }
        int i4 = 12 / 0;
        return presage;
    }

    static /* synthetic */ void n(PresageInterstitial presageInterstitial, PresageInterstitialCallback presageInterstitialCallback) {
        int i = y + 101;
        x = i % 128;
        int i2 = i % 2;
        q(presageInterstitial, presageInterstitialCallback);
        int i3 = x + 59;
        y = i3 % 128;
        int i4 = i3 % 2;
    }

    private static String o(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = t;
            char c2 = u;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    private static String p(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) v[i2 + i3]) ^ (((long) i3) * w)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private static void q(PresageInterstitial presageInterstitial, PresageInterstitialCallback presageInterstitialCallback) {
        int i = y + 73;
        x = i % 128;
        int i2 = i % 2;
        presageInterstitial.setInterstitialCallback(presageInterstitialCallback);
        int i3 = y + 81;
        x = i3 % 128;
        if ((i3 % 2 != 0 ? (char) 28 : (char) 4) != 28) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void r(PresageOptinVideo presageOptinVideo, PresageOptinVideoCallback presageOptinVideoCallback) {
        int i = x + 39;
        y = i % 128;
        int i2 = i % 2;
        k(presageOptinVideo, presageOptinVideoCallback);
        int i3 = y + 81;
        x = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return;
        }
        int i4 = 43 / 0;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(o((byte) ((ViewConfiguration.getFadingEdgeLength() >> 16) + 99), "\u000b\u0002\b\u0016\u0005\u0000\u0007\b\u000b\u0002\u000f\u0006\u0007\u000b\b\n\u0011\u0002", ImageFormat.getBitsPerPixel(0) + 19).intern(), new c());
        map.put(o((byte) ((ViewConfiguration.getLongPressTimeout() >> 16) + 104), "\u000b\u0000\u0006\u0010\n\u000b\u0000\u0005\u0007\u000b\u0004\u0006\u0001\u0006\u0006\u001d\b\u0006\u0007\u001d\b\rÓ", (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 22).intern(), new b());
        map.put(o((byte) (30 - TextUtils.getTrimmedLength("")), "\u000b\u0000\u0007\u0016\u0004\t\u0003\u0006\u0018\u0002\u0017\u0004\u0000\u0019\b\u0006\u0007\u001d\b\r\u0089", Color.blue(0) + 21).intern(), new a());
        int i = y + 85;
        x = i % 128;
        if ((i % 2 != 0 ? 'P' : (char) 30) == 30) {
            return map;
        }
        int i2 = 26 / 0;
        return map;
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﮐ */
    public final String mo378() {
        int i = y + 61;
        x = i % 128;
        int i2 = i % 2;
        try {
            try {
                String str = (String) Class.forName(o((byte) (17 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\b\u000b\u0002\b\u0014\u0003\u0019\u0019\u0003\b\u0003\u0004\u0018\b \b\r#\u000b\u0005\u0001\n\u0015\u0017#\u000b\r\u0006\"\u0005\r\u0018\u0007\u0001\u0007\n\u000b\u0017\u0014\u0083", 47 - (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern()).getMethod(o((byte) (TextUtils.indexOf((CharSequence) "", '0', 0) + 79), "¯", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1).intern(), new Class[0]).invoke(null, new Object[0]);
                int i3 = x + 69;
                y = i3 % 128;
                int i4 = i3 % 2;
                return str;
            } catch (Throwable unused) {
                return null;
            }
        } catch (Exception unused2) {
            return PresageSdk.getAdsSdkVersion();
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    final Class mo384(String str) {
        byte b2 = -1;
        switch (str.hashCode()) {
            case -2101347995:
                if ((str.equals(p(7 - ((byte) KeyEvent.getModifierMetaStateMask()), ExpandableListView.getPackedPositionType(0L) + 125, (char) (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern()) ? '4' : 'Z') != 'Z') {
                    b2 = Ascii.FF;
                }
                break;
            case -1907784110:
                if (str.equals(p((ViewConfiguration.getTapTimeout() >> 16) + 17, TextUtils.indexOf((CharSequence) "", '0') + 74, (char) (((Process.getThreadPriority(0) + 20) >> 6) + 25483)).intern())) {
                    b2 = 9;
                }
                break;
            case -1704786309:
                if (str.equals(p(20 - Color.argb(0, 0, 0, 0), KeyEvent.normalizeMetaState(0), (char) ((ViewConfiguration.getDoubleTapTimeout() >> 16) + 2061)).intern())) {
                    b2 = 1;
                }
                break;
            case -938422005:
                if (!(!str.equals(o((byte) (TextUtils.getTrimmedLength("") + 21), "\u0016\u0002\u0000\u000b\b\t\u0003\u0017\u0017\u0012", (ViewConfiguration.getScrollBarSize() >> 8) + 10).intern()))) {
                    b2 = 6;
                }
                break;
            case -610604286:
                if ((str.equals(p(Color.rgb(0, 0, 0) + 16777226, 114 - ((byte) KeyEvent.getModifierMetaStateMask()), (char) (37100 - (ViewConfiguration.getEdgeSlop() >> 16))).intern()) ? 'Y' : '2') != '2') {
                    b2 = Ascii.VT;
                }
                break;
            case -126768170:
                if (str.equals(o((byte) (33 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\b\u000b\u0002\u0003\u0001\n\u000b\u0000\u0005\u0007\u000b\u0004\u0006\u0001\u0006\b\u0005\u000f\u0006\u000b\u0004\u0000\n\u0006\u0004\u0006\u0004\b\u0006\u000e\u000f\u0006\u0004\f\u0003\u0010\u0016", MotionEvent.axisFromString("") + 45).intern())) {
                    b2 = 0;
                }
                break;
            case 76142724:
                if ((str.equals(o((byte) (43 - KeyEvent.normalizeMetaState(0)), "\u0014\u0007\u0010\u0005¤", 5 - TextUtils.indexOf("", "", 0)).intern()) ? '8' : '&') != '&') {
                    b2 = 4;
                }
                break;
            case 698887547:
                if (str.equals(p(19 - (ViewConfiguration.getScrollBarSize() >> 8), 27 - (ViewConfiguration.getEdgeSlop() >> 16), (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern())) {
                    b2 = 7;
                }
                break;
            case 1067648736:
                if (str.equals(p(TextUtils.lastIndexOf("", '0') + 28, TextUtils.getTrimmedLength("") + 46, (char) (TextUtils.indexOf((CharSequence) "", '0') + 1)).intern())) {
                    int i = x + 55;
                    y = i % 128;
                    b2 = (i % 2 == 0 ? 'O' : ';') == ';' ? (byte) 8 : (byte) 58;
                }
                break;
            case 1346371759:
                if (!(!str.equals(p(6 - ExpandableListView.getPackedPositionChild(0L), 20 - (ViewConfiguration.getFadingEdgeLength() >> 16), (char) (ViewConfiguration.getLongPressTimeout() >> 16)).intern()))) {
                    b2 = 5;
                }
                break;
            case 1871097647:
                if (str.equals(o((byte) (61 - TextUtils.getTrimmedLength("")), "\u0018\u0006\u000f\u0006\u000b\u0004\u0000\n\u0006\u0004\u0006\u0004\b\u0006\u000e\u000f\u0006\u0004\f\u0003\u0010\u0016", AndroidCharacter.getMirror('0') - 26).intern())) {
                    int i2 = x + 107;
                    y = i2 % 128;
                    int i3 = i2 % 2;
                    b2 = 3;
                }
                break;
            case 2109755994:
                if (str.equals(o((byte) (42 - (ViewConfiguration.getTouchSlop() >> 8)), "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\b\u000b\u0002\u0003\u0001\n\u000b\u0000\u0005\u0007\u000b\u0004\u0006\u0001\u0006\b\u0005\f\u0005\u0000\u000e\n\u000b\u0000\u0005\u0007\u000b\u0004\u0006\u0001\u0006\u0007\u0011\u0010\b\u0003\f\u0004\u0006£", 47 - View.getDefaultSize(0, 0)).intern())) {
                    b2 = 2;
                }
                break;
            case 2128976055:
                if (str.equals(p((ViewConfiguration.getLongPressTimeout() >> 16) + 25, 90 - (ViewConfiguration.getJumpTapTimeout() >> 16), (char) (22096 - (ViewConfiguration.getKeyRepeatDelay() >> 16))).intern())) {
                    int i4 = y + 77;
                    x = i4 % 128;
                    b2 = i4 % 2 == 0 ? (byte) 10 : (byte) 84;
                }
                break;
        }
        switch (b2) {
            case 0:
            case 1:
                return InterstitialActivity.class;
            case 2:
            case 3:
                return io.presage.interstitial.ui.InterstitialActivity.class;
            case 4:
                int i5 = x + 103;
                y = i5 % 128;
                if (i5 % 2 != 0) {
                    return Ogury.class;
                }
                int i6 = 78 / 0;
                return Ogury.class;
            case 5:
                return Presage.class;
            case 6:
                return PresageSdk.class;
            case 7:
                return PresageInterstitial.class;
            case 8:
                return PresageInterstitialCallback.class;
            case 9:
                return PresageOptinVideo.class;
            case 10:
                return PresageOptinVideoCallback.class;
            case 11:
                return RewardItem.class;
            case 12:
                return AdConfig.class;
            default:
                return null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i = y + 99;
        x = i % 128;
        int i2 = i % 2;
        String strMo378 = mo378();
        if (strMo378 == null) {
            return null;
        }
        int i3 = x + 17;
        y = i3 % 128;
        return !(i3 % 2 != 0) ? strMo378.split(p((ViewConfiguration.getScrollFriction() > 2.0f ? 1 : (ViewConfiguration.getScrollFriction() == 2.0f ? 0 : -1)), 7376 % View.MeasureSpec.makeMeasureSpec(1, 0), (char) Color.green(1)).intern())[1] : strMo378.split(p((ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 133 - View.MeasureSpec.makeMeasureSpec(0, 0), (char) Color.green(0)).intern())[0];
    }
}
