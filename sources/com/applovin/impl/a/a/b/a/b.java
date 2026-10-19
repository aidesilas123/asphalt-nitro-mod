package com.applovin.impl.a.a.b.a;

import android.app.Activity;
import android.content.Context;
import com.applovin.impl.sdk.n;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.applovin.impl.mediation.debugger.ui.d.d {
    private List<com.applovin.impl.a.a.a.a> akC;
    private final AtomicBoolean akD;
    private List<com.applovin.impl.mediation.debugger.ui.d.c> akE;
    private n sdk;

    public enum a {
        RECENT_ADS,
        COUNT
    }

    public b(Context context) {
        super(context);
        this.akD = new AtomicBoolean();
        this.akE = new ArrayList();
    }

    private List<com.applovin.impl.mediation.debugger.ui.d.c> n(List<com.applovin.impl.a.a.a.a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<com.applovin.impl.a.a.a.a> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.applovin.impl.a.a.b.a.a.a(it.next(), this.E));
        }
        return arrayList;
    }

    public n getSdk() {
        return this.sdk;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int gg(int i) {
        return this.akE.size();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected com.applovin.impl.mediation.debugger.ui.d.c gh(int i) {
        return new com.applovin.impl.mediation.debugger.ui.d.e("RECENT ADS");
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<com.applovin.impl.mediation.debugger.ui.d.c> gi(int i) {
        return this.akE;
    }

    public void initialize(List<com.applovin.impl.a.a.a.a> list, n nVar) {
        Activity activityCF;
        this.sdk = nVar;
        this.akC = list;
        if (!(this.E instanceof Activity) && (activityCF = nVar.CF()) != null) {
            this.E = activityCF;
        }
        if (list != null && this.akD.compareAndSet(false, true)) {
            this.akE = n(this.akC);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.a.a.b.a.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.notifyDataSetChanged();
            }
        });
    }

    public void tJ() {
        this.akD.compareAndSet(true, false);
    }

    public boolean tK() {
        return this.akE.size() == 0;
    }

    public List<com.applovin.impl.a.a.a.a> tL() {
        return this.akC;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int tM() {
        return a.COUNT.ordinal();
    }

    public String toString() {
        return "CreativeDebuggerListAdapter{isInitialized=" + this.akD.get() + "}";
    }
}
