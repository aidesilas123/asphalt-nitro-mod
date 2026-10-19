package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes4.dex */
public final class av {
    private static long a = 0;
    private static int b = 0;
    private static char c = 42211;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f5261d = -4132823525594727339L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5262e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5263f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5264g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private a m = a.f21;
    private d n = d.f28;

    public enum a {
        f21,
        f20,
        f22,
        f24,
        f23,
        f19;

        private static char b = 0;
        private static char c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char f5265d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static char f5266e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static int f5267f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static int f5268g = 1;

        static {
            e();
            int i = f5267f + 85;
            f5268g = i % 128;
            int i2 = i % 2;
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
                            cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + f5265d)) ^ ((cArr3[0] >>> 5) + f5266e)));
                            cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + b)) ^ ((cArr3[1] >>> 5) + c)));
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

        static void e() {
            f5265d = (char) 59084;
            c = (char) 41720;
            f5266e = (char) 62086;
            b = (char) 4145;
        }

        public static a valueOf(String str) {
            int i = f5268g + 59;
            f5267f = i % 128;
            char c2 = i % 2 != 0 ? '\n' : 'Y';
            a aVar = (a) Enum.valueOf(a.class, str);
            if (c2 != 'Y') {
                int i2 = 67 / 0;
            }
            return aVar;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static a[] valuesCustom() throws CloneNotSupportedException {
            int i = f5268g + 125;
            f5267f = i % 128;
            if (!(i % 2 != 0)) {
                return (a[]) values().clone();
            }
            values().clone();
            throw null;
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[d.valuesCustom().length];
            b = iArr;
            try {
                iArr[d.f25.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[d.f29.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[d.f30.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[d.f27.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[d.f26.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[a.valuesCustom().length];
            a = iArr2;
            try {
                iArr2[a.f20.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[a.f22.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[a.f24.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[a.f19.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[a.f23.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public enum d {
        f28,
        f29,
        f30,
        f27,
        f26,
        f25;

        private static char[] b = null;
        private static char c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5269d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5270e = 1;

        static {
            e();
            int i = f5269d + 61;
            f5270e = i % 128;
            int i2 = i % 2;
        }

        static void e() {
            c = (char) 5;
            b = new char[]{'N', 'O', 'E', 'W', 'R', '_', 'A', 'G', 'T', 'Q', 'U', 'I', 'D', 'S', 'P', 'K', 'V', 'L', 'Z', 'F', 'C', 'X', 'Y', '[', '\\'};
        }

        private static String f(byte b2, String str, int i) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (g.f56) {
                char[] cArr2 = b;
                char c2 = c;
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

        public static d valueOf(String str) {
            int i = f5269d + 21;
            f5270e = i % 128;
            int i2 = i % 2;
            d dVar = (d) Enum.valueOf(d.class, str);
            int i3 = f5269d + 87;
            f5270e = i3 % 128;
            if ((i3 % 2 == 0 ? (char) 31 : 'I') != 31) {
                return dVar;
            }
            throw null;
        }

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static d[] valuesCustom() {
            int i = f5269d + 39;
            f5270e = i % 128;
            int i2 = i % 2;
            d[] dVarArr = (d[]) values().clone();
            int i3 = f5270e + 11;
            f5269d = i3 % 128;
            if (i3 % 2 == 0) {
                return dVarArr;
            }
            throw null;
        }
    }

    av(String str) {
        this.f5264g = str;
    }

    private String a() {
        int i = f5262e;
        int i2 = i + 41;
        f5263f = i2 % 128;
        if (!(i2 % 2 != 0)) {
            throw null;
        }
        if ((this.j == null) || this.k == null) {
            int i3 = i + 103;
            f5263f = i3 % 128;
            if (i3 % 2 != 0) {
                return null;
            }
            int i4 = 70 / 0;
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(k("ᑥ䂱\ued4b壖", "\u0000\u0000\u0000\u0000", ViewConfiguration.getMaximumFlingVelocity() >> 16, (char) View.MeasureSpec.makeMeasureSpec(0, 0), "⫄躴͗、睷\uefa9\uf5f0씣\ue415觫旔赅䶑駸\udb64\ue66c醩\u139bໝ冉黚蠸儲ꣳ").intern());
        sb.append(this.j);
        sb.append(j("ㆪㆊ勑⺩\ud805\u208f\uf496", View.resolveSize(0, 0) + 1).intern());
        sb.append(this.k);
        return sb.toString();
    }

    private String b() {
        int i = f5263f + 77;
        f5262e = i % 128;
        int i2 = i % 2;
        String strName = this.m.name();
        int i3 = f5262e + 117;
        f5263f = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return strName;
        }
        int i4 = 82 / 0;
        return strName;
    }

    private void c() {
        if (!this.f5264g.equals(k("ｐ\udf6b闝纤", "\u0000\u0000\u0000\u0000", (-572560385) - (ViewConfiguration.getScrollBarFadeDuration() >> 16), (char) Color.alpha(0), "ꥢ⽛ꆟ易ᯰ괜\u0600").intern())) {
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(e());
            sb2.append(k("醬긡꽊\ue10e", "\u0000\u0000\u0000\u0000", TextUtils.indexOf((CharSequence) "", '0', 0) + 1252925842, (char) (3759 - TextUtils.getCapsMode("", 0, 0)), "䚴").intern());
            sb.append(sb2.toString());
            String strI = i();
            if (strI != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(strI);
                sb3.append(k("醬긡꽊\ue10e", "\u0000\u0000\u0000\u0000", 1252925842 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (3760 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1))), "䚴").intern());
                sb.append(sb3.toString());
                int i = f5263f + 101;
                f5262e = i % 128;
                int i2 = i % 2;
            }
            String strA = a();
            if (strA != null) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(strA);
                sb4.append(k("醬긡꽊\ue10e", "\u0000\u0000\u0000\u0000", 1252925841 - (ViewConfiguration.getFadingEdgeLength() >> 16), (char) ((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 3758), "䚴").intern());
                sb.append(sb4.toString());
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append(j("燯熼✥嬄쇀㤋邫\ue420胎䫿⠄\uf6d8", -TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern());
            sb5.append(b());
            sb5.append(k("醬긡꽊\ue10e", "\u0000\u0000\u0000\u0000", 1252925840 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) (3758 - ((byte) KeyEvent.getModifierMetaStateMask())), "䚴").intern());
            sb.append(sb5.toString());
            a aVar = this.m;
            if ((aVar != a.f24 ? (char) 25 : (char) 30) == 25) {
                int i3 = f5262e + 59;
                f5263f = i3 % 128;
                if (i3 % 2 == 0) {
                    a aVar2 = a.f23;
                    throw null;
                }
                if (aVar != a.f23) {
                    String strH = h(this.n);
                    if (strH != null) {
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(k("퍌\u2d9c뽑畒", "\u0000\u0000\u0000\u0000", 1361943763 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) (TextUtils.lastIndexOf("", '0', 0, 0) + 1), "旖챙侾ॻ㳒䎇럏ꔍ轐").intern());
                        sb6.append(strH);
                        sb.append(sb6.toString());
                    }
                    m.m1020(j("礪龍\ued19鄨⪯퉔䬈㾂ࢰ胜쌸\u2d2f᭔뎷\uf1b9᳤", 1 - (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), sb.toString());
                    int i4 = f5262e + 15;
                    f5263f = i4 % 128;
                    int i5 = i4 % 2;
                }
            }
            m.m1026(j("礪龍\ued19鄨⪯퉔䬈㾂ࢰ胜쌸\u2d2f᭔뎷\uf1b9᳤", 1 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), sb.toString());
            return;
        }
        int i6 = f5262e + 83;
        f5263f = i6 % 128;
        if (!(i6 % 2 == 0)) {
            return;
        }
        int i7 = 39 / 0;
    }

    private String e() {
        StringBuilder sb = new StringBuilder();
        sb.append(k("潆缗럾㯈", "\u0000\u0000\u0000\u0000", (-25225362) - Process.getGidForName(""), (char) (View.resolveSizeAndState(0, 0, 0) + 51383), "뫻긃擙䳣懻캳эᫎ\uf867緎\udccb䆬췿\uddfd땴").intern());
        sb.append(this.f5264g);
        sb.append(k("㾵컖।콥", "\u0000\u0000\u0000\u0000", (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1691276864, (char) KeyEvent.getDeadChar(0, 0), "ꁷ춂\uea7a\udaf9ስ\u193e摥瘤⭤⩚萱").intern());
        String string = sb.toString();
        if (this.h != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            sb2.append(this.h);
            sb2.append(k("弴튜⟯ㄝ", "\u0000\u0000\u0000\u0000", (-271410081) - (Process.myPid() >> 22), (char) (TextUtils.indexOf("", "", 0) + 7463), "\uf165").intern());
            string = sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string);
        sb3.append(k("\ue1ecꪹꛄ甪", "\u0000\u0000\u0000\u0000", TextUtils.lastIndexOf("", '0', 0, 0) + 1, (char) ((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 10918), "ᗇፙ芹㴕\uf7a2첖뽼唏뭹橻凘켤ꑄ༪").intern());
        String string2 = sb3.toString();
        int i = f5262e + 109;
        f5263f = i % 128;
        int i2 = i % 2;
        return string2;
    }

    private String h(d dVar) {
        if ((dVar != null ? '<' : ':') == ':') {
            return null;
        }
        int i = f5263f + 115;
        f5262e = i % 128;
        int i2 = i % 2;
        int i3 = b.b[dVar.ordinal()];
        if (i3 == 1) {
            return j("⛗⚂魙\ue762턊⧋剅⛔ퟬ\uf687㢚㐶쐚엖ਪ֍\uf559쬨᷃\u1add\ue3e4\uda89沂桸逖꧄", -TextUtils.indexOf((CharSequence) "", '0')).intern();
        }
        if (i3 == 2) {
            return String.format(k("ꊢٗ舕짅", "\u0000\u0000\u0000\u0000", ViewConfiguration.getWindowTouchSlop() >> 8, (char) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 1), "⥋\u0e77໋胛ᆢ셶琉檍\ufdeb徦ﶏ㤝\uf71d햘⁙✢喗℔ፕ莬䐹䭝ᒡ츓鄘笧箼嵱\ud7ae율㬠覃駭縍倡䣕\uf728橆鱒氙틷ᴒ뺱鼻\ude14몐瘘ﵫ琟⌱褤\u3040䥺ꌭ⼲녬敜헢\ue703\uf1cb㽫直").intern(), this.f5264g, this.i, this.l);
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return j("ﬣﭥ\ue580馴ⴅ헆⡢峱\u0a12衍쓛久᧤뭝\uf63e羫⢶떥\ue1ca惸㸟ꑌ邅ቈ䶧휚舤ί岵솨跄㓡戀\uf053", 1 - (ViewConfiguration.getScrollBarSize() >> 8)).intern();
            }
            if (i3 != 5) {
                return null;
            }
            return j("飗频昧ᨓ㣵쀶梼ᰯ槦௪턫ປ稐㣺\ue3c4㽩䭎㘗\uf427•嶧⟡蕠劝⸝咻韘䍫㽀䈘", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1).intern();
        }
        String str = String.format(j("硭硈︽舛퓮Ɽ貲\uf81e襽鏟㴰\uea97骠ꂲ࿏\udb7c\uabfe긂ᡨ쑬뵎뾸楽뚎컩첪篏ꝥ\udfb5\uda09琩週\ue101\uebef䕭芉\uf2bd\uf8a7埖獙ϼؐꁐ簣ᕜក녨溝⚔⓬菋彆㟳㈖鰑䠾㥝䏋\ued72", (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1))).intern(), this.f5264g, this.i);
        int i4 = f5262e + 65;
        f5263f = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String i() {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.av.i():java.lang.String");
    }

    private static String j(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(f5261d, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * f5261d));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    private static String k(String str, String str2, int i, char c2, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c2 ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c3 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c3;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c3;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ a) ^ ((long) b)) ^ ((long) c));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void d(com.json.adqualitysdk.sdk.i.ci r7) {
        /*
            r6 = this;
            int r0 = com.json.adqualitysdk.sdk.i.av.f5262e
            int r0 = r0 + 81
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.av.f5263f = r1
            int r0 = r0 % 2
            r7.m437()
            java.lang.String r0 = r7.m439()
            r6.f5264g = r0
            java.lang.String r0 = r7.m438()
            r6.h = r0
            java.lang.String r0 = r7.m435()
            r6.i = r0
            r0 = -832240603(0xffffffffce650425, float:-9.605635E8)
            java.lang.String r1 = ""
            int r2 = android.view.MotionEvent.axisFromString(r1)
            int r0 = r0 - r2
            int r2 = android.view.ViewConfiguration.getTouchSlop()
            int r2 = r2 >> 8
            char r2 = (char) r2
            java.lang.String r3 = "⛙攄懎숁"
            java.lang.String r4 = "\u0000\u0000\u0000\u0000"
            java.lang.String r5 = "ꖏ簬赟\udda1眗욆ꋘ"
            java.lang.String r0 = k(r3, r4, r0, r2, r5)
            java.lang.String r0 = r0.intern()
            java.lang.String r2 = r6.i
            boolean r0 = r0.equals(r2)
            r2 = 23
            if (r0 != 0) goto L4b
            r0 = 41
            goto L4d
        L4b:
            r0 = 23
        L4d:
            if (r0 == r2) goto L72
            int r0 = android.view.ViewConfiguration.getMinimumFlingVelocity()
            int r0 = r0 >> 16
            int r0 = r0 + 1
            java.lang.String r2 = "㰖㱒\uf764譸姛ꄢ\ua82f\udc91촀骁끠츸"
            java.lang.String r0 = j(r2, r0)
            java.lang.String r0 = r0.intern()
            java.lang.String r2 = r6.i
            boolean r0 = r0.equals(r2)
            r2 = 91
            if (r0 == 0) goto L6e
            r0 = 34
            goto L70
        L6e:
            r0 = 91
        L70:
            if (r0 == r2) goto L9c
        L72:
            r0 = -1347035153(0xffffffffafb5dfef, float:-3.3082823E-10)
            r2 = 48
            r3 = 0
            int r5 = android.text.TextUtils.indexOf(r1, r2, r3)
            int r5 = r5 + r0
            int r0 = android.text.TextUtils.indexOf(r1, r2, r3)
            int r0 = 20797 - r0
            char r0 = (char) r0
            java.lang.String r1 = "\uee95뗟㺯㱑"
            java.lang.String r2 = "\uf494힗摯"
            java.lang.String r0 = k(r1, r4, r5, r0, r2)
            java.lang.String r0 = r0.intern()
            r6.i = r0
            int r0 = com.json.adqualitysdk.sdk.i.av.f5262e
            int r0 = r0 + 33
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.av.f5263f = r1
            int r0 = r0 % 2
        L9c:
            java.lang.String r0 = r7.m433()
            r6.j = r0
            java.lang.String r0 = r7.m436()
            r6.k = r0
            java.lang.String r7 = r7.m432()
            r6.l = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.av.d(com.ironsource.adqualitysdk.sdk.i.ci):void");
    }

    final void f(a aVar) {
        this.m = aVar;
        if ((aVar != a.f19 ? ';' : '\n') != '\n') {
            this.n = d.f28;
        }
        int i = b.a[aVar.ordinal()];
        if (i == 1) {
            int i2 = f5263f + 59;
            f5262e = i2 % 128;
            if ((i2 % 2 != 0 ? (char) 22 : '.') == '.') {
                return;
            } else {
                throw null;
            }
        }
        if (i == 2) {
            int i3 = f5263f + 41;
            f5262e = i3 % 128;
            int i4 = i3 % 2;
        } else if (i == 3 || i == 4 || i == 5) {
            c();
        }
    }

    final String g() {
        int i = f5263f + 25;
        f5262e = i % 128;
        if (i % 2 == 0) {
            return h(this.n);
        }
        h(this.n);
        throw null;
    }

    final void l(d dVar) {
        int i = f5263f + 39;
        f5262e = i % 128;
        if ((i % 2 == 0 ? '(' : (char) 2) == '(') {
            this.n = dVar;
            f(a.f19);
        } else {
            this.n = dVar;
            f(a.f19);
            throw null;
        }
    }

    final boolean m() {
        int i = f5262e + 91;
        f5263f = i % 128;
        if (i % 2 == 0) {
            a aVar = a.f20;
            throw null;
        }
        a aVar2 = this.m;
        if ((aVar2 != a.f20 ? 'I' : 'b') != 'b') {
            if ((aVar2 != a.f22) && aVar2 != a.f21) {
                return false;
            }
        }
        int i2 = f5262e + 91;
        f5263f = i2 % 128;
        int i3 = i2 % 2;
        return true;
    }
}
