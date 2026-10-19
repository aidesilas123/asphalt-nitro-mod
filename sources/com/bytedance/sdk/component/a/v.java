package com.bytedance.sdk.component.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.component.sdk.annotation.WorkerThread;
import com.bytedance.sdk.component.a.k;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: PermissionConfig.java */
/* JADX INFO: loaded from: classes.dex */
class v {
    private final LruCache<String, c> b;
    private final k.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f640d;
    private final Map<String, List<b>> a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f641e = false;

    /* JADX INFO: compiled from: PermissionConfig.java */
    static class a extends IllegalStateException {
        a(String str) {
            super(str);
        }
    }

    /* JADX INFO: compiled from: PermissionConfig.java */
    private static final class b {
        Pattern a;
        x b;
        List<String> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<String> f642d;

        private b() {
        }
    }

    /* JADX INFO: compiled from: PermissionConfig.java */
    static final class c {
        x a = x.PUBLIC;
        Set<String> b = new HashSet();
        Set<String> c = new HashSet();

        c() {
        }
    }

    @WorkerThread
    v(String str, int i, k.a aVar, final Executor executor, JSONObject jSONObject) {
        this.f640d = str;
        if (i <= 0) {
            this.b = new LruCache<>(16);
        } else {
            this.b = new LruCache<>(i);
        }
        this.c = aVar;
        if (jSONObject == null) {
            aVar.a(d(str), new k.a.InterfaceC0099a() { // from class: com.bytedance.sdk.component.a.v.1
            });
        } else {
            a(jSONObject);
        }
    }

    private c a(String str) throws a {
        c cVar = new c();
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        String strB = b(authority);
        if (TextUtils.isEmpty(scheme) || TextUtils.isEmpty(authority) || strB == null) {
            cVar.a = x.PUBLIC;
            return cVar;
        }
        List<b> listC = c(strB);
        if (listC == null) {
            return cVar;
        }
        for (b bVar : listC) {
            if (bVar.a.matcher(str).find()) {
                if (bVar.b.compareTo(cVar.a) >= 0) {
                    cVar.a = bVar.b;
                }
                cVar.b.addAll(bVar.c);
                cVar.c.addAll(bVar.f642d);
            }
        }
        this.b.put(str, cVar);
        return cVar;
    }

    private static String b(String str) {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("[.]")).length) < 2) {
            return null;
        }
        if (length == 2) {
            return str;
        }
        return strArrSplit[length - 2] + "." + strArrSplit[length - 1];
    }

    @WorkerThread
    private void b(JSONObject jSONObject) {
        this.a.clear();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(AppLovinEventTypes.USER_VIEWED_CONTENT);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                this.a.put(next, linkedList);
                for (int i = 0; i < jSONArray.length(); i++) {
                    linkedList.add(c(jSONArray.getJSONObject(i)));
                }
            }
        } catch (JSONException e2) {
            i.b("Parse configurations failed, response: " + jSONObject.toString(), e2);
        }
        this.f641e = true;
    }

    @WorkerThread
    private static b c(JSONObject jSONObject) throws JSONException {
        b bVar = new b();
        bVar.a = Pattern.compile(jSONObject.getString("pattern"));
        bVar.b = x.a(jSONObject.getString("group"));
        bVar.c = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("included_methods");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                bVar.c.add(jSONArrayOptJSONArray.getString(i));
            }
        }
        bVar.f642d = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("excluded_methods");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                bVar.f642d.add(jSONArrayOptJSONArray2.getString(i2));
            }
        }
        return bVar;
    }

    private List<b> c(String str) throws a {
        if (this.f641e) {
            return this.a.get(str);
        }
        throw new a("Permission config is outdated!");
    }

    private static String d(String str) {
        return "com.bytedance.ies.web.jsbridge2.PermissionConfig." + str;
    }

    c a(String str, Set<String> set) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        String string = new Uri.Builder().scheme(scheme).authority(authority).path(uri.getPath()).toString();
        c cVar = new c();
        if (authority == null || authority.isEmpty()) {
            cVar.a = x.PUBLIC;
            return cVar;
        }
        for (String str2 : set) {
            if (!authority.equals(str2)) {
                if (authority.endsWith("." + str2)) {
                }
            }
            cVar.a = x.PRIVATE;
            return cVar;
        }
        c cVar2 = this.b.get(string);
        return cVar2 != null ? cVar2 : a(string);
    }

    void a(JSONObject jSONObject) {
        b(jSONObject);
        this.c.a(d(this.f640d), jSONObject.toString());
    }
}
