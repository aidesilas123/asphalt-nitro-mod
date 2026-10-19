package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.w1;
import com.applovin.exoplayer2.x1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleView extends FrameLayout implements an.d {
    private List<com.applovin.exoplayer2.i.a> OV;
    private c VU;
    private float VV;
    private int YW;
    private float YX;
    private boolean YY;
    private boolean YZ;
    private int Za;
    private a Zb;
    private View Zc;

    interface a {
        void a(List<com.applovin.exoplayer2.i.a> list, c cVar, float f2, int i, float f3);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OV = Collections.emptyList();
        this.VU = c.VW;
        this.YW = 0;
        this.YX = 0.0533f;
        this.VV = 0.08f;
        this.YY = true;
        this.YZ = true;
        b bVar = new b(context);
        this.Zb = bVar;
        this.Zc = bVar;
        addView(bVar);
        this.Za = 1;
    }

    private com.applovin.exoplayer2.i.a b(com.applovin.exoplayer2.i.a aVar) {
        a.C0041a c0041aLP = aVar.lP();
        if (!this.YY) {
            j.a(c0041aLP);
        } else if (!this.YZ) {
            j.b(c0041aLP);
        }
        return c0041aLP.lU();
    }

    private void c(int i, float f2) {
        this.YW = i;
        this.YX = f2;
        nY();
    }

    private List<com.applovin.exoplayer2.i.a> getCuesWithStylingPreferencesApplied() {
        if (this.YY && this.YZ) {
            return this.OV;
        }
        ArrayList arrayList = new ArrayList(this.OV.size());
        for (int i = 0; i < this.OV.size(); i++) {
            arrayList.add(b(this.OV.get(i)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (ai.acV < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private c getUserCaptionStyle() {
        if (ai.acV < 19 || isInEditMode()) {
            return c.VW;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        return (captioningManager == null || !captioningManager.isEnabled()) ? c.VW : c.a(captioningManager.getUserStyle());
    }

    private void nY() {
        this.Zb.a(getCuesWithStylingPreferencesApplied(), this.VU, this.YX, this.YW, this.VV);
    }

    private <T extends View & a> void setView(T t) {
        removeView(this.Zc);
        View view = this.Zc;
        if (view instanceof l) {
            ((l) view).destroy();
        }
        this.Zc = t;
        this.Zb = t;
        addView(t);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.b.g
    public /* synthetic */ void A(boolean z) {
        x1.a(this, z);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void Z(int i) {
        x1.b(this, i);
    }

    public void a(float f2, boolean z) {
        c(z ? 1 : 0, f2);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(ab abVar, int i) {
        x1.c(this, abVar, i);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(ac acVar) {
        x1.d(this, acVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(ak akVar) {
        x1.e(this, akVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(an.e eVar, an.e eVar2, int i) {
        x1.f(this, eVar, eVar2, i);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(an anVar, an.c cVar) {
        x1.g(this, anVar, cVar);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void a(com.applovin.exoplayer2.g.a aVar) {
        x1.h(this, aVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void a(ad adVar, com.applovin.exoplayer2.j.h hVar) {
        x1.i(this, adVar, hVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.m.n
    public /* synthetic */ void a(com.applovin.exoplayer2.m.o oVar) {
        x1.j(this, oVar);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void a(com.applovin.exoplayer2.o oVar) {
        x1.k(this, oVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void aa(int i) {
        x1.l(this, i);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void ab(int i) {
        x1.m(this, i);
    }

    @Override // com.applovin.exoplayer2.an.b
    public /* synthetic */ void ac(int i) {
        w1.j(this, i);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void b(ak akVar) {
        x1.n(this, akVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void b(am amVar) {
        x1.o(this, amVar);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void b(ba baVar, int i) {
        x1.p(this, baVar, i);
    }

    @Override // com.applovin.exoplayer2.an.b
    public /* synthetic */ void cD() {
        w1.n(this);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void cE() {
        x1.q(this);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void d(an.a aVar) {
        x1.r(this, aVar);
    }

    @Override // com.applovin.exoplayer2.an.b
    public /* synthetic */ void d(boolean z, int i) {
        w1.p(this, z, i);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void e(int i, boolean z) {
        x1.s(this, i, z);
    }

    @Override // com.applovin.exoplayer2.an.d
    public void e(List<com.applovin.exoplayer2.i.a> list) {
        setCues(list);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void e(boolean z, int i) {
        x1.u(this, z, i);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void f(int i, int i2) {
        x1.v(this, i, i2);
    }

    @Override // com.applovin.exoplayer2.an.d
    public /* synthetic */ void g(float f2) {
        x1.w(this, f2);
    }

    public void nW() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void nX() {
        setStyle(getUserCaptionStyle());
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.YZ = z;
        nY();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.YY = z;
        nY();
    }

    public void setBottomPaddingFraction(float f2) {
        this.VV = f2;
        nY();
    }

    public void setCues(@Nullable List<com.applovin.exoplayer2.i.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.OV = list;
        nY();
    }

    public void setFractionalTextSize(float f2) {
        a(f2, false);
    }

    public void setStyle(c cVar) {
        this.VU = cVar;
        nY();
    }

    public void setViewType(int i) {
        if (this.Za == i) {
            return;
        }
        if (i == 1) {
            setView(new b(getContext()));
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            setView(new l(getContext()));
        }
        this.Za = i;
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void w(boolean z) {
        x1.x(this, z);
    }

    @Override // com.applovin.exoplayer2.an.b
    public /* synthetic */ void x(boolean z) {
        w1.s(this, z);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void y(boolean z) {
        x1.y(this, z);
    }

    @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
    public /* synthetic */ void z(boolean z) {
        x1.z(this, z);
    }
}
