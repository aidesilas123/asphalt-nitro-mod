package com.applovin.impl.mediation.debugger.ui.testmode;

import android.os.Bundle;
import android.text.SpannedString;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.applovin.impl.mediation.debugger.ui.a {
    private ListView akx;
    private com.applovin.impl.mediation.debugger.ui.d.d aqw;
    private List<com.applovin.impl.mediation.debugger.b.c.b> are;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> auk;
    private n sdk;

    public b() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> B(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (final com.applovin.impl.mediation.debugger.b.c.b bVar : list) {
            arrayList.add(new com.applovin.impl.mediation.debugger.ui.b.a.a(bVar, this) { // from class: com.applovin.impl.mediation.debugger.ui.testmode.b.3
                @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
                public int tO() {
                    if (Collections.singletonList(bVar.getName()).equals(b.this.sdk.CE().xk())) {
                        return R.drawable.applovin_ic_check_mark_borderless;
                    }
                    return 0;
                }

                @Override // com.applovin.impl.mediation.debugger.ui.b.a.a, com.applovin.impl.mediation.debugger.ui.d.c
                public int tP() {
                    if (Collections.singletonList(bVar.getName()).equals(b.this.sdk.CE().xk())) {
                        return -16776961;
                    }
                    return super.tP();
                }

                @Override // com.applovin.impl.mediation.debugger.ui.d.c
                public SpannedString wU() {
                    return StringUtils.createSpannedString(bVar.getDisplayName(), isEnabled() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
                }
            });
        }
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        return this.sdk;
    }

    public void initialize(final List<com.applovin.impl.mediation.debugger.b.c.b> list, final n nVar) {
        this.sdk = nVar;
        this.are = list;
        this.auk = B(list);
        com.applovin.impl.mediation.debugger.ui.d.d dVar = new com.applovin.impl.mediation.debugger.ui.d.d(this) { // from class: com.applovin.impl.mediation.debugger.ui.testmode.b.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int gg(int i) {
                return list.size();
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
                return new com.applovin.impl.mediation.debugger.ui.d.e("TEST MODE NETWORKS");
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
                return b.this.auk;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected int tM() {
                return 1;
            }

            @Override // com.applovin.impl.mediation.debugger.ui.d.d
            protected com.applovin.impl.mediation.debugger.ui.d.c xa() {
                return new c.a(c.b.SECTION_CENTERED).bO("Select a network to load test ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").wX();
            }
        };
        this.aqw = dVar;
        dVar.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.b.2
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void onClick(com.applovin.impl.mediation.debugger.ui.d.a aVar, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                List<String> listSingletonList = Collections.singletonList(((com.applovin.impl.mediation.debugger.b.c.b) list.get(aVar.wQ())).getName());
                if (listSingletonList.equals(nVar.CE().xk())) {
                    nVar.CE().C(null);
                } else {
                    nVar.CE().C(listSingletonList);
                }
                b.this.aqw.notifyDataSetChanged();
            }
        });
        this.aqw.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Test Mode Network");
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.akx = listView;
        listView.setAdapter((ListAdapter) this.aqw);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.auk = B(this.are);
        this.aqw.notifyDataSetChanged();
    }
}
