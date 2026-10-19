package com.fyber.inneractive.sdk.dv.banner;

import android.view.View;
import android.view.ViewGroup;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.dv.f;
import com.fyber.inneractive.sdk.external.InneractiveAdViewEventsListener;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.flow.r;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import com.google.android.gms.ads.AdView;

/* JADX INFO: loaded from: classes2.dex */
public class b extends r<a, InneractiveAdViewEventsListener> implements com.fyber.inneractive.sdk.interfaces.b {
    public ViewGroup l;

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a(int i) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a(ViewGroup viewGroup) {
        AdContent adcontent;
        if (this.a == null) {
            IAlog.e("%sYou must set the spot to render before calling renderAd", IAlog.a(this));
            return;
        }
        if (viewGroup == null || (adcontent = this.b) == 0) {
            return;
        }
        a aVar = (a) adcontent;
        if (aVar.i != 0) {
            aVar.h = this;
            if (aVar.j) {
                w();
                aVar.j = false;
            }
            this.l = viewGroup;
            viewGroup.addView((View) ((a) this.b).i);
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public boolean a(View view) {
        ViewGroup viewGroup = this.l;
        return viewGroup != null && viewGroup.equals(view);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public boolean a(q qVar) {
        return qVar instanceof com.fyber.inneractive.sdk.dv.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            T t = ((a) adcontent).i;
            if (t != 0) {
                ((AdView) t).destroy();
            }
            ((a) this.b).a();
        }
        ViewGroup viewGroup = this.l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.l = null;
        }
        super.destroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.interfaces.b
    public int f() {
        T t;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (t = ((a) adcontent).i) == 0 || ((AdView) t).getAdSize() == null) {
            return 0;
        }
        return l.b(((AdView) ((a) this.b).i).getAdSize().getWidth());
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void n() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.interfaces.b
    public int p() {
        T t;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (t = ((a) adcontent).i) == 0 || ((AdView) t).getAdSize() == null) {
            return 0;
        }
        return l.b(((AdView) ((a) this.b).i).getAdSize().getHeight());
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void r() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void u() {
        ViewGroup viewGroup = this.l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.l = null;
        }
    }

    public void w() {
        E();
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            e eVar = ((a) adcontent).b;
            if (((f) eVar) != null) {
                b((f) eVar);
                b0 b0Var = ((a) this.b).f2019d;
                if (b0Var == null || ((a0) b0Var).c == null) {
                    return;
                }
                a(com.fyber.inneractive.sdk.cache.session.enums.a.IMPRESSION, ((a0) b0Var).c.b == UnitDisplayType.MRECT ? com.fyber.inneractive.sdk.cache.session.enums.b.RECTANGLE_DISPLAY : com.fyber.inneractive.sdk.cache.session.enums.b.BANNER_DISPLAY);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public View y() {
        return this.l;
    }
}
