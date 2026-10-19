package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.ju;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class dn {
    private static char a = 13334;
    private static char b = 45536;
    private static char c = 3291;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5553d = 33454;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5554e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5555f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5556g;
    private String[] h;
    private fr i;

    final class a implements ju.d<String> {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.d
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ String mo340(JSONArray jSONArray, int i) {
            return dq.m680(jSONArray.optString(i));
        }
    }

    public dn(String str, String str2, JSONObject jSONObject) {
        this.f5556g = dq.m680(str2);
        List listM957 = ju.m957(jSONObject.optJSONArray(b("謕뢕㳦橩", (ViewConfiguration.getJumpTapTimeout() >> 16) + 4).intern()), new a());
        String[] strArr = new String[listM957.size()];
        this.h = strArr;
        listM957.toArray(strArr);
        try {
            this.i = new dl(str, str2).m664(dm.m666(str, str2, jSONObject.optString(b("省⤝ꫭ볹", 4 - ExpandableListView.getPackedPositionType(0L)).intern())));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append(b("⒐\uf470ꪢ⦙\uea8f㎠テ\ufbcd濽┹\u1738紼\udf86惷嵲䛔\ue475р깇亩子釾", 20 - ((byte) KeyEvent.getModifierMetaStateMask())).intern());
            sb.append(this.f5556g);
            cn.m519(str, sb.toString(), th);
        }
    }

    private Map<String, Object> a(cj cjVar, List<Object> list, List<String> list2) {
        int i = f5554e + 73;
        f5555f = i % 128;
        int i2 = i % 2;
        int i3 = 0;
        if (list.size() != list2.size()) {
            String strM445 = cjVar.m445();
            StringBuilder sb = new StringBuilder();
            sb.append(this.f5556g);
            sb.append(b("\ue006\u0adf졀\udb9c䯱ꝳ蘖\ue06e렺龓ﰂ樝櫷ꍫ䊒湺子釾", 17 - TextUtils.indexOf("", "", 0)).intern());
            sb.append(list2.size());
            sb.append(b("盡㙵犑夈⤃똙舌慴䅦쎮겔૮榺蒠ꁷ봣饳佲\ud8b3곋ࡡ航蘖\ue06e", 23 - TextUtils.lastIndexOf("", '0', 0, 0)).intern());
            sb.append(list.size());
            cn.m519(strM445, sb.toString(), null);
            int i4 = f5554e + 109;
            f5555f = i4 % 128;
            int i5 = i4 % 2;
            return null;
        }
        HashMap map = new HashMap();
        while (true) {
            if ((i3 < list.size() ? '2' : (char) 27) == 27) {
                return map;
            }
            map.put(list2.get(i3), list.get(i3));
            i3++;
        }
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
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5553d)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + a)) ^ ((cArr3[1] >>> 5) + b)));
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

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final dp m667(dr drVar, cj cjVar, List<Object> list) {
        dr drVar2 = new dr(a(cjVar, list, Arrays.asList(this.h)), drVar.m685());
        fr frVar = this.i;
        if (frVar == null) {
            String strM445 = cjVar.m445();
            StringBuilder sb = new StringBuilder();
            sb.append(b("횵䊘\ue475р깇亩子釾", (ViewConfiguration.getTapTimeout() >> 16) + 7).intern());
            sb.append(this.f5556g);
            sb.append(b("䥥轚ᶅ蒹䅋柮쓊嵣旔責省⤝ꫭ볹", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 13).intern());
            cn.m519(strM445, sb.toString(), null);
            return null;
        }
        int i = f5555f + 109;
        f5554e = i % 128;
        if (!(i % 2 == 0)) {
            frVar.mo714(drVar2, cjVar);
            throw null;
        }
        dp dpVarMo714 = frVar.mo714(drVar2, cjVar);
        int i2 = f5554e + 21;
        f5555f = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 28 : '<') != 28) {
            return dpVarMo714;
        }
        int i3 = 48 / 0;
        return dpVarMo714;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m668() {
        int i = f5554e + 33;
        f5555f = i % 128;
        if ((i % 2 == 0 ? '4' : (char) 14) != '4') {
            return this.f5556g;
        }
        throw null;
    }
}
