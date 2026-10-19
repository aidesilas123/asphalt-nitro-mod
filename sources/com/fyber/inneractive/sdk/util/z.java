package com.fyber.inneractive.sdk.util;

import android.content.Context;
import android.graphics.Rect;
import android.util.Pair;
import android.view.View;
import android.view.ViewTreeObserver;
import com.fyber.inneractive.sdk.util.i;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class z {
    public final WeakHashMap<Context, WeakHashMap<View, e>> b = new WeakHashMap<>();
    public final Map<Context, Pair<ViewTreeObserver, ViewTreeObserver.OnPreDrawListener>> a = new WeakHashMap();
    public final i<Rect> c = new i<>(16, new a(this));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i<HashSet<View>> f2748d = new i<>(16, new b(this));

    public class a implements i.a<Rect> {
        public a(z zVar) {
        }

        @Override // com.fyber.inneractive.sdk.util.i.a
        public Rect a() {
            return new Rect();
        }
    }

    public class b implements i.a<HashSet<View>> {
        public b(z zVar) {
        }

        @Override // com.fyber.inneractive.sdk.util.i.a
        public HashSet<View> a() {
            return new HashSet<>();
        }
    }

    public class c implements ViewTreeObserver.OnPreDrawListener {
        public final /* synthetic */ Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            WeakHashMap<View, e> weakHashMap;
            z zVar = z.this;
            Context context = this.a;
            zVar.getClass();
            if (context == null || (weakHashMap = zVar.b.get(context)) == null) {
                return true;
            }
            HashSet<View> hashSetA = zVar.f2748d.a();
            hashSetA.addAll(weakHashMap.keySet());
            for (View view : hashSetA) {
                e eVar = weakHashMap.get(view);
                if (eVar != null) {
                    float fHeight = 0.0f;
                    Rect rectA = zVar.c.a();
                    if (view != null && view.getParent() != null && view.isShown() && view.getGlobalVisibleRect(rectA)) {
                        fHeight = (rectA.height() * rectA.width()) / (view.getHeight() * view.getWidth());
                    }
                    eVar.a(view, fHeight, rectA);
                    zVar.c.a.offer(rectA);
                }
            }
            hashSetA.clear();
            zVar.f2748d.a.offer(hashSetA);
            return true;
        }
    }

    public static class d {
        public static final z a = new z();
    }

    public interface e {
        void a(View view, float f2, Rect rect);
    }

    public static z a() {
        return d.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.content.Context r6, android.view.View r7, com.fyber.inneractive.sdk.util.z.e r8) {
        /*
            r5 = this;
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            java.lang.String r1 = r5.b()
            r2 = 0
            r0[r2] = r1
            r1 = 1
            r0[r1] = r6
            r1 = 2
            r0[r1] = r7
            java.lang.String r1 = "%strackView called with context: %s view: %s"
            com.fyber.inneractive.sdk.util.IAlog.a(r1, r0)
            if (r6 == 0) goto L6a
            java.util.WeakHashMap<android.content.Context, java.util.WeakHashMap<android.view.View, com.fyber.inneractive.sdk.util.z$e>> r0 = r5.b
            java.lang.Object r0 = r0.get(r6)
            java.util.WeakHashMap r0 = (java.util.WeakHashMap) r0
            if (r0 != 0) goto L63
            java.util.WeakHashMap r0 = new java.util.WeakHashMap
            r0.<init>()
            java.util.WeakHashMap<android.content.Context, java.util.WeakHashMap<android.view.View, com.fyber.inneractive.sdk.util.z$e>> r1 = r5.b
            r1.put(r6, r0)
            boolean r1 = r6 instanceof android.app.Activity
            if (r1 == 0) goto L41
            r1 = r6
            android.app.Activity r1 = (android.app.Activity) r1
            android.view.Window r2 = r1.getWindow()
            if (r2 == 0) goto L41
            android.view.Window r1 = r1.getWindow()
            android.view.View r1 = r1.getDecorView()
            goto L45
        L41:
            android.view.View r1 = r7.getRootView()
        L45:
            android.view.ViewTreeObserver r1 = r1.getViewTreeObserver()
            if (r1 == 0) goto L63
            boolean r2 = r1.isAlive()
            if (r2 == 0) goto L63
            com.fyber.inneractive.sdk.util.z$c r2 = new com.fyber.inneractive.sdk.util.z$c
            r2.<init>(r6)
            r1.addOnPreDrawListener(r2)
            java.util.Map<android.content.Context, android.util.Pair<android.view.ViewTreeObserver, android.view.ViewTreeObserver$OnPreDrawListener>> r3 = r5.a
            android.util.Pair r4 = new android.util.Pair
            r4.<init>(r1, r2)
            r3.put(r6, r4)
        L63:
            r0.put(r7, r8)
            r5.c()
            return
        L6a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "View must be attached to an Activity context"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.util.z.a(android.content.Context, android.view.View, com.fyber.inneractive.sdk.util.z$e):void");
    }

    public final void a(Context context, Map<View, e> map, View view) {
        if (map.remove(view) != null) {
            int i = IAlog.a;
            if (map.isEmpty()) {
                this.b.remove(context);
                Pair<ViewTreeObserver, ViewTreeObserver.OnPreDrawListener> pair = this.a.get(context);
                if (pair != null) {
                    if (((ViewTreeObserver) pair.first).isAlive()) {
                        ((ViewTreeObserver) pair.first).removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener) pair.second);
                    }
                    this.a.remove(context);
                }
            }
        }
    }

    public void a(View view) {
        IAlog.a("%sunTrackView called with view", b());
        if (view == null) {
            IAlog.a("%sunTrackView called with a null view!", b());
            return;
        }
        Context context = view.getContext();
        if (context == null) {
            IAlog.a("%sview.getContext() returned null!", b());
            return;
        }
        WeakHashMap<View, e> weakHashMap = this.b.get(context);
        if (weakHashMap != null) {
            a(context, weakHashMap, view);
        } else {
            for (Context context2 : new HashSet(this.b.keySet())) {
                WeakHashMap<View, e> weakHashMap2 = this.b.get(context2);
                if (weakHashMap2 != null) {
                    a(context2, weakHashMap2, view);
                }
            }
        }
        c();
    }

    public final String b() {
        return "IAVisibilityTracker: ";
    }

    public final void c() {
        for (Context context : this.b.keySet()) {
            IAlog.a("%stracking context: %s", b(), context);
            WeakHashMap<View, e> weakHashMap = this.b.get(context);
            if (weakHashMap != null) {
                Iterator<View> it = weakHashMap.keySet().iterator();
                while (it.hasNext()) {
                    IAlog.a("%stracking view: %s", b(), it.next());
                }
            }
        }
    }
}
