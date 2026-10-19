package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.JProtect;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.ae;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: InteractionManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class n {
    private final com.bytedance.sdk.openadsdk.core.model.q a;
    private com.com.bytedance.overseas.sdk.a.c b;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PAGNativeAd f1610d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f1612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.apiImpl.feed.f f1613g;
    private long h;
    private final com.bytedance.sdk.openadsdk.apiImpl.feed.a j;
    private com.bykv.vk.openvk.component.video.api.d.c k;
    private com.bytedance.sdk.openadsdk.core.b.b m;
    private com.bytedance.sdk.openadsdk.core.b.a n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<View> f1611e = new ArrayList();
    private final com.bytedance.sdk.openadsdk.b.g i = new com.bytedance.sdk.openadsdk.b.g();
    private final AtomicBoolean l = new AtomicBoolean(false);

    /* JADX INFO: compiled from: InteractionManager.java */
    private static class a implements View.OnLayoutChangeListener {
        private final com.bytedance.sdk.openadsdk.b.g a;
        private final ViewGroup b;

        public a(com.bytedance.sdk.openadsdk.b.g gVar, ViewGroup viewGroup) {
            this.a = gVar;
            this.b = viewGroup;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.a.a(System.currentTimeMillis(), y.a(this.b));
        }
    }

    public n(Context context, PAGNativeAd pAGNativeAd, com.bytedance.sdk.openadsdk.core.model.q qVar, String str, com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar) {
        this.f1610d = pAGNativeAd;
        this.a = qVar;
        this.c = context;
        this.f1612f = str;
        this.j = aVar;
        if (qVar.M() == 4) {
            this.b = com.com.bytedance.overseas.sdk.a.d.a(context, qVar, str);
        }
    }

    private void a(final ViewGroup viewGroup) {
        ae.a(viewGroup, true, 5, new ae.b() { // from class: com.bytedance.sdk.openadsdk.core.n.5
            @Override // com.bytedance.sdk.openadsdk.utils.ae.b
            public void a() {
                n.this.b(viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.ae.b
            public void a(View view, boolean z) {
                if (z) {
                    n.this.b(viewGroup, view);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.utils.ae.b
            public void a(boolean z) {
                n.this.a(z, viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.utils.ae.b
            public void b() {
                n.this.b();
            }
        }, null);
    }

    private void a(@NonNull ViewGroup viewGroup, @Nullable View view) {
        HashMap map = new HashMap();
        map.put("click_scence", 1);
        if (this.a.u() == 2) {
            Context context = this.c;
            com.bytedance.sdk.openadsdk.core.model.q qVar = this.a;
            String str = this.f1612f;
            this.m = new com.bytedance.sdk.openadsdk.core.nativeexpress.g(context, qVar, str, ac.a(str));
        } else {
            Context context2 = this.c;
            com.bytedance.sdk.openadsdk.core.model.q qVar2 = this.a;
            String str2 = this.f1612f;
            this.m = new com.bytedance.sdk.openadsdk.core.b.b(context2, qVar2, str2, ac.a(str2));
        }
        this.m.a(viewGroup);
        this.m.a(this.k);
        this.m.b(view);
        this.m.a(this.b);
        this.m.a(this.f1610d);
        this.m.a(map);
        this.m.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.n.1
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view2, int i) {
                if (n.this.f1613g != null) {
                    n.this.f1613g.a(view2, n.this.f1610d);
                }
            }
        });
        if (this.a.u() == 2) {
            Context context3 = this.c;
            com.bytedance.sdk.openadsdk.core.model.q qVar3 = this.a;
            String str3 = this.f1612f;
            this.n = new com.bytedance.sdk.openadsdk.core.nativeexpress.f(context3, qVar3, str3, ac.a(str3));
        } else {
            Context context4 = this.c;
            com.bytedance.sdk.openadsdk.core.model.q qVar4 = this.a;
            String str4 = this.f1612f;
            this.n = new com.bytedance.sdk.openadsdk.core.b.a(context4, qVar4, str4, ac.a(str4));
        }
        this.n.a(viewGroup);
        this.n.a(this.k);
        this.n.b(view);
        this.n.a(this.b);
        this.n.a(this.f1610d);
        this.n.a(map);
        this.n.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.n.2
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view2, int i) {
                if (n.this.f1613g != null) {
                    n.this.f1613g.b(view2, n.this.f1610d);
                }
                com.bytedance.sdk.openadsdk.n.a.e.a(n.this.a, 9);
                n.this.j.m();
            }
        });
    }

    private void a(@NonNull ViewGroup viewGroup, EmptyView emptyView, List<View> list, @Nullable List<View> list2) {
        com.bytedance.sdk.openadsdk.core.b.b bVar = this.m;
        if (bVar == null || this.n == null) {
            return;
        }
        emptyView.a(list, bVar);
        emptyView.a(list2, this.n);
        a(this.m, this.n);
        a(emptyView, viewGroup);
    }

    private void a(@NonNull ViewGroup viewGroup, List<View> list, @Nullable List<View> list2) {
        com.bytedance.sdk.openadsdk.core.b.b bVar = this.m;
        if (bVar == null || this.n == null) {
            return;
        }
        a(list, bVar);
        a(list2, this.n);
        a(this.m, this.n);
        a(viewGroup);
    }

    private void a(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, com.bytedance.sdk.openadsdk.apiImpl.feed.f fVar) {
        this.f1613g = fVar;
        viewGroup.addOnLayoutChangeListener(new a(this.i, viewGroup));
        this.f1611e = list;
        a(list2, (com.bytedance.sdk.openadsdk.core.b.c) null);
        if (list != null) {
            for (View view : this.f1611e) {
                if (view != null) {
                    view.setTag(520093762, Boolean.TRUE);
                }
            }
            if (list3 != null) {
                list3.addAll(list);
            }
        }
        a(list3, (com.bytedance.sdk.openadsdk.core.b.c) null);
    }

    private void a(EmptyView emptyView, final ViewGroup viewGroup) {
        emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.core.n.4
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a() {
                n.this.b(viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            @JProtect
            public void a(View view) {
                n.this.b(viewGroup, view);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(boolean z) {
                n.this.a(z, viewGroup);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void b() {
                n.this.b();
            }
        });
    }

    private void a(com.bytedance.sdk.openadsdk.core.b.a aVar) {
        if (com.bytedance.sdk.openadsdk.core.settings.o.aj().d(String.valueOf(this.a.aZ()))) {
            com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar2 = this.j;
            if (aVar2 != null && aVar2.a() != null) {
                this.j.a().setOnClickListener(aVar);
                this.j.a().setOnTouchListener(aVar);
            }
            com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar3 = this.j;
            if (aVar3 != null) {
                aVar3.a(aVar);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar4 = this.j;
        if (aVar4 != null && aVar4.a() != null) {
            PAGMediaView pAGMediaViewA = this.j.a();
            com.bytedance.sdk.openadsdk.core.b.c cVar = new com.bytedance.sdk.openadsdk.core.b.c() { // from class: com.bytedance.sdk.openadsdk.core.n.3
                @Override // com.bytedance.sdk.openadsdk.core.b.c
                protected void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                    if (view instanceof PAGVideoMediaView) {
                        ((PAGVideoMediaView) view).handleInterruptVideo();
                    }
                }
            };
            pAGMediaViewA.setOnClickListener(cVar);
            pAGMediaViewA.setOnTouchListener(cVar);
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar5 = this.j;
        if (aVar5 != null) {
            aVar5.a((com.bytedance.sdk.openadsdk.core.b.a) null);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void a(com.bytedance.sdk.openadsdk.core.b.b bVar, com.bytedance.sdk.openadsdk.core.b.a aVar) {
        if (this.a.u() == 2) {
            b(bVar, aVar);
        } else {
            a(aVar);
        }
    }

    private void a(List<View> list, com.bytedance.sdk.openadsdk.core.b.c cVar) {
        if (com.bytedance.sdk.component.utils.j.b(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(cVar);
                    view.setOnTouchListener(cVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final boolean z, final ViewGroup viewGroup) {
        if (com.bytedance.sdk.openadsdk.utils.t.u()) {
            com.bytedance.sdk.openadsdk.utils.aa.c(new com.bytedance.sdk.component.g.h("on_window_focus_changed_fun") { // from class: com.bytedance.sdk.openadsdk.core.n.6
                @Override // java.lang.Runnable
                public void run() {
                    n.this.b(z, viewGroup);
                }
            });
        } else {
            b(z, viewGroup);
        }
    }

    private EmptyView b(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, com.bytedance.sdk.openadsdk.apiImpl.feed.f fVar) {
        this.f1613g = fVar;
        viewGroup.addOnLayoutChangeListener(new a(this.i, viewGroup));
        this.f1611e = list;
        EmptyView emptyViewD = d(viewGroup);
        if (emptyViewD == null) {
            emptyViewD = new EmptyView(this.c, viewGroup);
            viewGroup.addView(emptyViewD);
        }
        emptyViewD.a();
        emptyViewD.setRefClickViews(list2);
        if (list != null) {
            for (View view : this.f1611e) {
                if (view != null) {
                    view.setTag(520093762, Boolean.TRUE);
                }
            }
            if (list3 != null) {
                list3.addAll(list);
            }
        }
        emptyViewD.setRefCreativeViews(list3);
        return emptyViewD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.h > 0) {
            com.bytedance.sdk.openadsdk.b.c.a(String.valueOf(SystemClock.elapsedRealtime() - this.h), this.a, this.f1612f, this.i);
            this.h = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ViewGroup viewGroup) {
        this.i.a(System.currentTimeMillis(), y.a(viewGroup));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ViewGroup viewGroup, View view) {
        if (this.l.get()) {
            return;
        }
        this.l.set(true);
        if (this.f1610d instanceof com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b) {
            NativeExpressView nativeExpressViewB = this.j.b();
            if (nativeExpressViewB != null) {
                nativeExpressViewB.i();
            }
            ((com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b) this.f1610d).a(true);
        }
        this.i.a(System.currentTimeMillis(), y.a(viewGroup));
        this.h = SystemClock.elapsedRealtime();
        c(viewGroup);
        com.bytedance.sdk.openadsdk.apiImpl.feed.f fVar = this.f1613g;
        if (fVar != null) {
            fVar.a(this.f1610d);
        }
        if (this.a.ah()) {
            ac.a(this.a, view);
        }
        if (this.a.au() != null) {
            this.a.au().a().a(0L);
        }
    }

    private void b(com.bytedance.sdk.openadsdk.core.b.b bVar, com.bytedance.sdk.openadsdk.core.b.a aVar) {
        com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar2 = this.j;
        if (aVar2 != null && aVar2.b() != null) {
            NativeExpressView nativeExpressViewB = this.j.b();
            if ((bVar instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.g) && (aVar instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.f)) {
                nativeExpressViewB.setClickListener((com.bytedance.sdk.openadsdk.core.nativeexpress.g) bVar);
                nativeExpressViewB.setClickCreativeListener((com.bytedance.sdk.openadsdk.core.nativeexpress.f) aVar);
            }
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar3 = this.j;
        if (aVar3 != null && aVar3.a() != null) {
            this.j.a().setOnClickListener(aVar);
            this.j.a().setOnTouchListener(aVar);
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.a aVar4 = this.j;
        if (aVar4 != null) {
            aVar4.a(aVar);
            this.j.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z, ViewGroup viewGroup) {
        com.bytedance.sdk.openadsdk.core.model.q qVar;
        if (z && (qVar = this.a) != null && qVar.bj() && !this.a.bo()) {
            this.a.f(true);
            com.bytedance.sdk.openadsdk.core.model.q qVar2 = this.a;
            com.bytedance.sdk.openadsdk.b.c.a(qVar2, this.f1612f, qVar2.bk());
        }
        if (z || this.h <= 0) {
            this.i.a(System.currentTimeMillis(), y.a(viewGroup));
            this.h = SystemClock.elapsedRealtime();
        } else {
            String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - this.h);
            this.i.a(System.currentTimeMillis(), y.a(viewGroup));
            com.bytedance.sdk.openadsdk.b.c.a(strValueOf, this.a, this.f1612f, this.i);
            this.h = 0L;
        }
    }

    private void c(ViewGroup viewGroup) {
        com.bytedance.sdk.openadsdk.core.model.q qVar;
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f1611e != null) {
                JSONArray jSONArray = new JSONArray();
                for (View view : this.f1611e) {
                    if (view != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("width", view.getWidth());
                            jSONObject2.put("height", view.getHeight());
                            jSONObject2.put("alpha", view.getAlpha());
                        } catch (Throwable unused) {
                        }
                        jSONArray.put(jSONObject2);
                    }
                }
                jSONObject.put("image_view", jSONArray.toString());
            }
            if (viewGroup != null) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("width", viewGroup.getWidth());
                    jSONObject3.put("height", viewGroup.getHeight());
                    jSONObject3.put("alpha", viewGroup.getAlpha());
                } catch (Throwable unused2) {
                }
                jSONObject.put("root_view", jSONObject3.toString());
            }
            if (this.j.h() != null) {
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put("width", ad.c(this.c, r11.getWidth()) * 1.0f);
                    jSONObject4.put("height", ad.c(this.c, r11.getHeight()) * 1.0f);
                } catch (Throwable unused3) {
                }
                jSONObject.put("media_view", jSONObject4.toString());
            }
            if (this.j.b() != null && (qVar = this.a) != null) {
                jSONObject.put("dynamic_show_type", qVar.x());
            }
            com.bytedance.sdk.openadsdk.b.c.a(this.a, this.f1612f, jSONObject);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.c("InteractionManager", "onShowFun json error", e2);
        }
    }

    private EmptyView d(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    public com.bytedance.sdk.openadsdk.b.g a() {
        return this.i;
    }

    public void a(View view, int i) {
        com.bytedance.sdk.openadsdk.apiImpl.feed.f fVar = this.f1613g;
        if (fVar != null) {
            fVar.b(view, this.f1610d);
        }
    }

    public void a(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, @Nullable List<View> list3, @Nullable View view, com.bytedance.sdk.openadsdk.apiImpl.feed.f fVar) {
        if (Build.VERSION.SDK_INT >= 18) {
            a(viewGroup, list, list2, list3, fVar);
            a(viewGroup, view);
            a(viewGroup, list2, list3);
        } else {
            EmptyView emptyViewB = b(viewGroup, list, list2, list3, fVar);
            a(viewGroup, view);
            a(viewGroup, emptyViewB, list2, list3);
            emptyViewB.setNeedCheckingShow(true);
        }
    }

    public void a(com.bykv.vk.openvk.component.video.api.d.c cVar) {
        this.k = cVar;
        com.bytedance.sdk.openadsdk.core.b.b bVar = this.m;
        if (bVar != null) {
            bVar.a(cVar);
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar = this.n;
        if (aVar != null) {
            aVar.a(cVar);
        }
    }
}
