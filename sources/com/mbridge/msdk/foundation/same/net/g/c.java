package com.mbridge.msdk.foundation.same.net.g;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: RequestControlUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private final String a;
    private int b;
    private ArrayList<Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, a> f7146d;

    /* JADX INFO: compiled from: RequestControlUtil.java */
    private static class a {
        public long a;
        public int b;
        public String c;

        public a(long j, int i, String str) {
            this.a = j;
            this.b = i;
            this.c = str;
        }
    }

    /* JADX INFO: compiled from: RequestControlUtil.java */
    private static class b {
        private static final c a = new c();
    }

    private c() {
        this.a = "IDErrorUtil";
        this.c = new ArrayList<>();
        this.f7146d = new ConcurrentHashMap<>();
        e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        eVarB = eVarB == null ? f.a().b() : eVarB;
        this.b = eVarB.aC() * 1000;
        if (eVarB.aD() == null || eVarB.aD().size() <= 0) {
            aa.d("IDErrorUtil", "Setting ercd is EMPTY and use default code list.");
            this.c.addAll(Arrays.asList(-1, -10, -1201, -1202, -1203, -1205, -1206, -1208, -1301, -1302, -1305, -1306, -1307, -1915, 10602, 10603, 10604, 10609, 10610, 10616));
        } else {
            aa.d("IDErrorUtil", "Setting ercd not EMPTY will use setting.");
            this.c.addAll(eVarB.aD());
        }
    }

    private synchronized a a(String str) {
        a aVar;
        aa.d("IDErrorUtil", "getErrorInfo : " + str);
        if (!this.f7146d.containsKey(str) || (aVar = this.f7146d.get(str)) == null) {
            return null;
        }
        if (aVar.b == -1) {
            return aVar;
        }
        if (System.currentTimeMillis() <= aVar.a + ((long) this.b)) {
            aa.d("IDErrorUtil", "getErrorInfo : " + aVar.c);
            return aVar;
        }
        this.f7146d.remove(str);
        if (this.f7146d.size() > 0) {
            for (Map.Entry<String, a> entry : this.f7146d.entrySet()) {
                aa.d("IDErrorUtil", "getErrorInfo : delete timeout entry");
                if (System.currentTimeMillis() - entry.getValue().a > this.b) {
                    this.f7146d.remove(entry.getKey());
                }
            }
        }
        return null;
    }

    public static c a() {
        return b.a;
    }

    public final l a(com.mbridge.msdk.foundation.same.net.h.d dVar) {
        int i;
        String str = dVar.c().get("app_id");
        String str2 = dVar.c().get("placement_id");
        String str3 = dVar.c().get(MBridgeConstans.PROPERTIES_UNIT_ID);
        String str4 = dVar.c().get("ad_type");
        String str5 = dVar.c().get("token");
        String str6 = str + "_" + str2 + "_" + str3 + "_" + str4;
        a aVarA = a(str6);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.mbridge.msdk.foundation.same.net.d.b("data_res_type", "1"));
        if (aVarA != null && !TextUtils.isEmpty(aVarA.c)) {
            try {
                if (aVarA.b != -1) {
                    return l.a(new JSONObject(aVarA.c), new com.mbridge.msdk.foundation.same.net.f.c(200, aVarA.c.getBytes(), arrayList));
                }
                if (!TextUtils.isEmpty(str5)) {
                    return null;
                }
                if (str4 != null && !TextUtils.isEmpty(str4) && (i = Integer.parseInt(str4)) != 287 && i != 94) {
                    if (System.currentTimeMillis() < ((long) (f.a().d(str, str3).w() * 1000)) + aVarA.a) {
                        return l.a(new JSONObject(aVarA.c), new com.mbridge.msdk.foundation.same.net.f.c(200, aVarA.c.getBytes(), arrayList));
                    }
                    this.f7146d.remove(str6);
                    return null;
                }
            } catch (Exception e2) {
                aa.d("IDErrorUtil", e2.getMessage());
            }
        }
        aa.d("IDErrorUtil", "getErrorInfo RETURN NULL");
        return null;
    }

    public final synchronized void a(String str, int i, String str2, long j) {
        if (this.f7146d.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (this.c.contains(Integer.valueOf(i))) {
            aa.d("IDErrorUtil", "addErrorInfo : " + str + " " + str2);
            this.f7146d.put(str, new a(j, i, str2));
        }
    }
}
