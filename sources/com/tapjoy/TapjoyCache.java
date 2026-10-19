package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyCache {
    public static boolean a;
    public static TapjoyCache b;
    public final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b0 f7822d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Vector f7823e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ExecutorService f7824f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public File f7825g;

    public class a implements Callable<Boolean> {
        public final URL a;
        public final String b;
        public final long c;

        public a(URL url, String str, long j) {
            this.a = url;
            this.b = str;
            this.c = j;
            if (j <= 0) {
                this.c = 86400L;
            }
            TapjoyCache.this.f7823e.add(TapjoyCache.a(url.toString()));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:110:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x01eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r6v16 */
        /* JADX WARN: Type inference failed for: r6v7, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r7v10 */
        /* JADX WARN: Type inference failed for: r7v11 */
        /* JADX WARN: Type inference failed for: r7v12, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r7v13, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r7v17 */
        /* JADX WARN: Type inference failed for: r7v18 */
        /* JADX WARN: Type inference failed for: r7v19 */
        /* JADX WARN: Type inference failed for: r7v20 */
        /* JADX WARN: Type inference failed for: r7v21, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r7v23 */
        /* JADX WARN: Type inference failed for: r7v24 */
        /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Type inference failed for: r7v9 */
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Boolean call() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 505
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TapjoyCache.a.call():java.lang.Boolean");
        }
    }

    public TapjoyCache(Context context) {
        if (b == null || a) {
            b = this;
            this.c = context;
            this.f7822d = new b0(context, -1);
            this.f7823e = new Vector();
            this.f7824f = Executors.newFixedThreadPool(5);
            b();
        }
    }

    public static String a(String str) {
        if (str.startsWith("//")) {
            str = "http:".concat(str);
        }
        try {
            return new URL(str).getFile();
        } catch (MalformedURLException unused) {
            TapjoyLog.e("TapjoyCache", "Invalid URL " + str);
            return "";
        }
    }

    public static TapjoyCache getInstance() {
        return b;
    }

    public static void setInstance(TapjoyCache tapjoyCache) {
        b = tapjoyCache;
    }

    public final void b() {
        if (Environment.getExternalStorageDirectory() != null) {
            TapjoyUtil.deleteFileOrDirectory(new File(Environment.getExternalStorageDirectory(), "tapjoy"));
            TapjoyUtil.deleteFileOrDirectory(new File(Environment.getExternalStorageDirectory(), "tjcache/tmp/"));
        }
        File file = new File(this.c.getFilesDir() + "/Tapjoy/Cache/");
        this.f7825g = file;
        if (!file.exists()) {
            if (this.f7825g.mkdirs()) {
                TapjoyLog.d("TapjoyCache", "Created directory at: " + this.f7825g.getPath());
            } else {
                TapjoyLog.e("TapjoyCache", "Error initalizing cache");
                b = null;
            }
        }
        SharedPreferences sharedPreferences = this.c.getSharedPreferences("tapjoyCacheData", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            File file2 = new File(entry.getKey());
            if (file2.exists() && file2.isFile()) {
                TapjoyCachedAssetData tapjoyCachedAssetDataFromRawJSONString = TapjoyCachedAssetData.fromRawJSONString(entry.getValue().toString());
                if (tapjoyCachedAssetDataFromRawJSONString != null) {
                    TapjoyLog.d("TapjoyCache", "Loaded Asset: " + tapjoyCachedAssetDataFromRawJSONString.c());
                    String strA = a(tapjoyCachedAssetDataFromRawJSONString.c());
                    if (strA == null || "".equals(strA) || strA.length() <= 0) {
                        TapjoyLog.e("TapjoyCache", "Removing asset because deserialization failed.");
                        editorEdit.remove(entry.getKey()).apply();
                    } else if (tapjoyCachedAssetDataFromRawJSONString.g() < System.currentTimeMillis() / 1000) {
                        TapjoyLog.d("TapjoyCache", "Asset expired, removing from cache: " + tapjoyCachedAssetDataFromRawJSONString.c());
                        if (tapjoyCachedAssetDataFromRawJSONString.d() != null && tapjoyCachedAssetDataFromRawJSONString.d().length() > 0) {
                            TapjoyUtil.deleteFileOrDirectory(new File(tapjoyCachedAssetDataFromRawJSONString.d()));
                        }
                    } else {
                        this.f7822d.put(strA, tapjoyCachedAssetDataFromRawJSONString);
                    }
                } else {
                    TapjoyLog.e("TapjoyCache", "Removing asset because deserialization failed.");
                    editorEdit.remove(entry.getKey()).apply();
                }
            } else {
                TapjoyLog.d("TapjoyCache", "Removing reference to missing asset: " + entry.getKey());
                editorEdit.remove(entry.getKey()).apply();
            }
        }
    }

    public Future<Boolean> c(JSONObject jSONObject) {
        try {
            return d(jSONObject.getString("url"), jSONObject.optString("offerId"), Long.valueOf(jSONObject.optLong("timeToLive")).longValue());
        } catch (JSONException unused) {
            TapjoyLog.e("TapjoyCache", "Required parameters to cache an asset from JSON is not present");
            return null;
        }
    }

    public Future<Boolean> d(String str, String str2, long j) {
        try {
            URL url = new URL(str);
            if (!this.f7823e.contains(a(str))) {
                return i(url, str2, j);
            }
            TapjoyLog.d("TapjoyCache", "URL is already in the process of being cached: ".concat(str));
            return null;
        } catch (MalformedURLException unused) {
            TapjoyLog.d("TapjoyCache", "Invalid cache assetURL");
            return null;
        }
    }

    public void e(JSONArray jSONArray, TJCacheListener tJCacheListener) {
        if (jSONArray != null && jSONArray.length() > 0) {
            new com.tapjoy.internal.o0(this, jSONArray, tJCacheListener).start();
        } else if (tJCacheListener != null) {
            tJCacheListener.onCachingComplete(1);
        }
    }

    public TapjoyCachedAssetData f(String str) {
        String strA = a(str);
        if (strA != "") {
            return this.f7822d.get(strA);
        }
        return null;
    }

    public String g() {
        ArrayList arrayList = new ArrayList();
        b0 b0Var = this.f7822d;
        if (b0Var == null) {
            return "";
        }
        Iterator<Map.Entry<String, TapjoyCachedAssetData>> it = b0Var.entrySet().iterator();
        while (it.hasNext()) {
            String strF = it.next().getValue().f();
            if (strF != null && strF.length() != 0 && !arrayList.contains(strF)) {
                arrayList.add(strF);
            }
        }
        return TextUtils.join(",", arrayList);
    }

    public boolean h(String str) {
        String strA = a(str);
        return (strA == "" || this.f7822d.remove(strA) == null) ? false : true;
    }

    public Future<Boolean> i(URL url, String str, long j) {
        if (url != null) {
            return this.f7824f.submit(new a(url, str, j));
        }
        return null;
    }
}
