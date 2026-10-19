package com.iab.omid.library.jungroup.walking;

import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.View;
import com.iab.omid.library.jungroup.adsession.l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.WeakHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public final HashMap<View, String> a = new HashMap<>();
    public final HashMap<View, a> b = new HashMap<>();
    public final HashMap<String, View> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet<View> f4973d = new HashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet<String> f4974e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet<String> f4975f = new HashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashMap<String, String> f4976g = new HashMap<>();
    public final WeakHashMap h = new WeakHashMap();
    public boolean i;

    public static class a {
        public final com.iab.omid.library.jungroup.b.c a;
        public final ArrayList<String> b = new ArrayList<>();

        public a(com.iab.omid.library.jungroup.b.c cVar, String str) {
            this.a = cVar;
            a(str);
        }

        public final void a(String str) {
            this.b.add(str);
        }
    }

    public abstract class b extends AbstractAsyncTaskC0319c {
        public final HashSet<String> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final JSONObject f4977d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f4978e;

        public b(com.iab.omid.library.jungroup.walking.d dVar, HashSet hashSet, JSONObject jSONObject, long j) {
            super(dVar);
            this.c = new HashSet<>(hashSet);
            this.f4977d = jSONObject;
            this.f4978e = j;
        }
    }

    /* JADX INFO: renamed from: com.iab.omid.library.jungroup.walking.c$c, reason: collision with other inner class name */
    public abstract class AbstractAsyncTaskC0319c extends AsyncTask<Object, Void, String> {
        public a a;
        public final b b;

        /* JADX INFO: renamed from: com.iab.omid.library.jungroup.walking.c$c$a */
        public interface a {
        }

        /* JADX INFO: renamed from: com.iab.omid.library.jungroup.walking.c$c$b */
        public interface b {
        }

        public AbstractAsyncTaskC0319c(b bVar) {
            this.b = bVar;
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            a aVar = this.a;
            if (aVar != null) {
                d dVar = (d) aVar;
                dVar.c = null;
                dVar.a();
            }
        }
    }

    public final class d implements AbstractAsyncTaskC0319c.a {
        public final ArrayDeque<AbstractAsyncTaskC0319c> b = new ArrayDeque<>();
        public AbstractAsyncTaskC0319c c = null;
        public final ThreadPoolExecutor a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

        public final void a() {
            AbstractAsyncTaskC0319c abstractAsyncTaskC0319cPoll = this.b.poll();
            this.c = abstractAsyncTaskC0319cPoll;
            if (abstractAsyncTaskC0319cPoll != null) {
                abstractAsyncTaskC0319cPoll.executeOnExecutor(this.a, new Object[0]);
            }
        }

        public final void a(AbstractAsyncTaskC0319c abstractAsyncTaskC0319c) {
            abstractAsyncTaskC0319c.a = this;
            this.b.add(abstractAsyncTaskC0319c);
            if (this.c == null) {
                a();
            }
        }
    }

    public final class e extends AbstractAsyncTaskC0319c {
        public e(AbstractAsyncTaskC0319c.b bVar) {
            super(bVar);
        }

        @Override // android.os.AsyncTask
        public final String doInBackground(Object[] objArr) {
            ((com.iab.omid.library.jungroup.walking.d) this.b).a = null;
            return null;
        }
    }

    public final class f extends b {
        public f(com.iab.omid.library.jungroup.walking.d dVar, HashSet hashSet, JSONObject jSONObject, long j) {
            super(dVar, hashSet, jSONObject, j);
        }

        @Override // com.iab.omid.library.jungroup.walking.c.AbstractAsyncTaskC0319c, android.os.AsyncTask
        /* JADX INFO: renamed from: a */
        public final void onPostExecute(String str) {
            com.iab.omid.library.jungroup.b.a aVar = com.iab.omid.library.jungroup.b.a.c;
            if (aVar != null) {
                for (l lVar : Collections.unmodifiableCollection(aVar.a)) {
                    if (this.c.contains(lVar.h)) {
                        com.iab.omid.library.jungroup.publisher.a aVar2 = lVar.f4956e;
                        if (this.f4978e >= aVar2.f4966e && aVar2.f4965d != 3) {
                            aVar2.f4965d = 3;
                            com.iab.omid.library.jungroup.b.f.a(aVar2.c(), "setNativeViewHierarchy", str);
                        }
                    }
                }
            }
            super.onPostExecute(str);
        }

        @Override // android.os.AsyncTask
        public final String doInBackground(Object[] objArr) {
            return this.f4977d.toString();
        }
    }

    public final class g extends b {
        public g(com.iab.omid.library.jungroup.walking.d dVar, HashSet hashSet, JSONObject jSONObject, long j) {
            super(dVar, hashSet, jSONObject, j);
        }

        @Override // com.iab.omid.library.jungroup.walking.c.AbstractAsyncTaskC0319c, android.os.AsyncTask
        /* JADX INFO: renamed from: a */
        public final void onPostExecute(String str) {
            com.iab.omid.library.jungroup.b.a aVar;
            if (!TextUtils.isEmpty(str) && (aVar = com.iab.omid.library.jungroup.b.a.c) != null) {
                for (l lVar : Collections.unmodifiableCollection(aVar.a)) {
                    if (this.c.contains(lVar.h)) {
                        com.iab.omid.library.jungroup.publisher.a aVar2 = lVar.f4956e;
                        if (this.f4978e >= aVar2.f4966e) {
                            aVar2.f4965d = 2;
                            com.iab.omid.library.jungroup.b.f.a(aVar2.c(), "setNativeViewHierarchy", str);
                        }
                    }
                }
            }
            super.onPostExecute(str);
        }

        @Override // android.os.AsyncTask
        public final String doInBackground(Object[] objArr) {
            if (com.iab.omid.library.jungroup.d.b.a(this.f4977d, ((com.iab.omid.library.jungroup.walking.d) this.b).a)) {
                return null;
            }
            AbstractAsyncTaskC0319c.b bVar = this.b;
            JSONObject jSONObject = this.f4977d;
            ((com.iab.omid.library.jungroup.walking.d) bVar).a = jSONObject;
            return jSONObject.toString();
        }
    }

    public final void a() {
        Boolean bool;
        com.iab.omid.library.jungroup.b.a aVar = com.iab.omid.library.jungroup.b.a.c;
        if (aVar != null) {
            for (l lVar : Collections.unmodifiableCollection(aVar.b)) {
                View view = lVar.f4955d.get();
                if (lVar.f4957f && !lVar.f4958g) {
                    String str = lVar.h;
                    if (view != null) {
                        String str2 = null;
                        if (view.isAttachedToWindow()) {
                            if (view.hasWindowFocus()) {
                                this.h.remove(view);
                                bool = Boolean.FALSE;
                            } else if (this.h.containsKey(view)) {
                                bool = (Boolean) this.h.get(view);
                            } else {
                                WeakHashMap weakHashMap = this.h;
                                Boolean bool2 = Boolean.FALSE;
                                weakHashMap.put(view, bool2);
                                bool = bool2;
                            }
                            if (bool.booleanValue()) {
                                str2 = "noWindowFocus";
                            } else {
                                HashSet hashSet = new HashSet();
                                View view2 = view;
                                while (true) {
                                    if (view2 == null) {
                                        this.f4973d.addAll(hashSet);
                                        break;
                                    }
                                    String strC = com.iab.omid.library.jungroup.d.e.c(view2);
                                    if (strC != null) {
                                        str2 = strC;
                                        break;
                                    } else {
                                        hashSet.add(view2);
                                        Object parent = view2.getParent();
                                        view2 = parent instanceof View ? (View) parent : null;
                                    }
                                }
                            }
                        } else {
                            str2 = "notAttached";
                        }
                        if (str2 == null) {
                            this.f4974e.add(str);
                            this.a.put(view, str);
                            for (com.iab.omid.library.jungroup.b.c cVar : lVar.c) {
                                View view3 = cVar.a.get();
                                if (view3 != null) {
                                    a aVar2 = this.b.get(view3);
                                    if (aVar2 != null) {
                                        aVar2.b.add(lVar.h);
                                    } else {
                                        this.b.put(view3, new a(cVar, lVar.h));
                                    }
                                }
                            }
                        } else if (str2 != "noWindowFocus") {
                            this.f4975f.add(str);
                            this.c.put(str, view);
                            this.f4976g.put(str, str2);
                        }
                    } else {
                        this.f4975f.add(str);
                        this.f4976g.put(str, "noAdView");
                    }
                }
            }
        }
    }
}
