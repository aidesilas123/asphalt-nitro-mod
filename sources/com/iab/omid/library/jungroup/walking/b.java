package com.iab.omid.library.jungroup.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import com.iab.omid.library.jungroup.adsession.l;
import com.iab.omid.library.jungroup.c.a;
import com.iab.omid.library.jungroup.d.e;
import com.iab.omid.library.jungroup.walking.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements a.InterfaceC0317a {
    public static final b h = new b();
    public static final Handler i = new Handler(Looper.getMainLooper());
    public static Handler j = null;
    public static final a k = new a();
    public static final RunnableC0318b l = new RunnableC0318b();
    public int b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4972g;
    public final ArrayList a = new ArrayList();
    public final ArrayList c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.iab.omid.library.jungroup.walking.c f4970e = new com.iab.omid.library.jungroup.walking.c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.iab.omid.library.jungroup.c.b f4969d = new com.iab.omid.library.jungroup.c.b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.iab.omid.library.jungroup.walking.d f4971f = new com.iab.omid.library.jungroup.walking.d(new c.d());

    public static class a implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            b bVar = b.h;
            bVar.b = 0;
            bVar.c.clear();
            Iterator it = Collections.unmodifiableCollection(com.iab.omid.library.jungroup.b.a.c.b).iterator();
            while (it.hasNext()) {
                ((l) it.next()).getClass();
            }
            bVar.f4972g = System.nanoTime();
            bVar.f4970e.a();
            long jNanoTime = System.nanoTime();
            com.iab.omid.library.jungroup.c.c cVar = bVar.f4969d.b;
            if (bVar.f4970e.f4975f.size() > 0) {
                for (String str : bVar.f4970e.f4975f) {
                    JSONObject jSONObjectA = cVar.a(null);
                    View view = bVar.f4970e.c.get(str);
                    com.iab.omid.library.jungroup.c.d dVar = bVar.f4969d.a;
                    String str2 = bVar.f4970e.f4976g.get(str);
                    if (str2 != null) {
                        JSONObject jSONObjectA2 = dVar.a(view);
                        try {
                            jSONObjectA2.put("adSessionId", str);
                        } catch (JSONException e2) {
                            com.iab.omid.library.jungroup.d.c.a("Error with setting ad session id", e2);
                        }
                        try {
                            jSONObjectA2.put("notVisibleReason", str2);
                        } catch (JSONException e3) {
                            com.iab.omid.library.jungroup.d.c.a("Error with setting not visible reason", e3);
                        }
                        try {
                            JSONArray jSONArrayOptJSONArray = jSONObjectA.optJSONArray("childViews");
                            if (jSONArrayOptJSONArray == null) {
                                jSONArrayOptJSONArray = new JSONArray();
                                jSONObjectA.put("childViews", jSONArrayOptJSONArray);
                            }
                            jSONArrayOptJSONArray.put(jSONObjectA2);
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                        }
                    }
                    com.iab.omid.library.jungroup.d.b.a(jSONObjectA);
                    HashSet hashSet = new HashSet();
                    hashSet.add(str);
                    com.iab.omid.library.jungroup.walking.d dVar2 = bVar.f4971f;
                    dVar2.b.a(new c.f(dVar2, hashSet, jSONObjectA, jNanoTime));
                }
            }
            if (bVar.f4970e.f4974e.size() > 0) {
                JSONObject jSONObjectA3 = cVar.a(null);
                cVar.a(null, jSONObjectA3, bVar, true, false);
                com.iab.omid.library.jungroup.d.b.a(jSONObjectA3);
                com.iab.omid.library.jungroup.walking.d dVar3 = bVar.f4971f;
                dVar3.b.a(new c.g(dVar3, bVar.f4970e.f4974e, jSONObjectA3, jNanoTime));
            } else {
                bVar.f4971f.a();
            }
            com.iab.omid.library.jungroup.walking.c cVar2 = bVar.f4970e;
            cVar2.a.clear();
            cVar2.b.clear();
            cVar2.c.clear();
            cVar2.f4973d.clear();
            cVar2.f4974e.clear();
            cVar2.f4975f.clear();
            cVar2.f4976g.clear();
            cVar2.i = false;
            long jNanoTime2 = System.nanoTime() - bVar.f4972g;
            if (bVar.a.size() > 0) {
                for (d dVar4 : bVar.a) {
                    TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                    dVar4.b();
                    if (dVar4 instanceof c) {
                        ((c) dVar4).a();
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.jungroup.walking.b$b, reason: collision with other inner class name */
    public static class RunnableC0318b implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            Handler handler = b.j;
            if (handler != null) {
                handler.post(b.k);
                b.j.postDelayed(b.l, 200L);
            }
        }
    }

    public interface c extends d {
        void a();
    }

    public interface d {
        void b();
    }

    public final void a(View view, com.iab.omid.library.jungroup.c.a aVar, JSONObject jSONObject, boolean z) {
        Object obj;
        boolean z2;
        boolean z3;
        boolean z4;
        if (e.c(view) == null) {
            com.iab.omid.library.jungroup.walking.c cVar = this.f4970e;
            char c2 = cVar.f4973d.contains(view) ? (char) 1 : cVar.i ? (char) 2 : (char) 3;
            if (c2 == 3) {
                return;
            }
            JSONObject jSONObjectA = aVar.a(view);
            WindowManager windowManager = com.iab.omid.library.jungroup.d.b.a;
            try {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                    jSONObject.put("childViews", jSONArrayOptJSONArray);
                }
                jSONArrayOptJSONArray.put(jSONObjectA);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            com.iab.omid.library.jungroup.walking.c cVar2 = this.f4970e;
            if (cVar2.a.size() == 0) {
                obj = null;
            } else {
                Object obj2 = (String) cVar2.a.get(view);
                if (obj2 != null) {
                    cVar2.a.remove(view);
                }
                obj = obj2;
            }
            if (obj != null) {
                try {
                    jSONObjectA.put("adSessionId", obj);
                } catch (JSONException e3) {
                    com.iab.omid.library.jungroup.d.c.a("Error with setting ad session id", e3);
                }
                com.iab.omid.library.jungroup.walking.c cVar3 = this.f4970e;
                if (cVar3.h.containsKey(view)) {
                    cVar3.h.put(view, Boolean.TRUE);
                    z2 = false;
                } else {
                    z2 = true;
                }
                try {
                    jSONObjectA.put("hasWindowFocus", Boolean.valueOf(z2));
                } catch (JSONException e4) {
                    com.iab.omid.library.jungroup.d.c.a("Error with setting not visible reason", e4);
                }
                this.f4970e.i = true;
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3) {
                com.iab.omid.library.jungroup.walking.c cVar4 = this.f4970e;
                c.a aVar2 = cVar4.b.get(view);
                if (aVar2 != null) {
                    cVar4.b.remove(view);
                }
                if (aVar2 != null) {
                    WindowManager windowManager2 = com.iab.omid.library.jungroup.d.b.a;
                    com.iab.omid.library.jungroup.b.c cVar5 = aVar2.a;
                    JSONArray jSONArray = new JSONArray();
                    Iterator<String> it = aVar2.b.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next());
                    }
                    try {
                        jSONObjectA.put("isFriendlyObstructionFor", jSONArray);
                        jSONObjectA.put("friendlyObstructionClass", cVar5.b);
                        jSONObjectA.put("friendlyObstructionPurpose", cVar5.c);
                        jSONObjectA.put("friendlyObstructionReason", cVar5.f4961d);
                    } catch (JSONException e5) {
                        com.iab.omid.library.jungroup.d.c.a("Error with setting friendly obstruction", e5);
                    }
                    z4 = true;
                } else {
                    z4 = false;
                }
                aVar.a(view, jSONObjectA, this, c2 == 1, z || z4);
            }
            this.b++;
        }
    }
}
