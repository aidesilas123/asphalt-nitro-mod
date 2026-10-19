package com.iab.omid.library.kidoznet.walking;

import android.os.Build;
import android.view.View;
import com.iab.omid.library.kidoznet.internal.e;
import com.iab.omid.library.kidoznet.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private final HashMap<View, String> a = new HashMap<>();
    private final HashMap<View, C0321a> b = new HashMap<>();
    private final HashMap<String, View> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<View> f5007d = new HashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet<String> f5008e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet<String> f5009f = new HashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<String, String> f5010g = new HashMap<>();
    private final Map<View, Boolean> h = new WeakHashMap();
    private boolean i;

    /* JADX INFO: renamed from: com.iab.omid.library.kidoznet.walking.a$a, reason: collision with other inner class name */
    public static class C0321a {
        private final e a;
        private final ArrayList<String> b = new ArrayList<>();

        public C0321a(e eVar, String str) {
            this.a = eVar;
            a(str);
        }

        public e a() {
            return this.a;
        }

        public void a(String str) {
            this.b.add(str);
        }

        public ArrayList<String> b() {
            return this.b;
        }
    }

    private String a(View view) {
        if (Build.VERSION.SDK_INT >= 19 && !view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (b(view).booleanValue()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strA = h.a(view);
            if (strA != null) {
                return strA;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f5007d.addAll(hashSet);
        return null;
    }

    private void a(com.iab.omid.library.kidoznet.adsession.a aVar) {
        Iterator<e> it = aVar.d().iterator();
        while (it.hasNext()) {
            a(it.next(), aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.kidoznet.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0321a c0321a = this.b.get(view);
        if (c0321a != null) {
            c0321a.a(aVar.getAdSessionId());
        } else {
            this.b.put(view, new C0321a(eVar, aVar.getAdSessionId()));
        }
    }

    private Boolean b(View view) {
        if (view.hasWindowFocus()) {
            this.h.remove(view);
            return Boolean.FALSE;
        }
        if (this.h.containsKey(view)) {
            return this.h.get(view);
        }
        Map<View, Boolean> map = this.h;
        Boolean bool = Boolean.FALSE;
        map.put(view, bool);
        return bool;
    }

    public View a(String str) {
        return this.c.get(str);
    }

    public void a() {
        this.a.clear();
        this.b.clear();
        this.c.clear();
        this.f5007d.clear();
        this.f5008e.clear();
        this.f5009f.clear();
        this.f5010g.clear();
        this.i = false;
    }

    public String b(String str) {
        return this.f5010g.get(str);
    }

    public HashSet<String> b() {
        return this.f5009f;
    }

    public C0321a c(View view) {
        C0321a c0321a = this.b.get(view);
        if (c0321a != null) {
            this.b.remove(view);
        }
        return c0321a;
    }

    public HashSet<String> c() {
        return this.f5008e;
    }

    public String d(View view) {
        if (this.a.size() == 0) {
            return null;
        }
        String str = this.a.get(view);
        if (str != null) {
            this.a.remove(view);
        }
        return str;
    }

    public void d() {
        this.i = true;
    }

    public c e(View view) {
        return this.f5007d.contains(view) ? c.PARENT_VIEW : this.i ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.kidoznet.internal.c cVarC = com.iab.omid.library.kidoznet.internal.c.c();
        if (cVarC != null) {
            for (com.iab.omid.library.kidoznet.adsession.a aVar : cVarC.a()) {
                View viewC = aVar.c();
                if (aVar.f()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (viewC != null) {
                        String strA = a(viewC);
                        if (strA == null) {
                            this.f5008e.add(adSessionId);
                            this.a.put(viewC, adSessionId);
                            a(aVar);
                        } else if (strA != "noWindowFocus") {
                            this.f5009f.add(adSessionId);
                            this.c.put(adSessionId, viewC);
                            this.f5010g.put(adSessionId, strA);
                        }
                    } else {
                        this.f5009f.add(adSessionId);
                        this.f5010g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public boolean f(View view) {
        if (!this.h.containsKey(view)) {
            return true;
        }
        this.h.put(view, Boolean.TRUE);
        return false;
    }
}
