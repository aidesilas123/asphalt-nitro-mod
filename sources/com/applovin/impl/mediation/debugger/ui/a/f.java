package com.applovin.impl.mediation.debugger.ui.a;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.applovin.impl.mediation.debugger.ui.a {
    private String aqI;
    private com.applovin.impl.mediation.debugger.ui.d.d aqw;
    private com.applovin.impl.sdk.n sdk;

    private List<com.applovin.impl.mediation.debugger.ui.d.c> s(List<String> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL).bO(it.next().replace("1:", "+").replace("0:", "-")).wX());
        }
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected com.applovin.impl.sdk.n getSdk() {
        return this.sdk;
    }

    public void initialize(String str, List<String> list, com.applovin.impl.sdk.n nVar) {
        this.aqI = str;
        this.sdk = nVar;
        final List<com.applovin.impl.mediation.debugger.ui.d.c> listS = s(list);
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.a.f.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                return listS.size();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
                return new com.applovin.impl.mediation.debugger.ui.d.e("KEYWORDS");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
                return listS;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return 1;
            }
        };
        this.aqw = dVar;
        dVar.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle(this.aqI);
        ListView listView = (ListView) findViewById(R.id.listView);
        listView.setAdapter((ListAdapter) this.aqw);
        listView.setDividerHeight(0);
    }
}
