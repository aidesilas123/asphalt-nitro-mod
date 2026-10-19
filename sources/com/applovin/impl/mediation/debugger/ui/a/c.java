package com.applovin.impl.mediation.debugger.ui.a;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.b;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxDebuggerWaterfallKeywordsActivity;
import com.applovin.sdk.R;
import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.applovin.impl.mediation.debugger.ui.a {
    private com.applovin.impl.mediation.debugger.b.a.a apU;
    private com.applovin.impl.mediation.debugger.ui.d.d aqw;
    private com.applovin.impl.sdk.n sdk;

    public enum a {
        TARGETED_WATERFALL,
        OTHER_WATERFALLS
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.mediation.debugger.b.a.a aVar, com.applovin.impl.mediation.debugger.ui.d.a aVar2, com.applovin.impl.sdk.n nVar, MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
        maxDebuggerAdUnitDetailActivity.initialize(aVar, aVar.uH().get(aVar2.wP()), null, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.mediation.debugger.b.a.a aVar, com.applovin.impl.mediation.debugger.ui.d.a aVar2, com.applovin.impl.sdk.n nVar, MaxDebuggerWaterfallKeywordsActivity maxDebuggerWaterfallKeywordsActivity) {
        com.applovin.impl.mediation.debugger.b.a.b bVar = aVar.uH().get(aVar2.wP());
        maxDebuggerWaterfallKeywordsActivity.initialize(bVar.getName(), bVar.uK().getKeywords(), nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final com.applovin.impl.sdk.n nVar, final com.applovin.impl.mediation.debugger.b.a.a aVar, final com.applovin.impl.mediation.debugger.ui.d.a aVar2, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
        if (aVar2.wQ() == 0) {
            com.applovin.impl.sdk.utils.b.a(this, MaxDebuggerAdUnitDetailActivity.class, nVar.BM(), new b.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.k
                @Override // com.applovin.impl.sdk.utils.b.a
                public final void onActivityCreated(Activity activity) {
                    c.a(aVar, aVar2, nVar, (MaxDebuggerAdUnitDetailActivity) activity);
                }
            });
        } else if (cVar.wU().toString().equals("Keywords")) {
            com.applovin.impl.sdk.utils.b.a(this, MaxDebuggerWaterfallKeywordsActivity.class, nVar.BM(), new b.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.j
                @Override // com.applovin.impl.sdk.utils.b.a
                public final void onActivityCreated(Activity activity) {
                    c.a(aVar, aVar2, nVar, (MaxDebuggerWaterfallKeywordsActivity) activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.applovin.impl.mediation.debugger.ui.d.c bJ(String str) {
        return com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.RIGHT_DETAIL).a(StringUtils.createSpannedString(str, ViewCompat.MEASURED_STATE_MASK, 18, 1)).y(this).aF(true).wX();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String bK(String str) {
        return str.equals("idfa") ? "IDFA Only" : str.equals("dnt") ? "No IDFA Only" : "All";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String bL(String str) {
        return str.equals("phone") ? "Phones" : str.equals("tablet") ? "Tablets" : "All";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String p(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str.equals(InneractiveMediationDefs.GENDER_MALE)) {
                arrayList.add("Male");
            } else if (str.equals(InneractiveMediationDefs.GENDER_FEMALE)) {
                arrayList.add("Female");
            } else {
                arrayList.add(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
            }
        }
        return com.applovin.impl.mediation.d.q.a(", ", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.applovin.impl.mediation.debugger.ui.d.c q(List<String> list) {
        return com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL).bO("Keywords").b(StringUtils.createSpannedString(list.size() + " keyword group(s)", -7829368, 14)).y(this).aF(true).wX();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.applovin.impl.mediation.debugger.ui.d.c u(String str, String str2) {
        return com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.RIGHT_DETAIL).bO(str).bP(str2).wX();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected com.applovin.impl.sdk.n getSdk() {
        return this.sdk;
    }

    public void initialize(final com.applovin.impl.mediation.debugger.b.a.a aVar, final com.applovin.impl.sdk.n nVar) {
        this.apU = aVar;
        this.sdk = nVar;
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.a.c.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                com.applovin.impl.mediation.debugger.b.a.b bVar = aVar.uH().get(i);
                int i2 = bVar.uJ() != null ? 1 : 0;
                int i3 = 2;
                com.applovin.impl.mediation.debugger.b.a.f fVarUK = bVar.uK();
                if (fVarUK.uX() != null && fVarUK.uY() != null) {
                    i3 = 3;
                }
                if (fVarUK.uZ() != null) {
                    i3++;
                }
                if (fVarUK.getKeywords() != null) {
                    i3++;
                }
                return i2 + 1 + i3;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
                return i == a.TARGETED_WATERFALL.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("TARGETED WATERFALL FOR CURRENT DEVICE") : i == a.OTHER_WATERFALLS.ordinal() ? new com.applovin.impl.mediation.debugger.ui.d.e("OTHER WATERFALLS") : new com.applovin.impl.mediation.debugger.ui.d.e("");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
                ArrayList arrayList = new ArrayList();
                com.applovin.impl.mediation.debugger.b.a.b bVar = aVar.uH().get(i);
                arrayList.add(c.this.bJ(bVar.getName()));
                if (bVar.uJ() != null) {
                    arrayList.add(c.this.u("AB Test Experiment Name", bVar.uJ()));
                }
                com.applovin.impl.mediation.debugger.b.a.f fVarUK = bVar.uK();
                c cVar = c.this;
                arrayList.add(cVar.u("Device ID Targeting", cVar.bK(fVarUK.uV())));
                c cVar2 = c.this;
                arrayList.add(cVar2.u("Device Type Targeting", cVar2.bL(fVarUK.uW())));
                if (fVarUK.uZ() != null) {
                    c cVar3 = c.this;
                    arrayList.add(cVar3.u("Gender", cVar3.p(fVarUK.uZ())));
                }
                if (fVarUK.uX() != null && fVarUK.uY() != null) {
                    arrayList.add(c.this.u("Age", fVarUK.uX() + "-" + fVarUK.uY()));
                }
                if (fVarUK.getKeywords() != null) {
                    arrayList.add(c.this.q(fVarUK.getKeywords()));
                }
                return arrayList;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return aVar.uH().size();
            }
        };
        this.aqw = dVar;
        dVar.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.l
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public final void onClick(com.applovin.impl.mediation.debugger.ui.d.a aVar2, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                this.a.a(nVar, aVar, aVar2, cVar);
            }
        });
        this.aqw.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle(this.apU.getName());
        ListView listView = (ListView) findViewById(R.id.listView);
        listView.setAdapter((ListAdapter) this.aqw);
        listView.setDividerHeight(0);
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
