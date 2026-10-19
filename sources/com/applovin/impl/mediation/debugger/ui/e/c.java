package com.applovin.impl.mediation.debugger.ui.e;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.privacy.b.c;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.b;
import com.applovin.mediation.MaxDebuggerCmpNetworksListActivity;
import com.applovin.mediation.MaxDebuggerTcfStringActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.applovin.impl.mediation.debugger.ui.a {
    private com.applovin.impl.mediation.debugger.ui.d.d aqw;
    private final Set<String> atf = new TreeSet();
    private final Set<String> atg = new TreeSet();
    private final Set<String> ath = new TreeSet();
    private final Set<String> ati = new TreeSet();
    private final Set<String> atj = new TreeSet();
    private n sdk;

    private enum a {
        CMP_SDK_ID,
        CMP_SDK_VERSION,
        INSTRUCTIONS,
        MISSING_NETWORKS
    }

    private enum b {
        GDPR_APPLIES,
        TC_STRING,
        AC_STRING
    }

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.e.c$c, reason: collision with other inner class name */
    private enum EnumC0074c {
        IAB_TCF_PARAMETERS,
        CMP_CONFIGURATION
    }

    private void A(List<com.applovin.impl.privacy.b.c> list) {
        for (com.applovin.impl.privacy.b.c cVar : list) {
            if (cVar.Av() == c.a.TCF_VENDOR) {
                if (Boolean.TRUE.equals(cVar.Ay())) {
                    this.atf.add(cVar.Ax());
                } else {
                    this.ath.add(cVar.Ax());
                }
            } else if (cVar.Av() != c.a.ATP_NETWORK) {
                this.atj.add(cVar.getDisplayName());
            } else if (!com.applovin.impl.privacy.b.d.ct(this.sdk.Cm().At())) {
                this.atj.add(cVar.getDisplayName());
            } else if (Boolean.TRUE.equals(cVar.Ay())) {
                this.atg.add(cVar.Ax());
            } else {
                this.ati.add(cVar.Ax());
            }
        }
    }

    private com.applovin.impl.mediation.debugger.ui.d.c a(String str, @Nullable Integer num) {
        return com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.RIGHT_DETAIL).bO(str).bP(num != null ? num.toString() : "No value set").gm(num != null ? ViewCompat.MEASURED_STATE_MASK : SupportMenu.CATEGORY_MASK).wX();
    }

    private com.applovin.impl.mediation.debugger.ui.d.c a(String str, @Nullable String str2, boolean z) {
        boolean zIsValidString = StringUtils.isValidString(str2);
        if (zIsValidString && str2.length() > 35) {
            str2 = str2.substring(0, 35) + "...";
        }
        c.a aVarBO = com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL).bO(str);
        if (!zIsValidString) {
            str2 = "No value set";
        }
        c.a aVarAF = aVarBO.bP(str2).gm(z ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).aF(zIsValidString);
        if (zIsValidString) {
            aVarAF.y(this);
        }
        return aVarAF.wX();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<com.applovin.impl.mediation.debugger.ui.d.c> xb() {
        ArrayList arrayList = new ArrayList(b.values().length);
        Integer numAr = this.sdk.Cm().Ar();
        String strAs = this.sdk.Cm().As();
        String strAt = this.sdk.Cm().At();
        arrayList.add(a(com.applovin.impl.sdk.c.d.aRw.getName(), numAr));
        arrayList.add(a(com.applovin.impl.sdk.c.d.aRx.getName(), strAs, !com.applovin.impl.privacy.b.d.cr(strAs)));
        arrayList.add(a(com.applovin.impl.sdk.c.d.aRy.getName(), strAt, false));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<com.applovin.impl.mediation.debugger.ui.d.c> xc() {
        String str;
        ArrayList arrayList = new ArrayList(b.values().length);
        Integer numAp = this.sdk.Cm().Ap();
        Integer numAq = this.sdk.Cm().Aq();
        int size = this.ath.size() + this.ati.size();
        arrayList.add(a(com.applovin.impl.sdk.c.d.aRu.getName(), numAp));
        arrayList.add(a(com.applovin.impl.sdk.c.d.aRv.getName(), numAq));
        arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL).bO("To check which of your integrated networks are missing from your CMP, first make sure that you have granted consent to all networks through your CMP flow. Then add the following networks to your CMP network list.").wX());
        c.a aVarBO = com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.RIGHT_DETAIL).bO("Configured CMP Networks");
        if (size > 0) {
            str = "Missing " + size + " network(s)";
        } else {
            str = "";
        }
        arrayList.add(aVarBO.bP(str).gm(size > 0 ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).y(this).aF(true).wX());
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.sdk;
    }

    public void initialize(final n nVar) {
        this.sdk = nVar;
        final com.applovin.impl.privacy.b.b bVarCm = nVar.Cm();
        A(bVarCm.Au());
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.e.c.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                return i == EnumC0074c.IAB_TCF_PARAMETERS.ordinal() ? b.values().length : a.values().length;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
                return i == EnumC0074c.IAB_TCF_PARAMETERS.ordinal() ? new e("IAB TCF Parameters") : new e("CMP CONFIGURATION");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
                return i == EnumC0074c.IAB_TCF_PARAMETERS.ordinal() ? c.this.xb() : c.this.xc();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return EnumC0074c.values().length;
            }
        };
        this.aqw = dVar;
        dVar.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.e.c.2
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void onClick(com.applovin.impl.mediation.debugger.ui.d.a aVar, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                final String name;
                final String strAt;
                if (aVar.wP() != EnumC0074c.IAB_TCF_PARAMETERS.ordinal()) {
                    com.applovin.impl.sdk.utils.b.a(c.this, MaxDebuggerCmpNetworksListActivity.class, nVar.BM(), new b.a<MaxDebuggerCmpNetworksListActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.e.c.2.2
                        @Override // com.applovin.impl.sdk.utils.b.a
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public void onActivityCreated(MaxDebuggerCmpNetworksListActivity maxDebuggerCmpNetworksListActivity) {
                            maxDebuggerCmpNetworksListActivity.initialize(c.this.ath, c.this.ati, c.this.atf, c.this.atg, c.this.atj, nVar);
                        }
                    });
                    return;
                }
                if (aVar.wQ() == b.TC_STRING.ordinal()) {
                    name = com.applovin.impl.sdk.c.d.aRx.getName();
                    strAt = bVarCm.As();
                } else {
                    name = com.applovin.impl.sdk.c.d.aRy.getName();
                    strAt = bVarCm.At();
                }
                com.applovin.impl.sdk.utils.b.a(c.this, MaxDebuggerTcfStringActivity.class, nVar.BM(), new b.a<MaxDebuggerTcfStringActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.e.c.2.1
                    @Override // com.applovin.impl.sdk.utils.b.a
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onActivityCreated(MaxDebuggerTcfStringActivity maxDebuggerTcfStringActivity) {
                        maxDebuggerTcfStringActivity.initialize(name, strAt, nVar);
                    }
                });
            }
        });
        this.aqw.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("CMP (Consent Management Platform)");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.aqw);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.applovin.impl.mediation.debugger.ui.d.d dVar = this.aqw;
        if (dVar != null) {
            dVar.a(null);
        }
    }
}
