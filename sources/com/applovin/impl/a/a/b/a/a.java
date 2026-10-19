package com.applovin.impl.a.a.b.a;

import android.app.Activity;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.a.a.b.a.b;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.sdk.utils.b;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends Activity {
    private b akj;
    private FrameLayout akw;
    private ListView akx;

    private void gf(int i) {
        TextView textView = new TextView(this);
        textView.setGravity(17);
        textView.setTextSize(18.0f);
        textView.setText(i);
        this.akw.addView(textView, new FrameLayout.LayoutParams(-1, -1, 17));
        this.akw.bringChildToFront(textView);
    }

    public void a(b bVar, final com.applovin.impl.sdk.a aVar) {
        this.akj = bVar;
        bVar.a(new d.a() { // from class: com.applovin.impl.a.a.b.a.a.1
            @Override // com.applovin.impl.mediation.debugger.ui.d.d.a
            public void onClick(final com.applovin.impl.mediation.debugger.ui.d.a aVar2, com.applovin.impl.mediation.debugger.ui.d.c cVar) {
                if (aVar2.wP() != b.a.RECENT_ADS.ordinal()) {
                    return;
                }
                com.applovin.impl.sdk.utils.b.a(a.this, MaxCreativeDebuggerDisplayedAdActivity.class, aVar, new b.a<MaxCreativeDebuggerDisplayedAdActivity>() { // from class: com.applovin.impl.a.a.b.a.a.1.1
                    @Override // com.applovin.impl.sdk.utils.b.a
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void onActivityCreated(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
                        maxCreativeDebuggerDisplayedAdActivity.a(a.this.akj.tL().get(aVar2.wQ()), a.this.akj.getSdk());
                    }
                });
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Creative Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.akw = (FrameLayout) findViewById(android.R.id.content);
        this.akx = (ListView) findViewById(R.id.listView);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        b bVar = this.akj;
        if (bVar != null) {
            bVar.a(null);
            this.akj.tJ();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        b bVar = this.akj;
        if (bVar == null) {
            finish();
            return;
        }
        this.akx.setAdapter((ListAdapter) bVar);
        b bVar2 = this.akj;
        if (bVar2 != null && !bVar2.getSdk().Co().isCreativeDebuggerEnabled()) {
            gf(R.string.applovin_creative_debugger_disabled_text);
            return;
        }
        b bVar3 = this.akj;
        if (bVar3 == null || !bVar3.tK()) {
            return;
        }
        gf(R.string.applovin_creative_debugger_no_ads_text);
    }
}
