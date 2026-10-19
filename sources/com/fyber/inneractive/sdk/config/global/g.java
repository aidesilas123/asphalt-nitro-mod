package com.fyber.inneractive.sdk.config.global;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.util.IAlog;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static JSONArray a(Map<Class<? extends com.fyber.inneractive.sdk.config.global.features.g>, com.fyber.inneractive.sdk.config.global.features.g> map, boolean z) {
        d next;
        JSONArray jSONArray = new JSONArray();
        try {
            for (com.fyber.inneractive.sdk.config.global.features.g gVar : map.values()) {
                List<b> listC = gVar.c();
                Map<String, k> map2 = gVar.f1960d;
                for (b bVar : (ArrayList) listC) {
                    JSONObject jSONObject = new JSONObject();
                    String str = bVar != null ? bVar.a : null;
                    if (!TextUtils.isEmpty(str)) {
                        k kVar = map2.get(str);
                        jSONObject.put("id", str);
                        if (kVar != null) {
                            jSONObject.put("v", kVar.b);
                        } else {
                            jSONObject.put("v", "control");
                        }
                        if (z) {
                            Iterator<d> it = bVar.f1957d.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                                if (c.class.equals(next.getClass())) {
                                    break;
                                }
                            }
                            if (next != null && ((c) next).b) {
                                Set<Long> set = ((c) next).a;
                                JSONArray jSONArray2 = new JSONArray();
                                Iterator<Long> it2 = set.iterator();
                                while (it2.hasNext()) {
                                    jSONArray2.put(it2.next());
                                }
                                if (jSONArray2.length() > 0) {
                                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, jSONArray2);
                                }
                            }
                        }
                        jSONArray.put(jSONObject);
                    }
                }
            }
            return jSONArray;
        } catch (JSONException e2) {
            IAlog.a("ExperimentParamBuilder: Json exception during experiments Json build!", new Object[0]);
            if (IAlog.a <= 3) {
                e2.printStackTrace();
            }
            return null;
        }
    }
}
