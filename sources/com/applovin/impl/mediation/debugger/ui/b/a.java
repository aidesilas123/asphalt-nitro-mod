package com.applovin.impl.mediation.debugger.ui.b;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.impl.mediation.debugger.ui.b.b;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.privacy.a.d;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.b;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.utils.u;
import com.applovin.mediation.MaxDebuggerAdUnitsListActivity;
import com.applovin.mediation.MaxDebuggerDetailActivity;
import com.applovin.mediation.MaxDebuggerTcfConsentStatusesListActivity;
import com.applovin.mediation.MaxDebuggerTcfInfoListActivity;
import com.applovin.mediation.MaxDebuggerTestLiveNetworkActivity;
import com.applovin.mediation.MaxDebuggerTestModeNetworkActivity;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.mediation.debugger.ui.a {
    private FrameLayout akw;
    private ListView akx;
    private b aoa;
    private DataSetObserver aqL;
    private com.applovin.impl.adview.a aqM;

    /* JADX INFO: Access modifiers changed from: private */
    public void w(final Context context) {
        if (!StringUtils.isValidString(this.aoa.vQ()) || this.aoa.wh()) {
            return;
        }
        this.aoa.az(true);
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.x(context);
            }
        });
    }

    private void we() {
        String strWo = this.aoa.wo();
        if (TextUtils.isEmpty(strWo)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", strWo);
        intent.putExtra("android.intent.extra.TITLE", "Mediation Debugger logs");
        intent.putExtra("android.intent.extra.SUBJECT", "MAX Mediation Debugger logs");
        startActivity(Intent.createChooser(intent, null));
    }

    private void wf() {
        wg();
        com.applovin.impl.adview.a aVar = new com.applovin.impl.adview.a(this, 50, R.attr.progressBarStyleLarge);
        this.aqM = aVar;
        aVar.setColor(-3355444);
        this.akw.addView(this.aqM, new FrameLayout.LayoutParams(-1, -1, 17));
        this.akw.bringChildToFront(this.aqM);
        this.aqM.qN();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wg() {
        com.applovin.impl.adview.a aVar = this.aqM;
        if (aVar != null) {
            aVar.qO();
            this.akw.removeView(this.aqM);
            this.aqM = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(Context context) {
        u.a(this.aoa.wk(), this.aoa.vQ(), context);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a
    protected n getSdk() {
        b bVar = this.aoa;
        if (bVar != null) {
            return bVar.getSdk();
        }
        return null;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Mediation Debugger");
        setContentView(com.applovin.sdk.R.layout.mediation_debugger_list_view);
        this.akw = (FrameLayout) findViewById(R.id.content);
        ListView listView = (ListView) findViewById(com.applovin.sdk.R.id.listView);
        this.akx = listView;
        listView.setAdapter((ListAdapter) this.aoa);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.applovin.sdk.R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        b bVar = this.aoa;
        if (bVar != null) {
            bVar.unregisterDataSetObserver(this.aqL);
            this.aoa.a(null);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (com.applovin.sdk.R.id.action_share != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        we();
        return true;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        b bVar = this.aoa;
        if (bVar == null || bVar.isInitialized()) {
            return;
        }
        wf();
    }

    public void setListAdapter(b bVar, final com.applovin.impl.sdk.a aVar) {
        DataSetObserver dataSetObserver;
        b bVar2 = this.aoa;
        if (bVar2 != null && (dataSetObserver = this.aqL) != null) {
            bVar2.unregisterDataSetObserver(dataSetObserver);
        }
        this.aoa = bVar;
        this.aqL = new DataSetObserver() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                a.this.wg();
                a aVar2 = a.this;
                aVar2.w(aVar2);
            }
        };
        w(this);
        this.aoa.registerDataSetObserver(this.aqL);
        this.aoa.a(new d.a() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void onClick(com.applovin.impl.mediation.debugger.ui.d.a aVar2, final com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                int iWP = aVar2.wP();
                if (iWP == b.e.APP_INFO.ordinal()) {
                    u.a(cVar.wk(), cVar.vQ(), a.this);
                    return;
                }
                if (iWP == b.e.MAX.ordinal()) {
                    n sdk = a.this.aoa.getSdk();
                    if (sdk.Cl().isEnabled()) {
                        int iWQ = aVar2.wQ();
                        if (sdk.Cl().zX() == d.a.TERMS) {
                            iWQ++;
                        }
                        if (iWQ == b.c.PRIVACY_POLICY_URL.ordinal()) {
                            if (sdk.Cl().getPrivacyPolicyUri() != null) {
                                s.a(sdk.Cl().getPrivacyPolicyUri(), n.getApplicationContext(), sdk);
                                return;
                            } else {
                                u.a("Missing Privacy Policy URL", "You cannot use the AppLovin SDK's consent flow without defining a Privacy Policy URL", a.this);
                                return;
                            }
                        }
                        if (iWQ == b.c.TERMS_OF_SERVICE_URL.ordinal()) {
                            if (sdk.Cl().getTermsOfServiceUri() != null) {
                                s.a(sdk.Cl().getTermsOfServiceUri(), n.getApplicationContext(), sdk);
                                return;
                            }
                            return;
                        }
                    }
                    u.a(cVar.wk(), cVar.vQ(), a.this);
                    return;
                }
                if (iWP == b.e.PRIVACY.ordinal()) {
                    if (aVar2.wQ() != b.d.CMP.ordinal()) {
                        if (aVar2.wQ() == b.d.NETWORK_CONSENT_STATUSES.ordinal()) {
                            com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerTcfConsentStatusesListActivity.class, aVar, new b.a<MaxDebuggerTcfConsentStatusesListActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.2
                                @Override // com.applovin.impl.sdk.utils.b.a
                                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                                public void onActivityCreated(MaxDebuggerTcfConsentStatusesListActivity maxDebuggerTcfConsentStatusesListActivity) {
                                    maxDebuggerTcfConsentStatusesListActivity.initialize(a.this.aoa.getSdk());
                                }
                            });
                            return;
                        }
                        return;
                    } else if (StringUtils.isValidString(a.this.aoa.getSdk().Cm().Am())) {
                        com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerTcfInfoListActivity.class, aVar, new b.a<MaxDebuggerTcfInfoListActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.1
                            @Override // com.applovin.impl.sdk.utils.b.a
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public void onActivityCreated(MaxDebuggerTcfInfoListActivity maxDebuggerTcfInfoListActivity) {
                                maxDebuggerTcfInfoListActivity.initialize(a.this.aoa.getSdk());
                            }
                        });
                        return;
                    } else {
                        u.a("", cVar.vQ(), a.this);
                        return;
                    }
                }
                if (iWP != b.e.ADS.ordinal()) {
                    if ((iWP == b.e.INCOMPLETE_NETWORKS.ordinal() || iWP == b.e.COMPLETED_NETWORKS.ordinal()) && (cVar instanceof com.applovin.impl.mediation.debugger.ui.b.a.a)) {
                        com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerDetailActivity.class, aVar, new b.a<MaxDebuggerDetailActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.7
                            @Override // com.applovin.impl.sdk.utils.b.a
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public void onActivityCreated(MaxDebuggerDetailActivity maxDebuggerDetailActivity) {
                                maxDebuggerDetailActivity.initialize(((com.applovin.impl.mediation.debugger.ui.b.a.a) cVar).wA());
                            }
                        });
                        return;
                    }
                    return;
                }
                if (aVar2.wQ() == b.a.AD_UNITS.ordinal()) {
                    if (a.this.aoa.wi().size() > 0) {
                        com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerAdUnitsListActivity.class, aVar, new b.a<MaxDebuggerAdUnitsListActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.3
                            @Override // com.applovin.impl.sdk.utils.b.a
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public void onActivityCreated(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                                maxDebuggerAdUnitsListActivity.initialize(a.this.aoa.wi(), false, a.this.aoa.getSdk());
                            }
                        });
                        return;
                    } else {
                        u.a("No live ad units", "Please setup or enable your MAX ad units on https://applovin.com.", a.this);
                        return;
                    }
                }
                if (aVar2.wQ() == b.a.SELECT_LIVE_NETWORKS.ordinal()) {
                    if (a.this.aoa.wl().size() <= 0 && a.this.aoa.wm().size() <= 0) {
                        u.a("Complete Integrations", "Please complete integrations in order to access this.", a.this);
                        return;
                    } else if (a.this.aoa.getSdk().CE().isEnabled()) {
                        u.a("Restart Required", cVar.vQ(), a.this);
                        return;
                    } else {
                        com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerTestLiveNetworkActivity.class, aVar, new b.a<MaxDebuggerTestLiveNetworkActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.4
                            @Override // com.applovin.impl.sdk.utils.b.a
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public void onActivityCreated(MaxDebuggerTestLiveNetworkActivity maxDebuggerTestLiveNetworkActivity) {
                                maxDebuggerTestLiveNetworkActivity.initialize(a.this.aoa.wl(), a.this.aoa.wm(), a.this.aoa.getSdk());
                            }
                        });
                        return;
                    }
                }
                if (aVar2.wQ() != b.a.SELECT_TEST_MODE_NETWORKS.ordinal()) {
                    if (aVar2.wQ() == b.a.INITIALIZATION_AD_UNITS.ordinal()) {
                        com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerAdUnitsListActivity.class, aVar, new b.a<MaxDebuggerAdUnitsListActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.6
                            @Override // com.applovin.impl.sdk.utils.b.a
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public void onActivityCreated(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                                maxDebuggerAdUnitsListActivity.initialize(a.this.aoa.wj(), true, a.this.aoa.getSdk());
                            }
                        });
                    }
                } else if (!a.this.aoa.getSdk().CE().isEnabled()) {
                    a.this.getSdk().CE().xl();
                    u.a("Restart Required", cVar.vQ(), a.this);
                } else if (a.this.aoa.wn().size() > 0) {
                    com.applovin.impl.sdk.utils.b.a(a.this, MaxDebuggerTestModeNetworkActivity.class, aVar, new b.a<MaxDebuggerTestModeNetworkActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.5
                        @Override // com.applovin.impl.sdk.utils.b.a
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public void onActivityCreated(MaxDebuggerTestModeNetworkActivity maxDebuggerTestModeNetworkActivity) {
                            maxDebuggerTestModeNetworkActivity.initialize(a.this.aoa.wn(), a.this.aoa.getSdk());
                        }
                    });
                } else {
                    u.a("Complete Integrations", "Please complete integrations in order to access this.", a.this);
                }
            }
        });
    }
}
