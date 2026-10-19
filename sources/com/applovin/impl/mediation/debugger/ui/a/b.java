package com.applovin.impl.mediation.debugger.ui.a;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class b extends com.applovin.impl.mediation.debugger.ui.d.d {
    private final com.applovin.impl.mediation.debugger.b.a.a apU;

    @Nullable
    private final com.applovin.impl.mediation.debugger.b.a.e apV;
    private final com.applovin.impl.mediation.debugger.b.a.b aql;
    private final List<com.applovin.impl.mediation.debugger.ui.d.c> aqm;
    private final List<com.applovin.impl.mediation.debugger.ui.d.c> aqn;
    private final List<com.applovin.impl.mediation.debugger.ui.d.c> aqo;
    private final String title;

    enum a {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.a.b$b, reason: collision with other inner class name */
    class C0068b extends com.applovin.impl.mediation.debugger.ui.b.a.a {
        private final com.applovin.impl.mediation.debugger.b.a.e aqu;

        C0068b(com.applovin.impl.mediation.debugger.b.a.e eVar, @Nullable String str, boolean z) {
            super(eVar.uR().uP(), ((com.applovin.impl.mediation.debugger.ui.d.d) b.this).E);
            this.aqu = eVar;
            this.asv = StringUtils.createSpannedString(eVar.uR().getDisplayName(), ViewCompat.MEASURED_STATE_MASK, 18, 1);
            this.asw = !TextUtils.isEmpty(str) ? new SpannedString(str) : null;
            this.iV = z;
        }

        @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
        public boolean isEnabled() {
            return this.iV;
        }

        @Override // com.applovin.impl.mediation.debugger.ui.d.c
        public int vP() {
            return -12303292;
        }

        public com.applovin.impl.mediation.debugger.b.a.e wd() {
            return this.aqu;
        }
    }

    b(com.applovin.impl.mediation.debugger.b.a.a aVar, @Nullable com.applovin.impl.mediation.debugger.b.a.b bVar, @Nullable com.applovin.impl.mediation.debugger.b.a.e eVar, Context context) {
        super(context);
        this.apU = aVar;
        this.apV = eVar;
        this.aql = bVar != null ? bVar : aVar.uG();
        this.title = bVar != null ? bVar.getName() : aVar.getName();
        this.aqm = vW();
        this.aqn = vX();
        this.aqo = vY();
        notifyDataSetChanged();
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> vW() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(vZ());
        arrayList.add(wa());
        if (this.aql.uJ() != null) {
            arrayList.add(wb());
        }
        if (this.apV != null) {
            arrayList.add(wc());
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> vX() {
        com.applovin.impl.mediation.debugger.b.a.e eVar = this.apV;
        if (eVar != null && !eVar.uT()) {
            return new ArrayList();
        }
        List<com.applovin.impl.mediation.debugger.b.a.e> listUL = this.aql.uL();
        ArrayList arrayList = new ArrayList(listUL.size());
        for (com.applovin.impl.mediation.debugger.b.a.e eVar2 : listUL) {
            com.applovin.impl.mediation.debugger.b.a.e eVar3 = this.apV;
            if (eVar3 == null || eVar3.uR().getName().equals(eVar2.uR().getName())) {
                arrayList.add(new C0068b(eVar2, eVar2.uS() != null ? eVar2.uS().mQ() : "", this.apV == null));
            }
        }
        return arrayList;
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> vY() {
        com.applovin.impl.mediation.debugger.b.a.e eVar = this.apV;
        if (eVar != null && eVar.uT()) {
            return new ArrayList();
        }
        List<com.applovin.impl.mediation.debugger.b.a.e> listUM = this.aql.uM();
        ArrayList arrayList = new ArrayList(listUM.size());
        for (com.applovin.impl.mediation.debugger.b.a.e eVar2 : listUM) {
            com.applovin.impl.mediation.debugger.b.a.e eVar3 = this.apV;
            if (eVar3 == null || eVar3.uR().getName().equals(eVar2.uR().getName())) {
                arrayList.add(new C0068b(eVar2, null, this.apV == null));
                for (com.applovin.impl.mediation.debugger.b.a.d dVar : eVar2.uU()) {
                    arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.wW().bO(dVar.mQ()).bP(dVar.uQ()).aG(true).wX());
                }
            }
        }
        return arrayList;
    }

    private com.applovin.impl.mediation.debugger.ui.d.c vZ() {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("ID").bP(this.apU.mQ()).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wa() {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Ad Format").bP(this.apU.tG()).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wb() {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("AB Test Experiment Name").bP(vV().uJ()).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c wc() {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO("Selected Network").bP(this.apV.uR().getDisplayName()).wX();
    }

    public String getTitle() {
        return this.title;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int gg(int i) {
        return i == a.INFO.ordinal() ? this.aqm.size() : i == a.BIDDERS.ordinal() ? this.aqn.size() : this.aqo.size();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
        return i == a.INFO.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("INFO") : i == a.BIDDERS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("BIDDERS") : new com.applovin.impl.mediation.debugger.ui.d.e("WATERFALL");
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
        return i == a.INFO.ordinal() ? this.aqm : i == a.BIDDERS.ordinal() ? this.aqn : this.aqo;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int tM() {
        return a.COUNT.ordinal();
    }

    public com.applovin.impl.mediation.debugger.b.a.b vV() {
        return this.aql;
    }
}
