package com.bytedance.sdk.openadsdk.b.a;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.j.c.b;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: OverSeaEventUploadImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class j implements com.bytedance.sdk.component.e.a.b.c {
    public p<com.bytedance.sdk.openadsdk.b.a> a;
    private final c b = new c();

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(List<com.bytedance.sdk.openadsdk.b.a> list, com.bytedance.sdk.openadsdk.b.e eVar) {
        int i;
        return !c(list) && (i = eVar.b) >= 400 && i < 500;
    }

    private boolean c(List<com.bytedance.sdk.openadsdk.b.a> list) {
        JSONObject jSONObjectC;
        if (list == null || list.size() == 0 || (jSONObjectC = list.get(0).c()) == null) {
            return true;
        }
        return TextUtils.isEmpty(jSONObjectC.optString("app_log_url"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, List<com.bytedance.sdk.component.e.a.d.a>> d(List<com.bytedance.sdk.component.e.a.d.a> list) {
        HashMap<String, List<com.bytedance.sdk.component.e.a.d.a>> map = new HashMap<>();
        new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.bytedance.sdk.component.e.a.d.a aVar = list.get(i);
            JSONObject jSONObjectG = aVar.g();
            if (jSONObjectG != null) {
                String strOptString = jSONObjectG.optString("app_log_url");
                List<com.bytedance.sdk.component.e.a.d.a> arrayList = map.get(strOptString);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    map.put(strOptString, arrayList);
                }
                arrayList.add(aVar);
            }
        }
        return map;
    }

    public com.bytedance.sdk.openadsdk.b.e a(List<com.bytedance.sdk.openadsdk.b.a> list) {
        if (this.a == null) {
            this.a = o.c();
        }
        if (this.a == null) {
            return null;
        }
        int iAf = com.bytedance.sdk.openadsdk.core.settings.o.aj().af();
        if (3 == iAf) {
            return this.a.a(this.b.a(this.b.a(list, false), System.currentTimeMillis(), this.b.a(), true), this.b.a(list), true);
        }
        if (2 != iAf) {
            return this.a.a(this.b.a(list, System.currentTimeMillis(), this.b.a(), false), this.b.a(list), false);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObjectA = this.b.a();
        this.a.a(this.b.a(this.b.a(list, true), jCurrentTimeMillis, jSONObjectA, true), this.b.a(list), true);
        return this.a.a(this.b.a(this.b.b(list), jCurrentTimeMillis, jSONObjectA, false), this.b.a(list), false);
    }

    @Override // com.bytedance.sdk.component.e.a.b.c
    public void a(final List<com.bytedance.sdk.component.e.a.d.a> list, @Nullable final com.bytedance.sdk.component.e.a.b.b bVar) {
        com.bytedance.sdk.component.e.a.d.a aVar;
        if (list == null || list.isEmpty() || (aVar = list.get(0)) == null) {
            return;
        }
        byte bD = aVar.d();
        final ArrayList arrayList = new ArrayList();
        if (bD == 0) {
            aa.b(new com.bytedance.sdk.component.g.h("upload_ad_event") { // from class: com.bytedance.sdk.openadsdk.b.a.j.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it;
                    try {
                        it = j.this.d(list).entrySet().iterator();
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.l.e("OverSeaEventUploadImp", th.getMessage());
                        it = null;
                    }
                    if (it == null) {
                        com.bytedance.sdk.component.e.a.b.b bVar2 = bVar;
                        if (bVar2 != null) {
                            bVar2.a(arrayList);
                            return;
                        }
                        return;
                    }
                    while (it.hasNext()) {
                        try {
                            a.a(a.f1167d);
                            List<com.bytedance.sdk.component.e.a.d.a> list2 = (List) ((Map.Entry) it.next()).getValue();
                            ArrayList arrayList2 = new ArrayList();
                            for (com.bytedance.sdk.component.e.a.d.a aVar2 : list2) {
                                arrayList2.add(new com.bytedance.sdk.openadsdk.b.a(aVar2.c(), aVar2.g()));
                            }
                            com.bytedance.sdk.openadsdk.b.e eVarA = j.this.a(arrayList2);
                            if (bVar != null && eVarA != null) {
                                boolean z = eVarA.f1229d;
                                if (j.this.a(arrayList2, eVarA)) {
                                    z = true;
                                }
                                arrayList.add(new com.bytedance.sdk.component.e.a.b.c.a(new com.bytedance.sdk.component.e.a.b.c.b(eVarA.a, eVarA.b, eVarA.c, z, ""), list2));
                                if (eVarA.b == 200) {
                                    a.a(a.f1167d, true);
                                } else if (z) {
                                    a.a(a.f1167d, false);
                                }
                            }
                        } catch (Throwable th2) {
                            com.bytedance.sdk.component.utils.l.e("OverSeaEventUploadImp", th2.getMessage());
                        }
                    }
                    com.bytedance.sdk.component.e.a.b.b bVar3 = bVar;
                    if (bVar3 != null) {
                        bVar3.a(arrayList);
                    }
                }
            }, 10);
            return;
        }
        if (bD == 1) {
            final ArrayList arrayList2 = new ArrayList();
            for (com.bytedance.sdk.component.e.a.d.a aVar2 : list) {
                arrayList2.add(new b.a(aVar2.c(), aVar2.g()));
            }
            a.a(a.f1168e);
            if (arrayList2.size() > 0) {
                aa.b(new com.bytedance.sdk.component.g.h("upload_stats_event") { // from class: com.bytedance.sdk.openadsdk.b.a.j.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.openadsdk.b.e eVarB = j.this.b(arrayList2);
                        if (bVar == null || eVarB == null) {
                            return;
                        }
                        arrayList.add(new com.bytedance.sdk.component.e.a.b.c.a(new com.bytedance.sdk.component.e.a.b.c.b(eVarB.a, eVarB.b, eVarB.c, eVarB.f1229d, ""), list));
                        bVar.a(arrayList);
                        if (eVarB.b == 200) {
                            a.a(a.f1168e, true);
                        } else if (eVarB.f1229d) {
                            a.a(a.f1168e, false);
                        }
                    }
                }, 5);
            }
        }
    }

    public com.bytedance.sdk.openadsdk.b.e b(List<b.a> list) {
        if (this.a == null) {
            this.a = o.c();
        }
        if (list == null || list.size() == 0 || !com.bytedance.sdk.openadsdk.core.settings.k.a()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<b.a> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().b);
            }
            jSONObject.put("stats_list", jSONArray);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", jCurrentTimeMillis);
            jSONObject.put("req_sign", com.bytedance.sdk.component.utils.e.a(String.valueOf(jCurrentTimeMillis).concat("stats_list")));
        } catch (Exception unused) {
        }
        return this.a.a(jSONObject);
    }
}
