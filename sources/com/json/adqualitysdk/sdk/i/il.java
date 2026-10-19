package com.json.adqualitysdk.sdk.i;

import android.graphics.drawable.Drawable;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class il implements Runnable {
    private static long a = -2010124079686354875L;
    private static int b = 0;
    private static int c = 1;

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

    @Override // java.lang.Runnable
    public final void run() {
        int i = b + 119;
        c = i % 128;
        int i2 = i % 2;
        try {
            mo225();
            int i3 = c + 69;
            b = i3 % 128;
            int i4 = i3 % 2;
        } catch (Throwable th) {
            try {
                mo375(th);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: ﻐ */
    public void mo375(Throwable th) {
        String strIntern = a("๗ฃ殗鎐텄奛↝\uef25늫\uf051硣뇵찑톔鍎᭠괇\uf073", 1 - Drawable.resolveOpacity(0, 0)).intern();
        StringBuilder sb = new StringBuilder();
        sb.append(a("ↁ⇄ᦁ\ue1b6뺒\uf7b2乪샧샸龝횟ἒ\ue389ꎏﲴ떄苎艳\udd8c", 1 - View.resolveSize(0, 0)).intern());
        sb.append(getClass().getName());
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(a("뢵룶ᣒ\ue0fb䇘徐넳姒솣뜬", AndroidCharacter.getMirror('0') - '/').intern());
        sb2.append(getClass().getName());
        sb2.append(a("\uef8a\uefa3⠥\u2daf鰉", AndroidCharacter.getMirror('0') - '/').intern());
        jy.m986(strIntern, string, sb2.toString(), th);
        String strIntern2 = a("๗ฃ殗鎐텄奛↝\uef25늫\uf051硣뇵찑톔鍎᭠괇\uf073", TextUtils.getTrimmedLength("") + 1).intern();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(a("ↁ⇄ᦁ\ue1b6뺒\uf7b2乪샧샸龝횟ἒ\ue389ꎏﲴ떄苎艳\udd8c", -TextUtils.lastIndexOf("", '0', 0, 0)).intern());
        sb3.append(getClass().getName());
        m.m1031(strIntern2, sb3.toString());
        m.m1032(a("๗ฃ殗鎐텄奛↝\uef25늫\uf051硣뇵찑톔鍎᭠괇\uf073", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1).intern(), a("꾇꿃㖈춨ќ嘋\uf4a2仺\uecbd╏睼뺥", -TextUtils.lastIndexOf("", '0')).intern(), th);
        int i = c + 121;
        b = i % 128;
        int i2 = i % 2;
    }

    /* JADX INFO: renamed from: ﻛ */
    public abstract void mo225() throws Exception;
}
