package com.iab.omid.library.gameloft.walking;

import android.view.View;
import com.iab.omid.library.gameloft.d.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private final HashMap<View, String> a = new HashMap<>();
    private final HashMap<String, View> b = new HashMap<>();
    private final HashMap<View, ArrayList<String>> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<View> f4897d = new HashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashSet<String> f4898e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final HashSet<String> f4899f = new HashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final HashMap<String, String> f4900g = new HashMap<>();
    private boolean h;

    private void a(View view, com.iab.omid.library.gameloft.adsession.a aVar) {
        ArrayList<String> arrayList = this.c.get(view);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.c.put(view, arrayList);
        }
        arrayList.add(aVar.getAdSessionId());
    }

    private void a(com.iab.omid.library.gameloft.adsession.a aVar) {
        Iterator<com.iab.omid.library.gameloft.e.a> it = aVar.a().iterator();
        while (it.hasNext()) {
            View view = it.next().get();
            if (view != null) {
                a(view, aVar);
            }
        }
    }

    private String d(View view) {
        if (!view.hasWindowFocus()) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String strE = f.e(view);
            if (strE != null) {
                return strE;
            }
            hashSet.add(view);
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        this.f4897d.addAll(hashSet);
        return null;
    }

    public String a(View view) {
        if (this.a.size() == 0) {
            return null;
        }
        String str = this.a.get(view);
        if (str != null) {
            this.a.remove(view);
        }
        return str;
    }

    public String a(String str) {
        return this.f4900g.get(str);
    }

    public HashSet<String> a() {
        return this.f4898e;
    }

    public View b(String str) {
        return this.b.get(str);
    }

    public ArrayList<String> b(View view) {
        if (this.c.size() == 0) {
            return null;
        }
        ArrayList<String> arrayList = this.c.get(view);
        if (arrayList != null) {
            this.c.remove(view);
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    public HashSet<String> b() {
        return this.f4899f;
    }

    public c c(View view) {
        return this.f4897d.contains(view) ? c.PARENT_VIEW : this.h ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void c() {
        com.iab.omid.library.gameloft.b.a aVarA = com.iab.omid.library.gameloft.b.a.a();
        if (aVarA != null) {
            for (com.iab.omid.library.gameloft.adsession.a aVar : aVarA.c()) {
                View viewC = aVar.c();
                if (aVar.d()) {
                    String adSessionId = aVar.getAdSessionId();
                    if (viewC != null) {
                        String strD = d(viewC);
                        if (strD == null) {
                            this.f4898e.add(adSessionId);
                            this.a.put(viewC, adSessionId);
                            a(aVar);
                        } else {
                            this.f4899f.add(adSessionId);
                            this.b.put(adSessionId, viewC);
                            this.f4900g.put(adSessionId, strD);
                        }
                    } else {
                        this.f4899f.add(adSessionId);
                        this.f4900g.put(adSessionId, "noAdView");
                    }
                }
            }
        }
    }

    public void d() {
        this.a.clear();
        this.b.clear();
        this.c.clear();
        this.f4897d.clear();
        this.f4898e.clear();
        this.f4899f.clear();
        this.f4900g.clear();
        this.h = false;
    }

    public void e() {
        this.h = true;
    }
}
