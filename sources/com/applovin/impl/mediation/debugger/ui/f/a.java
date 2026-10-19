package com.applovin.impl.mediation.debugger.ui.f;

import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.debugger.ui.a {
    private ListView akx;
    private List<c> aqn;
    private List<c> aqo;
    private d aqw;
    private List<com.applovin.impl.mediation.debugger.b.a.c> atC;
    private List<com.applovin.impl.mediation.debugger.b.a.c> atD;
    private n sdk;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.debugger.ui.f.a$a, reason: collision with other inner class name */
    enum EnumC0075a {
        BIDDERS,
        WATERFALL,
        COUNT
    }

    public a() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    private List<c> B(List<com.applovin.impl.mediation.debugger.b.a.c> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (final com.applovin.impl.mediation.debugger.b.a.c cVar : list) {
            arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.a(cVar.uP(), this) { // from class: com.applovin.impl.mediation.debugger.ui.f.a.2
                @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
                public int tO() {
                    if (a.this.sdk.CE().xk() == null || !a.this.sdk.CE().xk().equals(cVar.uO())) {
                        return 0;
                    }
                    return R.drawable.applovin_ic_check_mark_borderless;
                }

                @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
                public int tP() {
                    if (a.this.sdk.CE().xk() == null || !a.this.sdk.CE().xk().equals(cVar.uO())) {
                        return super.tP();
                    }
                    return -16776961;
                }

                @Override // com.applovin.impl.mediation.debugger.ui.d.c
                public SpannedString wU() {
                    return StringUtils.createSpannedString(cVar.getDisplayName(), isEnabled() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
                }
            });
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(n nVar, com.applovin.impl.mediation.debugger.ui.d.a aVar, c cVar) {
        List<String> listUO = b(aVar).uO();
        if (listUO.equals(nVar.CE().xk())) {
            nVar.CE().C(null);
        } else {
            nVar.CE().C(listUO);
        }
        this.aqw.notifyDataSetChanged();
    }

    private com.applovin.impl.mediation.debugger.b.a.c b(com.applovin.impl.mediation.debugger.ui.d.a aVar) {
        return aVar.wP() == EnumC0075a.BIDDERS.ordinal() ? this.atC.get(aVar.wQ()) : this.atD.get(aVar.wQ());
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.sdk;
    }

    public void initialize(List<com.applovin.impl.mediation.debugger.b.a.c> list, List<com.applovin.impl.mediation.debugger.b.a.c> list2, final n nVar) {
        this.sdk = nVar;
        this.atC = list;
        this.atD = list2;
        this.aqn = B(list);
        this.aqo = B(list2);
        d dVar = new d(this) { // from class: com.applovin.impl.mediation.debugger.ui.f.a.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                return i == EnumC0075a.BIDDERS.ordinal() ? a.this.aqn.size() : a.this.aqo.size();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected c gh(int i) {
                return i == EnumC0075a.BIDDERS.ordinal() ? new e("BIDDERS") : new e("WATERFALL");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<c> gi(int i) {
                return i == EnumC0075a.BIDDERS.ordinal() ? a.this.aqn : a.this.aqo;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return EnumC0075a.COUNT.ordinal();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected c xa() {
                return new c.a(c.b.SECTION_CENTERED).bO("Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").wX();
            }
        };
        this.aqw = dVar;
        dVar.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.f.b
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public final void onClick(com.applovin.impl.mediation.debugger.ui.d.a aVar, c cVar) {
                this.a.a(nVar, aVar, cVar);
            }
        });
        this.aqw.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Live Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.akx = listView;
        listView.setAdapter((ListAdapter) this.aqw);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.aqn = B(this.atC);
        this.aqo = B(this.atD);
        this.aqw.wZ();
    }
}
