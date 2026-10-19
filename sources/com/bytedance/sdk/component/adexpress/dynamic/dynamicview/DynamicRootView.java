package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.b.k;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.b.n;
import com.bytedance.sdk.component.adexpress.dynamic.b.f;
import com.bytedance.sdk.component.adexpress.dynamic.b.h;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DynamicRootView extends FrameLayout implements com.bytedance.sdk.component.adexpress.dynamic.d, com.bytedance.sdk.component.adexpress.theme.a {
    protected final n a;
    boolean b;
    public View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private k f754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DynamicBaseWidget f755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.dynamic.d.a f756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ThemeStatusBroadcastReceiver f757g;
    private com.bytedance.sdk.component.adexpress.dynamic.b h;
    private ViewGroup i;
    private int j;
    private List<com.bytedance.sdk.component.adexpress.dynamic.c> k;
    private com.bytedance.sdk.component.adexpress.dynamic.e l;
    private int m;
    private int n;
    private m o;
    private Context p;
    private String q;
    private Map<Integer, String> r;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, m mVar, com.bytedance.sdk.component.adexpress.dynamic.d.a aVar) {
        super(context);
        this.i = null;
        this.j = 0;
        this.k = new ArrayList();
        this.m = 0;
        this.n = 0;
        this.p = context;
        n nVar = new n();
        this.a = nVar;
        nVar.a(2);
        this.f756f = aVar;
        aVar.a(this);
        this.f757g = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.a(this);
        this.b = z;
        this.o = mVar;
    }

    private void a(ViewGroup viewGroup, h hVar) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null || !hVar.v()) {
            return;
        }
        viewGroup2.setClipChildren(false);
        viewGroup2.setClipToPadding(false);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    private void a(h hVar) {
        f fVarE;
        com.bytedance.sdk.component.adexpress.dynamic.b.e eVarJ = hVar.j();
        if (eVarJ == null || (fVarE = eVarJ.e()) == null) {
            return;
        }
        this.a.b(fVarE.aF());
    }

    public DynamicBaseWidget a(h hVar, ViewGroup viewGroup, int i) {
        if (hVar == null) {
            return null;
        }
        List<h> listK = hVar.k();
        DynamicBaseWidget dynamicBaseWidgetA = com.bytedance.sdk.component.adexpress.dynamic.a.b.a(this.p, this, hVar);
        if (dynamicBaseWidgetA instanceof DynamicUnKnowView) {
            a(i == 3 ? 128 : 118);
            return null;
        }
        a(hVar);
        dynamicBaseWidgetA.c();
        if (viewGroup != null) {
            viewGroup.addView(dynamicBaseWidgetA);
            a(viewGroup, hVar);
        }
        if (listK == null || listK.size() <= 0) {
            return null;
        }
        Iterator<h> it = listK.iterator();
        while (it.hasNext()) {
            a(it.next(), dynamicBaseWidgetA, i);
        }
        return dynamicBaseWidgetA;
    }

    public void a(double d2, double d3, double d4, double d5, float f2) {
        this.a.c(d2);
        this.a.d(d3);
        this.a.e(d4);
        this.a.f(d5);
        this.a.a(f2);
        this.a.b(f2);
        this.a.c(f2);
        this.a.d(f2);
    }

    public void a(int i) {
        this.a.a(false);
        this.a.b(i);
        this.f754d.a(this.a);
    }

    public void a(h hVar, int i) {
        this.f755e = a(hVar, this, i);
        this.a.a(true);
        this.a.a(this.f755e.f751e);
        this.a.b(this.f755e.f752f);
        this.a.a(this.c);
        this.f754d.a(this.a);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void a(CharSequence charSequence, int i, int i2, boolean z) {
        for (int i3 = 0; i3 < this.k.size(); i3++) {
            if (this.k.get(i3) != null) {
                this.k.get(i3).a(charSequence, i == 1, i2, z);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.a
    public void b(int i) {
        DynamicBaseWidget dynamicBaseWidget = this.f755e;
        if (dynamicBaseWidget == null) {
            return;
        }
        dynamicBaseWidget.a(i);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void f() {
        try {
            this.l.a();
        } catch (Exception unused) {
        }
    }

    public String getBgColor() {
        return this.q;
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.r;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.d.a getDynamicClickListener() {
        return this.f756f;
    }

    public int getLogoUnionHeight() {
        return this.m;
    }

    public k getRenderListener() {
        return this.f754d;
    }

    public m getRenderRequest() {
        return this.o;
    }

    public int getScoreCountWithIcon() {
        return this.n;
    }

    public ViewGroup getTimeOut() {
        return this.i;
    }

    public List<com.bytedance.sdk.component.adexpress.dynamic.c> getTimeOutListener() {
        return this.k;
    }

    public int getTimedown() {
        return this.j;
    }

    public void setBgColor(String str) {
        this.q = str;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.r = map;
    }

    public void setDislikeView(View view) {
        this.f756f.b(view);
    }

    public void setLogoUnionHeight(int i) {
        this.m = i;
    }

    public void setMuteListener(com.bytedance.sdk.component.adexpress.dynamic.b bVar) {
        this.h = bVar;
    }

    public void setRenderListener(k kVar) {
        this.f754d = kVar;
        this.f756f.a(kVar);
    }

    public void setScoreCountWithIcon(int i) {
        this.n = i;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void setSoundMute(boolean z) {
        com.bytedance.sdk.component.adexpress.dynamic.b bVar = this.h;
        if (bVar != null) {
            bVar.setSoundMute(z);
        }
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.i = viewGroup;
    }

    public void setTimeOutListener(com.bytedance.sdk.component.adexpress.dynamic.c cVar) {
        this.k.add(cVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.d
    public void setTimeUpdate(int i) {
        this.l.setTimeUpdate(i);
    }

    public void setTimedown(int i) {
        this.j = i;
    }

    public void setVideoListener(com.bytedance.sdk.component.adexpress.dynamic.e eVar) {
        this.l = eVar;
    }
}
