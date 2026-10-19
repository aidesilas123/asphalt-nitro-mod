package com.applovin.impl.mediation.debugger.ui.a;

import android.app.Activity;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.b;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxDebuggerAdUnitWaterfallsListActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.applovin.impl.mediation.debugger.ui.a {
    private ListView akx;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> aqC;
    private boolean aqD;
    private com.applovin.impl.mediation.debugger.ui.d.d aqw;
    private com.applovin.impl.sdk.n sdk;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, final com.applovin.impl.sdk.n nVar, com.applovin.impl.mediation.debugger.ui.d.a aVar, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
        final com.applovin.impl.mediation.debugger.b.a.a aVar2 = (com.applovin.impl.mediation.debugger.b.a.a) list.get(aVar.wQ());
        if (aVar2.uH().size() == 1) {
            com.applovin.impl.sdk.utils.b.a(this, MaxDebuggerAdUnitDetailActivity.class, nVar.BM(), new b.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.o
                @Override // com.applovin.impl.sdk.utils.b.a
                public final void onActivityCreated(Activity activity) {
                    ((MaxDebuggerAdUnitDetailActivity) activity).initialize(aVar2, null, null, nVar);
                }
            });
        } else {
            com.applovin.impl.sdk.utils.b.a(this, MaxDebuggerAdUnitWaterfallsListActivity.class, nVar.BM(), new b.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.n
                @Override // com.applovin.impl.sdk.utils.b.a
                public final void onActivityCreated(Activity activity) {
                    ((MaxDebuggerAdUnitWaterfallsListActivity) activity).initialize(aVar2, nVar);
                }
            });
        }
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> r(List<com.applovin.impl.mediation.debugger.b.a.a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (com.applovin.impl.mediation.debugger.b.a.a aVar : list) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ID\t\t\t\t\t\t", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(aVar.mQ(), ViewCompat.MEASURED_STATE_MASK));
            spannableStringBuilder.append((CharSequence) new SpannedString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("FORMAT  ", -7829368));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(aVar.tG(), ViewCompat.MEASURED_STATE_MASK));
            arrayList.add(com.applovin.impl.mediation.debugger.ui.d.c.a(c.b.DETAIL).a(StringUtils.createSpannedString(aVar.getName(), ViewCompat.MEASURED_STATE_MASK, 18, 1)).b(new SpannedString(spannableStringBuilder)).y(this).aF(true).wX());
        }
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected com.applovin.impl.sdk.n getSdk() {
        return this.sdk;
    }

    public void initialize(final List<com.applovin.impl.mediation.debugger.b.a.a> list, boolean z, final com.applovin.impl.sdk.n nVar) {
        this.aqD = z;
        this.sdk = nVar;
        this.aqC = r(list);
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.a.d.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                return list.size();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
                return new com.applovin.impl.mediation.debugger.ui.d.e("");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
                return d.this.aqC;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return 1;
            }
        };
        this.aqw = dVar;
        dVar.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.a.m
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public final void onClick(com.applovin.impl.mediation.debugger.ui.d.a aVar, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                this.a.a(list, nVar, aVar, cVar);
            }
        });
        this.aqw.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        StringBuilder sb = new StringBuilder();
        sb.append(this.aqD ? "Selective Init " : "");
        sb.append("Ad Units");
        setTitle(sb.toString());
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.akx = listView;
        listView.setAdapter((ListAdapter) this.aqw);
    }
}
