package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ec extends eb {
    private static long k = 4326088674674141650L;
    private static int l = 0;
    private static int m = 1;

    public ec(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String d(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (f.f54) {
            char[] cArrM713 = f.m713(k, cArr, i);
            f.f52 = 4;
            while (true) {
                int i2 = f.f52;
                if (i2 < cArrM713.length) {
                    f.f53 = i2 - 4;
                    cArrM713[f.f52] = (char) (((long) (cArrM713[r1] ^ cArrM713[r1 % 4])) ^ (((long) f.f53) * k));
                    f.f52++;
                } else {
                    str2 = new String(cArrM713, 4, cArrM713.length - 4);
                }
            }
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        Object objM674;
        int i = l + 55;
        m = i % 128;
        int i2 = i % 2;
        dp dpVarM702 = m706().m702(drVar, cjVar);
        try {
            objM674 = m707().m702(drVar, cjVar).m674();
        } catch (Exception e2) {
            String strM445 = cjVar.m445();
            StringBuilder sb = new StringBuilder();
            sb.append(d("쌝썘㪼酮팜皳䊸쮪搧ꮆ\uebe7ቻ跬ʲ댯竔㚱\ue57f塼얚帝밽\ue1dfⱇ蜆ᓥ褐眄⣝\uef4a⸚\udff2冀䘂\uf7d2⚸拉Ở鳸腠⋦\uf195\u242b\ue822䮣䠾", (-1) - TextUtils.indexOf((CharSequence) "", '0', 0, 0)).intern());
            sb.append(this);
            sb.append(m703());
            cn.m519(strM445, sb.toString(), e2);
        }
        if (objM674 instanceof JSONObject) {
            return new dp(((JSONObject) objM674).opt((String) dpVarM702.m674()));
        }
        if (objM674 instanceof JSONArray) {
            return new dp(((JSONArray) objM674).opt(dpVarM702.m679().intValue()));
        }
        if (objM674 instanceof Map) {
            return new dp(((Map) objM674).get(dpVarM702.m674()));
        }
        if (objM674 instanceof List) {
            return new dp(((List) objM674).get(dpVarM702.m679().intValue()));
        }
        if (objM674.getClass().isArray()) {
            return new dp(((Object[]) objM674)[dpVarM702.m679().intValue()]);
        }
        String strM4452 = cjVar.m445();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(d("쌝썘㪼酮팜皳䊸쮪搧ꮆ\uebe7ቻ跬ʲ댯竔㚱\ue57f塼얚帝밽\ue1dfⱇ蜆ᓥ褐眄⣝\uef4a⸚\udff2冀䘂\uf7d2⚸拉Ở鳸腠⋦\uf195\u242b\ue822䮣䠾", Color.argb(0, 0, 0, 0)).intern());
        sb2.append(this);
        sb2.append(m703());
        sb2.append(d("듏듵\uf7b2ⅺṀꃃ\uf2aa᷇\u13fe曁寸쐚奔쾤̡곥䅢⡫\ue863Ꭽ⦴焝冞墨\uf0c9\ud9a8㤃ꅳ弌≅鹞ক♘謊䞒\uf0c8軫펀⳱圗唭㲍鐵㹉㰿", View.MeasureSpec.getMode(0)).intern());
        sb2.append(objM674);
        cn.m519(strM4452, sb2.toString(), null);
        dp dpVar = new dp(null);
        int i3 = m + 109;
        l = i3 % 128;
        int i4 = i3 % 2;
        return dpVar;
    }
}
