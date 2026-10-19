package com.fyber.inneractive.sdk.mraid;

import android.R;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.web.i;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class o extends b {
    public o(Map<String, String> map, com.fyber.inneractive.sdk.web.i iVar, k0 k0Var) {
        super(map, iVar, k0Var);
    }

    @Override // com.fyber.inneractive.sdk.mraid.b
    public void a() {
        int iA = a("w");
        int iA2 = a("h");
        int iA3 = a("offsetX");
        int iA4 = a("offsetY");
        boolean zEquals = "true".equals(this.b.get("allowOffscreen"));
        this.b.get("customClosePosition");
        if (iA <= 0) {
            iA = this.c.Z;
        }
        if (iA2 <= 0) {
            iA2 = this.c.a0;
        }
        com.fyber.inneractive.sdk.web.i iVar = this.c;
        com.fyber.inneractive.sdk.web.g gVar = iVar.b;
        if (gVar == null) {
            return;
        }
        try {
            ViewGroup viewGroup = (ViewGroup) gVar.getRootView().findViewById(R.id.content);
            iVar.R = viewGroup;
            if (viewGroup == null) {
                IAlog.e("Couldn't find content in the view tree", new Object[0]);
                iVar.a(g.RESIZE, "Ad can be resized only if it's state is default or resized.");
                return;
            }
            if (iVar.O == i.d.DISABLED) {
                return;
            }
            b0 b0Var = iVar.N;
            if (b0Var != b0.DEFAULT && b0Var != b0.RESIZED) {
                iVar.a(g.RESIZE, "Ad can be resized only if it's state is default or resized.");
                return;
            }
            if (iA < 0 && iA2 < 0) {
                iVar.a(g.RESIZE, "Creative size passed to resize() was invalid.");
                return;
            }
            iVar.c(false);
            i.h hVar = iVar.P;
            if (hVar == i.h.ALWAYS_VISIBLE || (!iVar.X && hVar != i.h.ALWAYS_HIDDEN)) {
                iVar.d(true);
            }
            iVar.e(false);
            iVar.e0 = com.fyber.inneractive.sdk.util.l.b(iA2);
            iVar.d0 = com.fyber.inneractive.sdk.util.l.b(iA);
            if (!zEquals) {
                int i = (iA3 + iA) - iVar.Z;
                if (i > 0) {
                    iA3 -= i;
                }
                if (iA3 < 0) {
                    iA3 = 0;
                }
                int i2 = (iA4 + iA2) - iVar.a0;
                if (i2 > 0) {
                    iA4 -= i2;
                }
                if (iA4 < 0) {
                    iA4 = 0;
                }
            }
            ViewGroup.LayoutParams layoutParams = iVar.b.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                int[] iArr = null;
                if (iA3 == 0 && iA4 == 0) {
                    iArr = new int[]{13};
                }
                RelativeLayout.LayoutParams layoutParamsA = com.fyber.inneractive.sdk.util.q.a(com.fyber.inneractive.sdk.util.l.b(iA), com.fyber.inneractive.sdk.util.l.b(iA2), iArr);
                layoutParamsA.leftMargin = iA3;
                layoutParamsA.topMargin = iA4;
                iVar.b.setLayoutParams(layoutParamsA);
            } else if (layoutParams instanceof FrameLayout.LayoutParams) {
                iVar.b.setLayoutParams(new FrameLayout.LayoutParams(com.fyber.inneractive.sdk.util.l.b(iA), com.fyber.inneractive.sdk.util.l.b(iA2), 17));
            }
            b0 b0Var2 = iVar.N;
            b0 b0Var3 = b0.RESIZED;
            if (b0Var2 != b0Var3) {
                iVar.N = b0Var3;
                iVar.a(new z(b0Var3));
                int i3 = iVar.d0;
                if (i3 != -1 && iVar.e0 != -1) {
                    iVar.a(new t(com.fyber.inneractive.sdk.util.l.c(i3), com.fyber.inneractive.sdk.util.l.c(iVar.e0)));
                }
            }
            iVar.a(g.RESIZE);
            RelativeLayout relativeLayoutA = iVar.a((ViewGroup) iVar.b.getParent());
            com.fyber.inneractive.sdk.web.g gVar2 = iVar.b;
            if (gVar2 != null && relativeLayoutA != null) {
                relativeLayoutA.setLayoutParams(gVar2.getLayoutParams());
            }
            L l = iVar.f2756g;
            if (l != 0) {
                ((i.f) l).b(iVar);
            }
        } catch (Exception unused) {
            IAlog.e("Couldn't find content in the view tree", new Object[0]);
            iVar.a(g.RESIZE, "Ad can be resized only if it's state is default or resized.");
        }
    }

    @Override // com.fyber.inneractive.sdk.mraid.b
    public boolean b() {
        return true;
    }
}
