package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.media.AudioTrack;
import android.os.AsyncTask;
import android.os.Process;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.iw;
import com.json.adqualitysdk.sdk.i.ix;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class iq {
    private static String a = null;
    private static char b = 0;
    private static char c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5775d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5776e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5777f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5778g = 1;
    private ix h;
    private ir i;
    private String j;
    private List<Runnable> k = new ArrayList();

    final class a implements aq {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.aq
        /* JADX INFO: renamed from: ﻛ */
        public final void mo221() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(iq.c(iq.this));
                iq.c(iq.this).clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
    }

    final class b extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ iw f5779d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ ih f5780e;

        b(iw iwVar, ih ihVar) {
            this.f5779d = iwVar;
            this.f5780e = ihVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            iq.f(iq.this, this.f5779d, this.f5780e);
        }
    }

    final class c implements ix.e {
        private /* synthetic */ String a;
        private /* synthetic */ iw b;
        private /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ih f5782d;

        final class a extends AsyncTask<Object, Object, Object> {
            private static int[] a = {1235580062, -1741291972, -1911016831, 1015744492, 413189275, 1294968570, 1761348331, 1715502227, -194387848, 1702892059, 1957496584, -1564520641, 58513866, 1807197985, 175298265, 948503853, -1877592209, -467928828};
            private static long b = -481689521909195197L;
            private static int c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static int f5784d = 1;

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.iq$c$a$a, reason: collision with other inner class name */
            final class C0345a extends il {

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private /* synthetic */ ih f5786d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private /* synthetic */ String f5787e;

                C0345a(ih ihVar, String str, String str2) {
                    this.f5786d = ihVar;
                    this.f5787e = str2;
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    this.f5786d.mo358(this.f5787e);
                }
            }

            final class b implements in {
                private /* synthetic */ iw a;
                private /* synthetic */ ih b;

                b(iw iwVar, ih ihVar) {
                    this.a = iwVar;
                    this.b = ihVar;
                }

                @Override // com.json.adqualitysdk.sdk.i.in
                /* JADX INFO: renamed from: ﾇ */
                public final void mo267() {
                    iq.d(iq.this).m851().m860(this);
                    iq.f(iq.this, this.a, this.b);
                }
            }

            a() {
            }

            private static String a(String str) throws JSONException {
                JSONObject jSONObject = new JSONObject(str);
                String strOptString = jSONObject.optString(b("Ḧ䍈ꓪ", 23909 - (Process.myPid() >> 22)).intern());
                if (!TextUtils.isEmpty(strOptString)) {
                    return jt.m949(strOptString, iq.a(), jSONObject.optString(b("Ḫβ", View.MeasureSpec.getSize(0) + 7559).intern()), jSONObject.optString(b("Ḱ냧䎥ቸ", View.resolveSize(0, 0) + 44741).intern()));
                }
                int i = c + 95;
                f5784d = i % 128;
                if ((i % 2 == 0 ? 'Y' : '?') == '?') {
                    return str;
                }
                throw null;
            }

            private static String b(String str, int i) {
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

            private void c(iw iwVar, ih ihVar) {
                iq.d(iq.this).m851().m863(new b(iwVar, ihVar));
                int i = c + 101;
                f5784d = i % 128;
                int i2 = i % 2;
            }

            private static String d(int[] iArr, int i) {
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

            private void e(String str, iw iwVar, String str2, ih ihVar) {
                if (!iq.d(iq.this).m851().m858()) {
                    int i = f5784d + 123;
                    c = i % 128;
                    if (i % 2 == 0) {
                        c(iwVar, ihVar);
                        return;
                    } else {
                        c(iwVar, ihVar);
                        int i2 = 69 / 0;
                        return;
                    }
                }
                try {
                    ip ipVarM857 = it.m857(str);
                    if ((ipVarM857 != null ? '8' : 'E') == '8' && ipVarM857.m843().m847() == 200) {
                        String strA = a(it.m855(ipVarM857));
                        if (Charset.forName(d(new int[]{-1595457122, 1036942794, 323869631, -1704377918}, 8 - TextUtils.getCapsMode("", 0, 0)).intern()).newEncoder().canEncode(strA)) {
                            if (TextUtils.isEmpty(strA)) {
                                return;
                            }
                            iq.h(iq.this).m880(str2, strA);
                            t.m1041(new C0345a(ihVar, str2, strA));
                            return;
                        }
                        String strIntern = d(new int[]{848455034, 648796611, 358780072, 101131701}, 8 - KeyEvent.getDeadChar(0, 0)).intern();
                        StringBuilder sb = new StringBuilder();
                        sb.append(b("ḇ瀳숊后ꙮ㡚詉Ჵ溏샞勢ꓐ㛍褻ᬋ洟Ｓ兀ꍋ㖣螊᧚", View.MeasureSpec.makeMeasureSpec(0, 0) + 28181).intern());
                        sb.append(str);
                        sb.append(d(new int[]{4826298, -53837248, -264103705, -990027829, -2016535785, 1681916584, -890568076, 2114089672, -1338663435, -1029268946, -154206590, 79336497}, 'G' - AndroidCharacter.getMirror('0')).intern());
                        jy.m987(strIntern, sb.toString(), (Throwable) null, false);
                        return;
                    }
                    if (!(!iq.d(iq.this).m851().m858())) {
                        if (ipVarM857.m843().m847() != 403) {
                            if ((ipVarM857.m843().m847() == 404 ? (char) 19 : '@') == '@') {
                                return;
                            }
                        }
                        if (str.contains(d(new int[]{-442762021, -476632457}, 4 - ExpandableListView.getPackedPositionType(0L)).intern()) ? false : true) {
                            return;
                        }
                        iwVar.m868();
                        iq.this.m849(iwVar, ihVar);
                        return;
                    }
                    int i3 = c + 45;
                    f5784d = i3 % 128;
                    if (i3 % 2 != 0) {
                        c(iwVar, ihVar);
                    } else {
                        c(iwVar, ihVar);
                        int i4 = 15 / 0;
                    }
                } catch (Exception e2) {
                    if (!iq.d(iq.this).m851().m858()) {
                        c(iwVar, ihVar);
                        return;
                    }
                    String strIntern2 = d(new int[]{848455034, 648796611, 358780072, 101131701}, 8 - Color.red(0)).intern();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(d(new int[]{-510799306, 661846318, 340972573, 180166521, 1686809288, 1844891117, 2023015231, -1959632455, -1328605648, 1019945400, 1171190612, 422081122, 1234448941, 1430657754, 629741506, -1594029511, 793240221, -794592185}, 33 - KeyEvent.getDeadChar(0, 0)).intern());
                    sb2.append(str);
                    jy.m987(strIntern2, sb2.toString(), (Throwable) e2, false);
                }
            }

            @Override // android.os.AsyncTask
            protected final Object doInBackground(Object... objArr) {
                String str;
                iw iwVar;
                String str2;
                ih ihVar;
                int i = f5784d + 45;
                c = i % 128;
                try {
                    if (!(i % 2 != 0)) {
                        str = (String) objArr[0];
                        iwVar = (iw) objArr[1];
                        str2 = (String) objArr[2];
                        ihVar = (ih) objArr[3];
                    } else {
                        str = (String) objArr[1];
                        iwVar = (iw) objArr[0];
                        str2 = (String) objArr[2];
                        ihVar = (ih) objArr[5];
                    }
                    e(str, iwVar, str2, ihVar);
                } catch (Exception e2) {
                    jy.m987(d(new int[]{848455034, 648796611, 358780072, 101131701}, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 8).intern(), b("Ḇ狶잿塹괭ƀ銎\ue757砏쳈⇬늠ݰ顸\uecd7䆋퉟✁믘ದ憩\uf262䜶\udbcfⳋ腞ሐ曓ﯨ䲼ꅴ㈞蛁", (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 27847).intern(), (Throwable) e2, false);
                }
                int i2 = f5784d + 81;
                c = i2 % 128;
                if ((i2 % 2 != 0 ? (char) 20 : 'H') == 'H') {
                    return null;
                }
                throw null;
            }
        }

        c(String str, iw iwVar, String str2, ih ihVar) {
            this.a = str;
            this.b = iwVar;
            this.c = str2;
            this.f5782d = ihVar;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ix.e
        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final void mo850(boolean z) {
            if (ao.m303().mo329() && z) {
                jt.m951(new a(), this.a, this.b, this.c, this.f5782d);
            }
        }
    }

    static {
        i();
        a = b("\ue69e菥箩퐱퀬\ud94b蚖攍揩\ue2b2䀅퐳啬螱䍖ౌ욵ﻊ\ue533⹎鋅뼘\uf14b\u0557쁃鄖ߺ꼷纉鳕׆ﰜ磮쵞ⱐ틼㙿彿⧲䏟ꖅ䓅菽ꋷ驌\ue96c\uda92\uf5ed囒鱲姺홓칋\ue857ऑ븺㼳◪㧱䌲療\u0091\uab1a苦ៈ߫䥌⓮䓥\udb9a", TextUtils.indexOf("", "", 0) + 70).intern();
        int i = f5777f + 33;
        f5778g = i % 128;
        if (i % 2 != 0) {
        } else {
            throw null;
        }
    }

    public iq(Context context, ir irVar, String str) {
        this.h = new ix(context, b("㨿⃮駮\udcb8驌\ue96c駮\udcb8힕諼ϒ率洘浀\uf77b鼪\ud90d毝艦幻ẍ䈷캪튡", (ViewConfiguration.getJumpTapTimeout() >> 16) + 24).intern(), b("ਰ䷿樍鸊⫥ጏ퓹举\udd54긘\ud90d毝剮上ీ획ꎒዦ", 17 - TextUtils.indexOf("", "")).intern());
        this.i = irVar;
        this.j = str;
        ao.m303().mo321(new a());
    }

    static /* synthetic */ String a() {
        int i = f5777f + 47;
        int i2 = i % 128;
        f5778g = i2;
        int i3 = i % 2;
        String str = a;
        int i4 = i2 + 45;
        f5777f = i4 % 128;
        if ((i4 % 2 != 0 ? '&' : '#') != '&') {
            return str;
        }
        throw null;
    }

    private static String b(String str, int i) {
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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + f5775d)) ^ ((cArr3[0] >>> 5) + f5776e)));
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

    static /* synthetic */ List c(iq iqVar) {
        int i = f5777f + 101;
        int i2 = i % 128;
        f5778g = i2;
        int i3 = i % 2;
        List<Runnable> list = iqVar.k;
        int i4 = i2 + 123;
        f5777f = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return list;
        }
        int i5 = 73 / 0;
        return list;
    }

    static /* synthetic */ ir d(iq iqVar) {
        int i = f5777f + 15;
        int i2 = i % 128;
        f5778g = i2;
        int i3 = i % 2;
        ir irVar = iqVar.i;
        int i4 = i2 + 13;
        f5777f = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
        return irVar;
    }

    private synchronized String e() {
        String str;
        int i = f5777f + 9;
        int i2 = i % 128;
        f5778g = i2;
        int i3 = i % 2;
        str = this.j;
        int i4 = i2 + 125;
        f5777f = i4 % 128;
        if (!(i4 % 2 == 0)) {
            throw null;
        }
        return str;
    }

    static /* synthetic */ void f(iq iqVar, iw iwVar, ih ihVar) {
        int i = f5777f + 53;
        f5778g = i % 128;
        boolean z = i % 2 != 0;
        iqVar.g(iwVar, ihVar);
        if (!z) {
            int i2 = 82 / 0;
        }
    }

    private void g(iw iwVar, ih ihVar) {
        String strM867 = iwVar.m867();
        StringBuilder sb = new StringBuilder();
        sb.append(e());
        sb.append(b("뮮쪹", -TextUtils.indexOf((CharSequence) "", '0', 0)).intern());
        sb.append(strM867);
        String string = sb.toString();
        String strM869 = iwVar.m869();
        this.h.m877(strM869, ao.m303().mo330(), new c(string, iwVar, strM869, ihVar));
        int i = f5777f + 89;
        f5778g = i % 128;
        if ((i % 2 == 0 ? (char) 17 : (char) 1) != 17) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ ix h(iq iqVar) {
        int i = f5778g + 21;
        f5777f = i % 128;
        char c2 = i % 2 != 0 ? '$' : (char) 20;
        ix ixVar = iqVar.h;
        if (c2 != '$') {
            return ixVar;
        }
        throw null;
    }

    static void i() {
        f5775d = (char) 47075;
        c = (char) 55504;
        f5776e = (char) 53541;
        b = (char) 3690;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m848(String str, String str2, ih ihVar) {
        String strM849 = m849(new iw.a(str, str2), ihVar);
        int i = f5777f + 39;
        f5778g = i % 128;
        if (i % 2 == 0) {
            throw null;
        }
        return strM849;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m849(iw iwVar, ih ihVar) {
        if (TextUtils.isEmpty(iwVar.m870()) || TextUtils.isEmpty(iwVar.m871())) {
            return null;
        }
        String strM869 = iwVar.m869();
        boolean z = true;
        synchronized (this) {
            if (!ao.m303().mo319()) {
                z = false;
                this.k.add(new b(iwVar, ihVar));
            }
        }
        if (z) {
            g(iwVar, ihVar);
        }
        return this.h.m879(strM869);
    }
}
