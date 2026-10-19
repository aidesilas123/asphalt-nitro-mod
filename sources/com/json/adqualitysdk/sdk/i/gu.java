package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.core.view.ViewCompat;
import com.json.adqualitysdk.sdk.i.cb;
import com.json.adqualitysdk.sdk.i.iw;
import com.json.b4;
import com.unity3d.services.UnityServices;
import com.unity3d.services.ads.adunit.AdUnitActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class gu implements gd {
    private static long a = 3827355779377360458L;
    private static int b = 0;
    private static int c = 1;

    public static class c implements gd {
        private static long a = 0;
        private static int b = 0;
        private static char c = 17828;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static int f5693d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static int f5694e = 1;

        private static boolean a() {
            boolean zM377 = ay.m377(new gu());
            int i = f5694e + 43;
            f5693d = i % 128;
            int i2 = i % 2;
            return zM377;
        }

        private static String b(String str, String str2, int i, char c2, String str3) {
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

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻐ */
        public final Class mo716() {
            int i = f5693d + 73;
            f5694e = i % 128;
            int i2 = i % 2;
            if ((a() ? 'P' : (char) 18) == 18) {
                return AdUnitActivity.class;
            }
            int i3 = f5694e + 107;
            f5693d = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
            return null;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﻛ */
        public final String mo717() {
            int i = f5693d + 109;
            f5694e = i % 128;
            int i2 = i % 2;
            if ((a() ? b4.R : '\'') == '\'') {
                return b("碱㞡䛱䊯", "\u0000\u0000\u0000\u0000", ViewCompat.MEASURED_STATE_MASK - Color.rgb(0, 0, 0), (char) TextUtils.indexOf("", "", 0, 0), "汨驖䅓짬⎲瓍ం\uf3c3\u0eee⠟♪忤棒ꗙ徲뢒ﶯ맚㈎⏁笩\uf4aa蕉\udae8♔Ⅷ䠈啎鿐쉠㺫鼥\u09db䥂㽊㩓䟅꼟鿪鵿ᵐጿ좮ᗁ\ud986镄").intern();
            }
            int i3 = f5694e + 109;
            f5693d = i3 % 128;
            int i4 = i3 % 2;
            return null;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ｋ */
        public final iw.e mo718() {
            iw.e eVar = new iw.e(b("簼⚥\uea62抷", "\u0000\u0000\u0000\u0000", 1646699901 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), (char) ((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 47082), "纳綑噩톛쩐鑢ꮋ苬֭\uf531⏲㫻欘詺葈恘킴\ued96\ue3a3").intern(), b("ﹼ⸓Ԋ亥", "\u0000\u0000\u0000\u0000", (ViewConfiguration.getScrollDefaultDelay() >> 16) + 170791934, (char) (42245 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)), "ꆕ\ufb07熮").intern());
            int i = f5694e + 59;
            f5693d = i % 128;
            int i2 = i % 2;
            return eVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾇ */
        public final az mo719() {
            cb.c cVar = new cb.c(b("\udcb1䞧톆嫰", "\u0000\u0000\u0000\u0000", KeyEvent.getMaxKeyCode() >> 16, (char) TextUtils.getOffsetBefore("", 0), "陊靇꽑ﳴ石䦈\ud944蓥").intern());
            int i = f5694e + 53;
            f5693d = i % 128;
            int i2 = i % 2;
            return cVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.gd
        /* JADX INFO: renamed from: ﾒ */
        public final String mo720() {
            int keyRepeatTimeout;
            char c2;
            int i = f5694e + 9;
            f5693d = i % 128;
            if ((i % 2 != 0 ? '!' : (char) 22) != 22) {
                keyRepeatTimeout = ViewConfiguration.getKeyRepeatTimeout() << 57;
                c2 = (char) ((-1) >> (ExpandableListView.getPackedPositionForChild(0, 1) > 1L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 1) == 1L ? 0 : -1)));
            } else {
                keyRepeatTimeout = ViewConfiguration.getKeyRepeatTimeout() >> 16;
                c2 = (char) ((-1) - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)));
            }
            String strIntern = b("\udcb1䞧톆嫰", "\u0000\u0000\u0000\u0000", keyRepeatTimeout, c2, "陊靇꽑ﳴ石䦈\ud944蓥").intern();
            int i2 = f5694e + 99;
            f5693d = i2 % 128;
            int i3 = i2 % 2;
            return strIntern;
        }
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

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = b + 29;
        c = i % 128;
        if (!(i % 2 != 0)) {
            int i2 = 5 / 0;
        }
        return UnityServices.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = c + 105;
        b = i % 128;
        int i2 = i % 2;
        String strIntern = a("쿾쾝륬흉黧Ꙡ䈞\uec90皣鹰ଲꈒ뷗姅큧᭠\ue4f5\u20cb隙큀⬷\uebe5徶襭刘딫\ue4d5亯饺簯괰ߋ\udf94인爢ﳵۛ躕", Process.myPid() >> 22).intern();
        int i3 = b + 73;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("\udb74\udb17牚᱿߆럘\udb3cﵨ戹啋鈎뎱\ua956銳䤍ઃ\uf062\uebf1྾쇷㾵⃔욁", ExpandableListView.getPackedPositionGroup(0L)).intern(), a("\ue2e7\ue2d0牂ᰦ휪ꎯஎ", ViewConfiguration.getJumpTapTimeout() >> 16).intern());
        int i = b + 7;
        c = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        cb cbVar = new cb(a("\ued1a\ued6fკ绽\ue65d˭㪠䡇呋㟊玅ژ", TextUtils.getTrimmedLength("")).intern());
        int i = c + 3;
        b = i % 128;
        if ((i % 2 != 0 ? '4' : '>') == '>') {
            return cbVar;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = b + 7;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a("\ued1a\ued6fკ绽\ue65d˭㪠䡇呋㟊玅ژ", (-1) - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1))).intern();
        int i3 = b + 79;
        c = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
