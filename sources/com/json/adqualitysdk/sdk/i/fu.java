package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import com.json.adqualitysdk.sdk.i.iw;
import io.bidmachine.BidMachine;

/* JADX INFO: loaded from: classes4.dex */
public final class fu implements gd {
    private static long a = 1886177619284434638L;
    private static int b = 0;
    private static int c = 1;

    private static String a(String str, int i) {
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
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        Class<BidMachine> cls;
        int i = b;
        int i2 = i + 65;
        c = i2 % 128;
        if ((i2 % 2 == 0 ? 'C' : '2') != 'C') {
            cls = BidMachine.class;
        } else {
            cls = BidMachine.class;
            int i3 = 44 / 0;
        }
        int i4 = i + 71;
        c = i4 % 128;
        int i5 = i4 % 2;
        return cls;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = c + 55;
        b = i % 128;
        return a("麧\uf48a䪶ꀭ㘋豽\ue3a1禂쿵┥묉ᅹ撯𢡊僖꘢㰚鉘\ue9a9羜헺⬠脒\u1776", !(i % 2 == 0) ? ViewConfiguration.getPressedStateDuration() + 38 + 18814 : (ViewConfiguration.getPressedStateDuration() >> 16) + 27179).intern();
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a("麭ᯪ鐶ᅁ讇Ӛ腸㮬들ㄞꨏ⒕ꄣ婥풹凊쨝䝝쇡稱\uf777", 34122 - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern(), a("黹\ued81砼", 29537 - View.MeasureSpec.getSize(0)).intern());
        int i = b + 15;
        c = i % 128;
        int i2 = i % 2;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bd bdVar = new bd(a("麬讚듐ꄔ쩛\uf49c\ue1c8\u0a0c㝈\u218e", 5437 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern());
        int i = b + 93;
        c = i % 128;
        int i2 = i % 2;
        return bdVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = c + 25;
        b = i % 128;
        String strIntern = a("麯胇ꉷ엦\ue716ڀ⠮䩌", (i % 2 != 0 ? '\b' : '*') != '*' ? 401 / View.getDefaultSize(0, 0) : View.getDefaultSize(0, 0) + 7789).intern();
        int i2 = c + 39;
        b = i2 % 128;
        if (!(i2 % 2 != 0)) {
            return strIntern;
        }
        throw null;
    }
}
