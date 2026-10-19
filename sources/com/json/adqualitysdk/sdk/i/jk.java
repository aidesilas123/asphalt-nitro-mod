package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.graphics.Color;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.IronSourceAdQuality;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class jk {
    private static long a = -2891859016554625732L;
    private static char[] b = {'c', 'o', 'p', 'a', 'd', 'i', 't', 'u', 'z', 'l', 'f', 'r', 'm', 'n', 's', 'v'};
    private static char c = 4;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5918d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5919e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f5920f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ak f5921g;

    public jk(Context context, ak akVar) {
        this.f5920f = context;
        this.f5921g = akVar;
        new gl(context);
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(a, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * a));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    private static String b(byte b2, String str, int i) {
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

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final ak m916() {
        int i = f5918d + 7;
        int i2 = i % 128;
        f5919e = i2;
        int i3 = i % 2;
        ak akVar = this.f5921g;
        int i4 = i2 + 35;
        f5918d = i4 % 128;
        if ((i4 % 2 != 0 ? '\r' : '9') != '\r') {
            return akVar;
        }
        int i5 = 14 / 0;
        return akVar;
    }

    /* JADX INFO: renamed from: ｋ */
    public JSONObject mo274(JSONObject jSONObject, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONObject jSONObject2;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
            int i = f5919e + 63;
            f5918d = i % 128;
            int i2 = i % 2;
        } else {
            jSONObject2 = jSONObject;
        }
        JSONObject jSONObjectM962 = ju.m962(jSONObject2);
        jSONObjectM962.put(a("\uf0e7倱\uf086ᕽ㣪\ue0f1닢⼎\ue472\u0a64", KeyEvent.normalizeMetaState(0)).intern(), this.f5921g.m285());
        String strM291 = this.f5921g.m291();
        if (!TextUtils.isEmpty(strM291)) {
            int i3 = f5919e + 31;
            f5918d = i3 % 128;
            int i4 = i3 % 2;
            jSONObjectM962.put(a("伡햛佈郔\ueb3cʳ愶쵤", ViewConfiguration.getKeyRepeatTimeout() >> 16).intern(), strM291);
        }
        if (z2) {
            jSONObjectM962.put(b((byte) (Color.argb(0, 0, 0, 0) + 84), "\u0001\u0002ÄÄµ", 5 - View.getDefaultSize(0, 0)).intern(), this.f5921g.m296());
            jSONObjectM962.put(b((byte) (MotionEvent.axisFromString("") + 28), "\u0005\u0006\u008f", TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 4).intern(), this.f5921g.m282());
            jSONObjectM962.put(a("㏢ᾭ㎗嫸ᐊ鸖\udd4c", TextUtils.indexOf((CharSequence) "", '0') + 1).intern(), this.f5921g.m293());
            jSONObjectM962.put(b((byte) (125 - Color.alpha(0)), "\u0004\u0003", Color.red(0) + 2).intern(), this.f5921g.m290());
            jSONObjectM962.put(b((byte) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 126), "\u0004\n", 2 - (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), ((double) Calendar.getInstance().getTimeZone().getRawOffset()) / 3600000.0d);
            jSONObjectM962.put(a("ש奇֝ᰋ볢뿞㛌瀏ᅫ", ViewConfiguration.getDoubleTapTimeout() >> 16).intern(), IronSourceAdQuality.getSDKVersion());
            jSONObjectM962.put(b((byte) (26 - TextUtils.getOffsetAfter("", 0)), "\u008e", 1 - (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), js.m944());
            jSONObjectM962.put(a("촿鲞쵒\ud9cd⿍蚟ꗑ䥎\ud9a3", TextUtils.indexOf("", "", 0)).intern(), Build.MODEL);
            jSONObjectM962.put(a("疓ʚ痾䟇ⱙ蠚ꙏ䟛愅壗㥄ꌋ将淴ቲ븽", (-1) - TextUtils.indexOf((CharSequence) "", '0', 0)).intern(), Build.MANUFACTURER);
            jSONObjectM962.put(b((byte) (102 - View.resolveSizeAndState(0, 0, 0)), "\u0001\n\u0002\u0007\t\u0002\b\u000f", Process.getGidForName("") + 9).intern(), b((byte) (KeyEvent.getDeadChar(0, 0) + 50), "\u0001\u000f\u0007\b\u0005\t\u0096", View.MeasureSpec.getMode(0) + 7).intern());
            jSONObjectM962.put(b((byte) (-TextUtils.lastIndexOf("", '0')), "\u0002\rw", (ViewConfiguration.getJumpTapTimeout() >> 16) + 3).intern(), jx.m975());
            js.m947(this.f5920f, jSONObjectM962);
            jx.m982(this.f5920f, jSONObjectM962);
            jx.m976(this.f5920f, jSONObjectM962, z3);
            jx.m981(jSONObjectM962);
            jx.m985(jSONObjectM962);
            jSONObjectM962.put(a("\ue556䥞\ue538క뀓\uf198㨊㹚", View.MeasureSpec.getSize(0)).intern(), z);
            jx.m980(this.f5920f, jSONObjectM962);
            jx.m977(jSONObjectM962);
            try {
                JSONObject jSONObject3 = new JSONObject(this.f5921g.m283());
                if ((jSONObject3.length() > 0 ? 'H' : (char) 19) != 19) {
                    int i5 = f5919e + 113;
                    f5918d = i5 % 128;
                    int i6 = i5 % 2;
                    jSONObjectM962.putOpt(b((byte) (114 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1))), "\u000e\u0004\u0005\u0007", 3 - ((byte) KeyEvent.getModifierMetaStateMask())).intern(), jSONObject3);
                }
            } catch (Exception e2) {
                m.m1032(a("덳夠댲ᱸ疄궡ﾭ扠\ua7e2͠悬蚰髪㙮䮐鮅跖\udd49㚖沐\ue0f4솹⇻䅱\udbb1\uf4adೱ婫캡", TextUtils.indexOf((CharSequence) "", '0') + 1).intern(), a("᠘뽤ᡝ飯怰츍\uea3aǖಚ\ue568申\ue516㆜퀑希\uf825⛨㬅⌗༦䮹➸㑦⋃烜ዩᤲ㧘旋緗\ue24c䲢諼棇\uf712揷뿮厽\udbac皖", View.combineMeasuredStates(0, 0)).intern(), e2);
            }
        }
        return jSONObjectM962;
    }
}
