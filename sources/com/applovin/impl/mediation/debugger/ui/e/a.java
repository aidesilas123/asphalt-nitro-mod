package com.applovin.impl.mediation.debugger.ui.e;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.debugger.ui.a {
    private com.applovin.impl.mediation.debugger.ui.d.d aqw;
    private n sdk;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.e.a$a, reason: collision with other inner class name */
    private enum EnumC0072a {
        MISSING_TC_NETWORKS,
        MISSING_AC_NETWORKS,
        LISTED_TC_NETWORKS,
        LISTED_AC_NETWORKS,
        OTHER_NETWORKS
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.applovin.impl.mediation.debugger.ui.d.c b(String str, boolean z) {
        return com.applovin.impl.mediation.debugger.ui.d.c.wW().bO(str).gl(z ? SupportMenu.CATEGORY_MASK : ViewCompat.MEASURED_STATE_MASK).wX();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.sdk;
    }

    public void initialize(final Set<String> set, final Set<String> set2, final Set<String> set3, final Set<String> set4, final Set<String> set5, n nVar) {
        this.sdk = nVar;
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.e.a.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                return i == EnumC0072a.MISSING_TC_NETWORKS.ordinal() ? set.size() : i == EnumC0072a.MISSING_AC_NETWORKS.ordinal() ? set2.size() : i == EnumC0072a.LISTED_TC_NETWORKS.ordinal() ? set3.size() : i == EnumC0072a.LISTED_AC_NETWORKS.ordinal() ? set4.size() : set5.size();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
                return i == EnumC0072a.MISSING_TC_NETWORKS.ordinal() ? new e("MISSING TCF VENDORS (TC STRING)") : i == EnumC0072a.MISSING_AC_NETWORKS.ordinal() ? new e("MISSING ATP NETWORKS (AC STRING)") : i == EnumC0072a.LISTED_TC_NETWORKS.ordinal() ? new e("LISTED TCF VENDORS (TC STRING)") : i == EnumC0072a.LISTED_AC_NETWORKS.ordinal() ? new e("LISTED ATP NETWORKS (AC STRING)") : new e("NON-CONFIGURABLE NETWORKS");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
                Set set6;
                boolean z = true;
                if (i == EnumC0072a.MISSING_TC_NETWORKS.ordinal()) {
                    set6 = set;
                } else if (i == EnumC0072a.MISSING_AC_NETWORKS.ordinal()) {
                    set6 = set2;
                } else {
                    set6 = i == EnumC0072a.LISTED_TC_NETWORKS.ordinal() ? set3 : i == EnumC0072a.LISTED_AC_NETWORKS.ordinal() ? set4 : set5;
                    z = false;
                }
                ArrayList arrayList = new ArrayList(set6.size());
                Iterator it = set6.iterator();
                while (it.hasNext()) {
                    arrayList.add(a.this.b((String) it.next(), z));
                }
                return arrayList;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return EnumC0072a.values().length;
            }
        };
        this.aqw = dVar;
        dVar.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle("Configured CMP Networks");
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) this.aqw);
    }
}
