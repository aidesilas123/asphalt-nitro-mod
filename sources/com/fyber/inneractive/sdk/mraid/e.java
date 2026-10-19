package com.fyber.inneractive.sdk.mraid;

import android.R;
import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.web.i;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class e extends a {
    public e(Map<String, String> map, com.fyber.inneractive.sdk.web.i iVar, k0 k0Var) {
        super(map, iVar, k0Var);
    }

    @Override // com.fyber.inneractive.sdk.mraid.b
    public void a() {
        int iA = a("w");
        int iA2 = a("h");
        String str = this.b.get("url");
        boolean zEquals = "true".equals(this.b.get("shouldUseCustomClose"));
        boolean zEquals2 = "true".equals(this.b.get("lockOrientation"));
        if (iA <= 0) {
            iA = -1;
        }
        if (iA2 <= 0) {
            iA2 = -1;
        }
        com.fyber.inneractive.sdk.web.i iVar = this.c;
        if (iVar.b == null || iVar.O == i.d.DISABLED || iVar.N != b0.DEFAULT) {
            return;
        }
        if (str != null && !URLUtil.isValidUrl(str)) {
            iVar.a(g.EXPAND, "URL passed to expand() was invalid.");
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) iVar.b.getRootView().findViewById(R.id.content);
            iVar.R = viewGroup;
            if (viewGroup == null) {
                IAlog.e("Couldn't find content in the view tree", new Object[0]);
                iVar.a(g.RESIZE, "Ad can be resized only if it's state is default or resized.");
                return;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                iVar.m0 = new com.fyber.inneractive.sdk.web.m(iVar);
                if (iVar.l() instanceof Activity) {
                    ((Activity) iVar.l()).getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, iVar.m0);
                }
            }
            iVar.X = zEquals;
            L l = iVar.f2756g;
            if (l != 0) {
                ((i.f) l).a(iVar, zEquals);
            }
            iVar.e(zEquals2);
            if (iVar.e0 >= 0) {
                iVar.e0 = com.fyber.inneractive.sdk.util.l.b(iA2);
            }
            if (iVar.d0 >= 0) {
                iVar.d0 = com.fyber.inneractive.sdk.util.l.b(iA);
            }
            com.fyber.inneractive.sdk.web.g gVar = iVar.b;
            RelativeLayout relativeLayoutA = iVar.a((ViewGroup) gVar.getParent());
            if (str != null) {
                com.fyber.inneractive.sdk.web.g gVar2 = new com.fyber.inneractive.sdk.web.g(iVar.l());
                iVar.S = gVar2;
                gVar2.setId(com.fyber.inneractive.sdk.R.id.inneractive_webview_mraid);
                iVar.S.loadUrl(str);
                iVar.S.setWebChromeClient(iVar.c);
                iVar.S.setWebViewClient(iVar.f2753d);
                gVar = iVar.S;
                gVar.setOnKeyListener(new com.fyber.inneractive.sdk.web.n(iVar));
            } else {
                ViewGroup viewGroup2 = (ViewGroup) iVar.b.getParent();
                if (viewGroup2 != null) {
                    int childCount = viewGroup2.getChildCount();
                    int i = 0;
                    while (i < childCount && viewGroup2.getChildAt(i) != iVar.b) {
                        i++;
                    }
                    RelativeLayout relativeLayout = (RelativeLayout) viewGroup2.findViewById(com.fyber.inneractive.sdk.R.id.ia_identifier_overlay);
                    iVar.g0 = i;
                    com.fyber.inneractive.sdk.util.q.a(relativeLayout);
                    com.fyber.inneractive.sdk.util.q.a(iVar.h0);
                    viewGroup2.addView(iVar.h0, i, com.fyber.inneractive.sdk.util.q.a(iVar.b.getWidth(), iVar.b.getHeight(), 13));
                    viewGroup2.removeView(iVar.b);
                }
            }
            float f2 = iVar.Y;
            int i2 = (int) ((50.0f * f2) + 0.5f);
            if (iA2 >= 0 && iA >= 0) {
                iA = (int) (iA * f2);
                iA2 = (int) (iA2 * f2);
                if (iA < i2) {
                    iA = i2;
                }
                if (iA2 < i2) {
                    iA2 = i2;
                }
            }
            View view = new View(iVar.l());
            view.setBackgroundColor(iVar.l().getResources().getColor(com.fyber.inneractive.sdk.R.color.ia_mraid_expanded_dimmed_bk));
            view.setOnTouchListener(new com.fyber.inneractive.sdk.web.h(iVar));
            iVar.j0.addView(view, new RelativeLayout.LayoutParams(-1, -1));
            com.fyber.inneractive.sdk.util.q.a(gVar);
            iVar.i0.addView(gVar, new RelativeLayout.LayoutParams(-1, -1));
            com.fyber.inneractive.sdk.util.q.a(iVar.i0);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA, iA2);
            layoutParams.addRule(13);
            iVar.j0.addView(iVar.i0, layoutParams);
            com.fyber.inneractive.sdk.util.q.a(iVar.j0);
            iVar.R.addView(iVar.j0, new ViewGroup.LayoutParams(-1, -1));
            if (!gVar.hasFocus()) {
                gVar.requestFocus();
            }
            i.h hVar = iVar.P;
            if (hVar == i.h.ALWAYS_VISIBLE || (!iVar.X && hVar != i.h.ALWAYS_HIDDEN)) {
                iVar.d(true);
            }
            b0 b0Var = b0.EXPANDED;
            iVar.N = b0Var;
            iVar.a(new z(b0Var));
            int i3 = iVar.d0;
            if (i3 != -1 && iVar.e0 != -1) {
                iVar.a(new t(com.fyber.inneractive.sdk.util.l.c(i3), com.fyber.inneractive.sdk.util.l.c(iVar.e0)));
            }
            iVar.a(g.EXPAND);
            if (relativeLayoutA != null) {
                int dimension = (int) relativeLayoutA.getContext().getResources().getDimension(com.fyber.inneractive.sdk.R.dimen.identifier_padding);
                relativeLayoutA.setPadding(dimension, 0, 0, dimension);
                relativeLayoutA.setLayoutParams(iVar.R.getLayoutParams());
                iVar.R.addView(relativeLayoutA);
            }
            L l2 = iVar.f2756g;
            if (l2 != 0) {
                ((i.f) l2).a(iVar);
            }
        } catch (Exception unused) {
            IAlog.e("Couldn't find content in the view tree", new Object[0]);
            iVar.a(g.RESIZE, "Ad can be resized only if it's state is default or resized.");
        }
    }

    @Override // com.fyber.inneractive.sdk.mraid.a
    public String c() {
        return this.b.get("url");
    }
}
