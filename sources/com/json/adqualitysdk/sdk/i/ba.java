package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.adqualitysdk.sdk.ISAdQualityAdListener;
import com.json.adqualitysdk.sdk.ISAdQualityAdType;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ba {
    private static long a = 0;
    private static int b = 0;
    private static char c = 42136;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5349d = -514361181;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5350e = 28;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5351f = -494637128;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static byte[] f5352g = {-1, -15, 2, 17, -19, 1, Ascii.DC4, -21, 17, 2, -1, -11, 0, 1, -5, 1, Ascii.DC4, -21, 17, 2, -1, -20, 10, -3, -2, 1, Ascii.SO, 1, 5, -21, 17, 2, 3, -3, 0, Ascii.CR, 6, -17, -4, Ascii.CR, 1, -10, 9, Ascii.DC2, -33, 6, 9, -17, 49, 0, 0, 0, 0, 0, 0};
    private static short[] h = null;
    private static int i = 0;
    private static int j = 1;
    private ISAdQualityAdListener k;
    private Handler l;
    private ag m;
    private Set<ii> n = new HashSet();
    private Set<String> o = new HashSet();

    final class a extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ String f5353d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private /* synthetic */ JSONObject f5354e;

        a(String str, JSONObject jSONObject) {
            this.f5353d = str;
            this.f5354e = jSONObject;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ba.a(ba.this, this.f5353d, this.f5354e);
        }
    }

    public ba(Handler handler, ag agVar) {
        this.m = agVar;
        this.l = handler;
    }

    static /* synthetic */ void a(ba baVar, String str, JSONObject jSONObject) {
        int i2 = j + 121;
        i = i2 % 128;
        int i3 = i2 % 2;
        baVar.b(str, jSONObject);
        int i4 = i + 101;
        j = i4 % 128;
        int i5 = i4 % 2;
    }

    private void b(String str, JSONObject jSONObject) {
        f(str, jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            String str2 = ib.f120;
            jSONObject2.put(str2, jSONObject.remove(str2));
            String str3 = ib.f78;
            jSONObject2.put(str3, jSONObject.remove(str3));
            int i2 = j + 123;
            i = i2 % 128;
            int i3 = i2 % 2;
        } catch (JSONException unused) {
        }
        this.m.m260(str, jSONObject, jSONObject2);
    }

    private static String c(String str, String str2, int i2, char c2, String str3) {
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
            cArr5[2] = (char) (cArr5[2] + ((char) i2));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i3 = j.f125;
                if (i3 < length) {
                    int i4 = (i3 + 2) % 4;
                    int i5 = (i3 + 3) % 4;
                    char c3 = (char) (((cArr4[i3 % 4] * 32718) + cArr5[i4]) % 65535);
                    j.f126 = c3;
                    cArr5[i5] = (char) (((cArr4[i5] * 32718) + cArr5[i4]) / 65535);
                    cArr4[i5] = c3;
                    int i6 = j.f125;
                    cArr6[i6] = (char) (((((long) (cArr[i6] ^ cArr4[i5])) ^ a) ^ ((long) b)) ^ ((long) c));
                    j.f125 = i6 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    private static double d() {
        int i2 = j + 81;
        i = i2 % 128;
        int i3 = i2 % 2;
        if ((!ao.m303().mo317() ? '\'' : (char) 5) != '\'') {
            return 100.0d;
        }
        int i4 = j + 83;
        i = i4 % 128;
        if (i4 % 2 == 0) {
            return ao.m303().mo318();
        }
        ao.m303().mo318();
        throw null;
    }

    private static String e(int i2, int i3, byte b2, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = f5350e;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = f5352g;
                i6 = bArr != null ? (byte) (bArr[f5349d + i4] + i5) : (short) (h[f5349d + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + f5349d + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i3 + f5351f);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = f5352g;
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

    private void f(String str, JSONObject jSONObject) {
        Iterator it = new HashSet(this.n).iterator();
        while (true) {
            if ((it.hasNext() ? 'a' : (char) 22) == 22) {
                int i2 = i + 49;
                j = i2 % 128;
                if (i2 % 2 != 0) {
                    return;
                } else {
                    throw null;
                }
            }
            JSONObject jSONObjectMo376 = ((ii) it.next()).mo376(str, jSONObject);
            if (jSONObjectMo376 != null) {
                int i3 = j + 113;
                i = i3 % 128;
                int i4 = i3 % 2;
                ju.m960(jSONObject, jSONObjectMo376);
                if (i4 != 0) {
                    throw null;
                }
            }
        }
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final void m392(JSONObject jSONObject) {
        int i2 = i + 99;
        j = i2 % 128;
        int i3 = i2 % 2;
        m404(e((-17) - TextUtils.getOffsetAfter("", 0), 494637226 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (byte) (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (short) ((-1) - Process.getGidForName("")), 514361190 - TextUtils.lastIndexOf("", '0')).intern(), jSONObject);
        int i4 = j + 73;
        i = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final void m393(JSONObject jSONObject) {
        int i2 = j + 63;
        i = i2 % 128;
        int i3 = i2 % 2;
        m404(e((-16) - TextUtils.lastIndexOf("", '0', 0), (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 494637225, (byte) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (short) KeyEvent.keyCodeFromString(""), ImageFormat.getBitsPerPixel(0) + 514361202).intern(), jSONObject);
        int i4 = i + 71;
        j = i4 % 128;
        if ((i4 % 2 == 0 ? '[' : (char) 19) == 19) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final void m394(JSONObject jSONObject) {
        int i2 = j + 31;
        i = i2 % 128;
        m404(((i2 % 2 != 0 ? (char) 16 : '@') != '@' ? c("㱵┨袞藺", "\u0000\u0000\u0000\u0000", (Process.getElapsedCpuTime() > 1L ? 1 : (Process.getElapsedCpuTime() == 1L ? 0 : -1)) * (-1641732035), (char) (64136 % (TypedValue.complexToFloat(0) > 1.0f ? 1 : (TypedValue.complexToFloat(0) == 1.0f ? 0 : -1))), "諓띛屜膢\udc2bꐭ\uea53蘍䵐♪騐岳\ue81d揿ṓ") : c("㱵┨袞藺", "\u0000\u0000\u0000\u0000", (-1641732035) - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) (64136 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))), "諓띛屜膢\udc2bꐭ\uea53蘍䵐♪騐岳\ue81d揿ṓ")).intern(), jSONObject);
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final void m395(JSONObject jSONObject) {
        int i2 = j + 11;
        i = i2 % 128;
        int i3 = i2 % 2;
        m404(c("퍢윘䚖蔆", "\u0000\u0000\u0000\u0000", View.MeasureSpec.getSize(0), (char) (1 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1))), "蒝查枕蓎찢惦ୈ몟ܤ᤺").intern(), jSONObject);
        int i4 = i + 63;
        j = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m396(JSONObject jSONObject) {
        int i2 = i + 79;
        j = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        ISAdQualityAdListener iSAdQualityAdListener = this.k;
        if (!(iSAdQualityAdListener == null)) {
            iSAdQualityAdListener.adClosed(jSONObject.optString(ib.f120), ISAdQualityAdType.fromInt(jSONObject.optInt(ib.f119)));
        }
        int i3 = j + 111;
        i = i3 % 128;
        if (i3 % 2 == 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m397(ii iiVar) {
        int i2 = i + 113;
        j = i2 % 128;
        if (i2 % 2 == 0) {
            this.n.add(iiVar);
            throw null;
        }
        this.n.add(iiVar);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m398(JSONObject jSONObject) {
        int i2 = i + 9;
        j = i2 % 128;
        int i3 = i2 % 2;
        m404(c("湓軩\ue467။", "\u0000\u0000\u0000\u0000", ((byte) KeyEvent.getModifierMetaStateMask()) + 1737419119, (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16), "내䄂⠑纶\udedf\ue3e1ᄧ臡ৣ넓嵚").intern(), jSONObject);
        int i4 = j + 53;
        i = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 22 : '`') != 22) {
            return;
        }
        int i5 = 73 / 0;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m399(ISAdQualityAdListener iSAdQualityAdListener) {
        int i2 = i + 15;
        int i3 = i2 % 128;
        j = i3;
        char c2 = i2 % 2 == 0 ? 'b' : '?';
        this.k = iSAdQualityAdListener;
        if (c2 != '?') {
            throw null;
        }
        int i4 = i3 + 73;
        i = i4 % 128;
        if (!(i4 % 2 != 0)) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m400(JSONObject jSONObject) {
        int i2 = i + 91;
        j = i2 % 128;
        int i3 = i2 % 2;
        int iOptInt = jSONObject.optInt(ib.f119);
        ISAdQualityAdListener iSAdQualityAdListener = this.k;
        if ((iSAdQualityAdListener != null ? '\f' : '6') != '6') {
            iSAdQualityAdListener.adDisplayed(jSONObject.optString(ib.f120), ISAdQualityAdType.fromInt(iOptInt));
            int i4 = j + 89;
            i = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m401(JSONObject jSONObject) {
        int i2 = j + 7;
        i = i2 % 128;
        int i3 = i2 % 2;
        m404(e(TextUtils.lastIndexOf("", '0', 0) - 16, Color.rgb(0, 0, 0) + 511414441, (byte) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1), (short) View.MeasureSpec.getMode(0), 514361181 - ExpandableListView.getPackedPositionType(0L)).intern(), jSONObject);
        int i4 = i + 91;
        j = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m402(String str, String str2, String str3, String str4) {
        int i2 = i + 9;
        j = i2 % 128;
        int i3 = i2 % 2;
        m403(str, str2, str3, str4, null, false);
        int i4 = i + 17;
        j = i4 % 128;
        if (i4 % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m403(String str, String str2, String str3, String str4, JSONObject jSONObject, boolean z) {
        synchronized (this.o) {
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append(e(View.MeasureSpec.makeMeasureSpec(0, 0) - 27, 494637186 - TextUtils.indexOf("", "", 0, 0), (byte) ((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) - 1), (short) (ViewConfiguration.getJumpTapTimeout() >> 16), 514361212 - TextUtils.lastIndexOf("", '0')).intern());
            sb.append(str2);
            String string = sb.toString();
            if (!this.o.contains(string) || z || ao.m303().mo325()) {
                this.o.add(string);
                if (Math.random() * 100.0d >= d()) {
                    m.m1019(e(KeyEvent.getDeadChar(0, 0) - 17, 494637198 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (byte) View.MeasureSpec.getSize(0), (short) (ViewConfiguration.getLongPressTimeout() >> 16), View.MeasureSpec.getSize(0) + 514361220).intern(), c("\ue29b㘄랧ꩵ", "\u0000\u0000\u0000\u0000", (-1489632030) - (ViewConfiguration.getWindowTouchSlop() >> 8), (char) View.combineMeasuredStates(0, 0), "ᝡ䞹쫟紳췡깳\uf1de䀽䓔᪫挓眭>\uf0e8䧷\u20c4ٺ\ud859㿢ꏘ芽\uf210痐䌈镬萄\ueb11犜뮎ᚁೋ럇亢개螠⯚\uebd2ཝ\uf0c4\ue61d띇쒯嘮碏娸뱌⬑េœ").intern());
                    return;
                }
                JSONObject jSONObjectM255 = ag.m255(str, str2, str3, str4, jSONObject);
                f(e((-20) - (ViewConfiguration.getScrollDefaultDelay() >> 16), 494637244 - ExpandableListView.getPackedPositionType(0L), (byte) Color.argb(0, 0, 0, 0), (short) View.MeasureSpec.getSize(0), Color.argb(0, 0, 0, 0) + 514361213).intern(), jSONObjectM255);
                this.m.m257(e(ExpandableListView.getPackedPositionGroup(0L) - 20, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 494637243, (byte) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), (short) ((-1) - ImageFormat.getBitsPerPixel(0)), 514361213 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), jSONObjectM255);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m404(String str, JSONObject jSONObject) {
        this.l.post(new a(str, jSONObject));
        int i2 = i + 117;
        j = i2 % 128;
        if (i2 % 2 != 0) {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m405(JSONObject jSONObject) {
        int i2 = j + 73;
        i = i2 % 128;
        int i3 = i2 % 2;
        m404(c("\ue072䰚꧳㐔", "\u0000\u0000\u0000\u0000", (-213116192) - TextUtils.getOffsetBefore("", 0), (char) View.getDefaultSize(0, 0), "ၐ옑랜Ꮺ遽㳯\ue2f6䔹튲꯶ǥ").intern(), jSONObject);
        int i4 = j + 19;
        i = i4 % 128;
        if (i4 % 2 == 0) {
        } else {
            throw null;
        }
    }
}
