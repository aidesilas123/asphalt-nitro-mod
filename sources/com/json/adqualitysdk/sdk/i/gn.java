package com.json.adqualitysdk.sdk.i;

import android.graphics.drawable.Drawable;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.iw;
import com.smaato.sdk.core.SmaatoSdk;

/* JADX INFO: loaded from: classes4.dex */
public final class gn implements gd {
    private static long a = 0;
    private static int b = 0;
    private static char c = 426;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5677d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5678e = 1;

    private static String a(String str, String str2, int i, char c2, String str3) {
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
        int i = f5677d + 95;
        int i2 = i % 128;
        f5678e = i2;
        if (!(i % 2 != 0)) {
            throw null;
        }
        int i3 = i2 + 63;
        f5677d = i3 % 128;
        if ((i3 % 2 != 0 ? 'V' : (char) 29) == 29) {
            return SmaatoSdk.class;
        }
        int i4 = 15 / 0;
        return SmaatoSdk.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int iResolveOpacity;
        char packedPositionType;
        int i = f5678e + 63;
        f5677d = i % 128;
        if ((i % 2 != 0 ? '0' : 'L') != 'L') {
            iResolveOpacity = 348431260 - Drawable.resolveOpacity(0, 0);
            packedPositionType = (char) (ExpandableListView.getPackedPositionType(1L) + 56025);
        } else {
            iResolveOpacity = 348431260 - Drawable.resolveOpacity(0, 0);
            packedPositionType = (char) (56025 - ExpandableListView.getPackedPositionType(0L));
        }
        String strIntern = a("鱞쒣\ud914\u0eda", "\u0000\u0000\u0000\u0000", iResolveOpacity, packedPositionType, "膽聺⡪訠퐁냢䆾몫蔳痓Ჸ\ued99\ueafd髼諢ᗇ\uf04d胀洈這ሿ\uf1c2馰扊幒఼뮶펵ￅ").intern();
        int i2 = f5678e + 75;
        f5677d = i2 % 128;
        if ((i2 % 2 != 0 ? '0' : 'P') != '0') {
            return strIntern;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("\udfc4᭲乔뎝", "\u0000\u0000\u0000\u0000", 1411085023 - ExpandableListView.getPackedPositionType(0L), (char) (40270 - KeyEvent.normalizeMetaState(0)), "铪\u0ad9郞뚕á镍ዡ䊚ꈺ옽슼墐笢Ꮽꇗῆ꯳").intern(), a("\ue368\udac6躲芧", "\u0000\u0000\u0000\u0000", (-1294285085) - (ViewConfiguration.getPressedStateDuration() >> 16), (char) (TextUtils.getOffsetAfter("", 0) + 42894), "痀\uf243譄").intern());
        int i = f5678e + 3;
        f5677d = i % 128;
        if (i % 2 == 0) {
            return eVar;
        }
        int i2 = 60 / 0;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bw bwVar = new bw(a("ﳆʙꅓ廸", "\u0000\u0000\u0000\u0000", KeyEvent.keyCodeFromString(""), (char) (View.getDefaultSize(0, 0) + 63649), "\ua7cd⼔免\ue586썪섴").intern());
        int i = f5677d + 55;
        f5678e = i % 128;
        int i2 = i % 2;
        return bwVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5678e + 67;
        f5677d = i % 128;
        int i2 = i % 2;
        String strIntern = a("ﳆʙꅓ廸", "\u0000\u0000\u0000\u0000", Process.myTid() >> 22, (char) (63649 - (Process.myPid() >> 22)), "\ua7cd⼔免\ue586썪섴").intern();
        int i3 = f5678e + 43;
        f5677d = i3 % 128;
        int i4 = i3 % 2;
        return strIntern;
    }
}
