package com.moat.analytics.mobile.glft;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.moat.analytics.mobile.glft.i;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class b {
    i a;
    final String b;
    final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f7638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<View> f7639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WeakReference<WebView> f7640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f7641g;
    private boolean h;
    private a i;
    private JSONObject j;
    private Rect k;
    private Rect l;
    private JSONObject m;
    private JSONObject n;
    private Map<String, Object> o = new HashMap();
    private String p = JsonUtils.EMPTY_JSON;

    private class a {
        Rect a;
        double b;
        double c = 0.0d;

        a(Rect rect, double d2) {
            this.a = rect;
            this.b = d2;
        }
    }

    b(@Nullable View view, boolean z, boolean z2) {
        String str;
        n.a(3, "MoatBaseTracker", this, "Initializing.");
        if (z) {
            str = InneractiveMediationDefs.GENDER_MALE + hashCode();
        } else {
            str = "";
        }
        this.b = str;
        this.f7639e = new WeakReference<>(view);
        this.f7641g = z;
        this.c = z2;
        this.f7638d = false;
        this.h = false;
        this.i = new a(new Rect(0, 0, 0, 0), 0.0d);
    }

    private float a(View view) {
        float alpha = view.getAlpha();
        while (view != null && view.getParent() != null && alpha != 0.0d && (view.getParent() instanceof View)) {
            alpha *= ((View) view.getParent()).getAlpha();
            view = (View) view.getParent();
        }
        return alpha;
    }

    private static int a(Rect rect) {
        return rect.width() * rect.height();
    }

    @VisibleForTesting
    static int a(Rect rect, Set<Rect> set) {
        int i = 0;
        if (set.isEmpty()) {
            return 0;
        }
        ArrayList<Rect> arrayList = new ArrayList();
        arrayList.addAll(set);
        Collections.sort(arrayList, new Comparator<Rect>() { // from class: com.moat.analytics.mobile.glft.b.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Rect rect2, Rect rect3) {
                return Integer.valueOf(rect2.top).compareTo(Integer.valueOf(rect3.top));
            }
        });
        ArrayList arrayList2 = new ArrayList();
        for (Rect rect2 : arrayList) {
            arrayList2.add(Integer.valueOf(rect2.left));
            arrayList2.add(Integer.valueOf(rect2.right));
        }
        Collections.sort(arrayList2);
        int iWidth = 0;
        while (i < arrayList2.size() - 1) {
            int i2 = i + 1;
            if (!((Integer) arrayList2.get(i)).equals(arrayList2.get(i2))) {
                Rect rect3 = new Rect(((Integer) arrayList2.get(i)).intValue(), rect.top, ((Integer) arrayList2.get(i2)).intValue(), rect.bottom);
                int i3 = rect.top;
                for (Rect rect4 : arrayList) {
                    if (Rect.intersects(rect4, rect3)) {
                        if (rect4.bottom > i3) {
                            iWidth += rect3.width() * (rect4.bottom - Math.max(i3, rect4.top));
                            i3 = rect4.bottom;
                        }
                        if (rect4.bottom == rect3.bottom) {
                            break;
                        }
                    }
                }
            }
            i = i2;
        }
        return iWidth;
    }

    private Rect a(DisplayMetrics displayMetrics) {
        return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    private a a(Rect rect, boolean z, boolean z2, boolean z3) {
        a aVar = new a(new Rect(0, 0, 0, 0), 0.0d);
        int iA = a(rect);
        if (k() && z && z2 && !z3 && iA > 0) {
            Rect rect2 = new Rect(0, 0, 0, 0);
            if (c().getGlobalVisibleRect(rect2)) {
                int iA2 = a(rect2);
                HashSet hashSet = new HashSet();
                if (c().getRootView() instanceof ViewGroup) {
                    aVar.a = rect2;
                    boolean zA = a(rect2, c(), hashSet);
                    if (zA) {
                        aVar.c = 1.0d;
                    }
                    if (!zA) {
                        int iA3 = a(rect2, hashSet);
                        if (iA3 > 0) {
                            aVar.c = ((double) iA3) / (((double) iA2) * 1.0d);
                        }
                        aVar.b = ((double) (iA2 - iA3)) / (((double) iA) * 1.0d);
                    }
                }
            }
        }
        return aVar;
    }

    private Map<String, String> a(Rect rect, DisplayMetrics displayMetrics) {
        return b(b(rect, displayMetrics));
    }

    private static boolean a(Rect rect, View view, Set<Rect> set) {
        View rootView = view.getRootView();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(rootView);
        n.b(2, "MoatBaseTracker", view, "starting covering rect search");
        int i = 0;
        boolean z = false;
        while (!arrayDeque.isEmpty() && i < 250) {
            i++;
            View view2 = (View) arrayDeque.pollLast();
            if (view2.equals(view)) {
                n.b(2, "MoatBaseTracker", rect, "found target");
                z = true;
            } else if (b(view2)) {
                if ((view2 instanceof ViewGroup) && !(view2 instanceof ListView)) {
                    ViewGroup viewGroup = (ViewGroup) view2;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        arrayDeque.add(viewGroup.getChildAt(childCount));
                    }
                }
                if (Build.VERSION.SDK_INT < 21 ? z : !(view2.getElevation() <= view.getElevation() && !(z && view2.getElevation() == view.getElevation()))) {
                    Rect rectC = c(view2);
                    if (rectC.setIntersect(rect, rectC)) {
                        n.b(2, "MoatBaseTracker", view2, "Covered by " + view2.getClass().getSimpleName() + "-" + rectC.toString());
                        set.add(rectC);
                        if (rectC.contains(rect)) {
                            return true;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private Rect b(Rect rect, DisplayMetrics displayMetrics) {
        float f2 = displayMetrics.density;
        if (f2 == 0.0f) {
            return rect;
        }
        return new Rect(Math.round(rect.left / f2), Math.round(rect.top / f2), Math.round(rect.right / f2), Math.round(rect.bottom / f2));
    }

    private static Map<String, String> b(Rect rect) {
        HashMap map = new HashMap();
        map.put("x", String.valueOf(rect.left));
        map.put("y", String.valueOf(rect.top));
        map.put("w", String.valueOf(rect.right - rect.left));
        map.put("h", String.valueOf(rect.bottom - rect.top));
        return map;
    }

    private static boolean b(View view) {
        return view.isShown() && ((double) view.getAlpha()) > 0.0d;
    }

    private static Rect c(View view) {
        int[] iArr = {Integer.MIN_VALUE, Integer.MIN_VALUE};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    private void d() {
        String string;
        com.moat.analytics.mobile.glft.a.a.a.a(this.f7640f);
        n.a(3, "MoatBaseTracker", this, "Attempting bridge installation.");
        if (i()) {
            if (!this.f7641g && !this.c) {
                this.a = new i(j(), i.a.WEBVIEW);
            }
            boolean z = this.a.a;
            StringBuilder sb = new StringBuilder();
            sb.append("Bridge ");
            sb.append(z ? "" : "not ");
            sb.append("installed.");
            string = sb.toString();
        } else {
            this.a = null;
            string = "Bridge not installed, WebView is null.";
        }
        n.a(3, "MoatBaseTracker", this, string);
    }

    private boolean e() {
        return Build.VERSION.SDK_INT >= 19 ? k() && c().isAttachedToWindow() : k() && c().getWindowToken() != null;
    }

    private boolean f() {
        return k() && c().hasWindowFocus();
    }

    private boolean g() {
        return (k() && c().isShown()) ? false : true;
    }

    private float h() {
        if (k()) {
            return a(c());
        }
        return 0.0f;
    }

    private boolean i() {
        return j() != null;
    }

    private WebView j() {
        return this.f7640f.get();
    }

    private boolean k() {
        return c() != null;
    }

    private DisplayMetrics l() {
        WeakReference<Activity> weakReference;
        Activity activity;
        if (Build.VERSION.SDK_INT < 17 || (weakReference = com.moat.analytics.mobile.glft.a.a) == null || (activity = weakReference.get()) == null) {
            return c().getContext().getResources().getDisplayMetrics();
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3 A[Catch: Exception -> 0x013f, TryCatch #0 {Exception -> 0x013f, blocks: (B:3:0x0007, B:5:0x000d, B:9:0x0049, B:13:0x0057, B:17:0x0065, B:19:0x0085, B:21:0x008f, B:23:0x0099, B:26:0x00b5, B:28:0x00c4, B:31:0x00da, B:33:0x00de, B:36:0x00f4, B:38:0x00f8, B:44:0x0105, B:45:0x013c, B:42:0x0101, B:35:0x00e6, B:30:0x00cc, B:25:0x00a3), top: B:50:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String a() {
        /*
            Method dump skipped, instruction units count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.glft.b.a():java.lang.String");
    }

    void a(WebView webView) {
        if (webView != null) {
            this.f7640f = new WeakReference<>(webView);
            if (this.a == null) {
                d();
            }
            i iVar = this.a;
            if (iVar == null || !iVar.a) {
                return;
            }
            iVar.a(this);
        }
    }

    void a(i iVar) {
        this.a = iVar;
    }

    void a(String str) {
        this.a.a(str);
    }

    Rect b() {
        int[] iArr = {Integer.MAX_VALUE, Integer.MAX_VALUE};
        if (!k()) {
            return new Rect(0, 0, 0, 0);
        }
        c().getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, c().getWidth() + i, c().getHeight() + i2);
    }

    View c() {
        return this.f7639e.get();
    }

    public void changeTargetView(View view) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("changing view to ");
        if (view != null) {
            str = view.getClass().getSimpleName() + "@" + view.hashCode();
        } else {
            str = "null";
        }
        sb.append(str);
        n.a(3, "MoatBaseTracker", this, sb.toString());
        this.f7639e = new WeakReference<>(view);
    }

    @Deprecated
    public void setActivity(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startTracking() {
        n.a(3, "MoatBaseTracker", this, "Attempting to start impression.");
        if (this.h) {
            n.a(3, "MoatBaseTracker", this, "startTracking failed, tracker already started");
            return;
        }
        boolean zB = this.a.b(this);
        StringBuilder sb = new StringBuilder();
        sb.append("Impression ");
        sb.append(zB ? "" : "not ");
        sb.append("started.");
        n.a(3, "MoatBaseTracker", this, sb.toString());
        if (zB) {
            this.f7638d = true;
            this.h = true;
        }
    }

    public void stopTracking() {
        n.a(3, "MoatBaseTracker", this, "Attempting to stop impression.");
        this.f7638d = false;
        boolean zC = this.a.c(this);
        StringBuilder sb = new StringBuilder();
        sb.append("Impression tracking ");
        sb.append(zC ? "" : "not ");
        sb.append("stopped.");
        n.a(3, "MoatBaseTracker", this, sb.toString());
    }
}
