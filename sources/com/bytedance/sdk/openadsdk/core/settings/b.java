package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.bytedance.sdk.openadsdk.utils.y;
import java.io.File;
import java.io.FileWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdSlotSettings.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static final ConcurrentHashMap<String, a> a = new ConcurrentHashMap<>();

    @NonNull
    public static a a(String str) {
        a aVar = a.get(str);
        return aVar == null ? b(str) : aVar;
    }

    private static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new a(jSONObject);
    }

    public static void a() {
        File fileB = b();
        if (fileB.exists()) {
            fileB.delete();
        }
    }

    @WorkerThread
    public static void a(JSONArray jSONArray) throws Throwable {
        FileWriter fileWriter;
        if (jSONArray == null) {
            return;
        }
        File fileB = b();
        File file = new File(fileB.getParent(), fileB.getName() + ".tmp");
        FileWriter fileWriter2 = null;
        try {
            try {
                if (file.exists()) {
                    file.delete();
                }
                fileWriter = new FileWriter(file);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            fileWriter.write(jSONArray.toString());
            file.renameTo(fileB);
            y.a("tt_sdk_settings", com.bytedance.sdk.openadsdk.core.o.a()).a("ad_slot_conf");
            if (file.exists()) {
                file.delete();
            }
            com.bytedance.sdk.openadsdk.utils.h.a(fileWriter);
        } catch (Exception e3) {
            e = e3;
            fileWriter2 = fileWriter;
            Log.e("SdkSettings.AdSlot", "saveAdSlotToLocal: ", e);
            if (file.exists()) {
                file.delete();
            }
            com.bytedance.sdk.openadsdk.utils.h.a(fileWriter2);
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            if (file.exists()) {
                file.delete();
            }
            com.bytedance.sdk.openadsdk.utils.h.a(fileWriter2);
            throw th;
        }
        HashMap<String, a> mapB = b(jSONArray);
        if (mapB.isEmpty()) {
            return;
        }
        for (Map.Entry<String, a> entry : mapB.entrySet()) {
            String key = entry.getKey();
            a value = entry.getValue();
            if (value.G) {
                a aVar = a.get(key);
                if (aVar != null) {
                    aVar.N = value.M;
                }
            } else {
                a.put(key, value);
            }
        }
    }

    @WorkerThread
    public static void a(boolean z) {
        File fileB = b();
        if (!fileB.exists()) {
            String strB = com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.a.b("tt_sdk_settings", "ad_slot_conf", null) : y.a("tt_sdk_settings", com.bytedance.sdk.openadsdk.core.o.a()).a("ad_slot_conf", (String) null);
            if (TextUtils.isEmpty(strB)) {
                return;
            }
            try {
                HashMap<String, a> mapB = b(new JSONArray(strB));
                if (mapB.isEmpty()) {
                    return;
                }
                ConcurrentHashMap<String, a> concurrentHashMap = a;
                concurrentHashMap.clear();
                concurrentHashMap.putAll(mapB);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        try {
            HashMap<String, a> mapB2 = b(new JSONArray(new String(com.bytedance.sdk.component.utils.f.d(fileB))));
            if (mapB2.isEmpty()) {
                return;
            }
            for (Map.Entry<String, a> entry : mapB2.entrySet()) {
                String key = entry.getKey();
                a value = entry.getValue();
                if (!value.G || z) {
                    a.put(key, value);
                } else {
                    a aVar = a.get(key);
                    if (aVar != null) {
                        aVar.N = value.M;
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    private static a b(String str) {
        return new a(str, 1);
    }

    @NonNull
    private static File b() {
        return new File(com.bytedance.sdk.openadsdk.core.o.a().getFilesDir(), "tt_ads_conf");
    }

    @NonNull
    private static HashMap<String, a> b(JSONArray jSONArray) {
        HashMap<String, a> map = new HashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                a aVarA = a(jSONArray.getJSONObject(i));
                if (aVarA != null) {
                    map.put(aVarA.a, aVarA);
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }
}
