package com.applovin.impl.mediation.d;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.impl.sdk.x;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.d {
    private final Activity ahM;
    private final List<com.applovin.impl.mediation.b.f> alZ;

    public a(List<com.applovin.impl.mediation.b.f> list, Activity activity, com.applovin.impl.sdk.n nVar) {
        super("TaskAutoInitAdapters", nVar, true);
        this.alZ = list;
        this.ahM = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(com.applovin.impl.mediation.b.f fVar) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Auto-initing adapter: " + fVar);
        }
        this.sdk.Cx().a(fVar, this.ahM);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.alZ.size() > 0) {
            if (x.Fn()) {
                x xVar = this.logger;
                String str = this.tag;
                StringBuilder sb = new StringBuilder();
                sb.append("Auto-initing ");
                sb.append(this.alZ.size());
                sb.append(" adapters");
                sb.append(this.sdk.CE().isEnabled() ? " in test mode" : "");
                sb.append("...");
                xVar.f(str, sb.toString());
            }
            if (TextUtils.isEmpty(this.sdk.getMediationProvider())) {
                this.sdk.setMediationProvider("max");
            } else if (!this.sdk.Br()) {
                x.H("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.sdk.getMediationProvider());
            }
            if (this.ahM == null) {
                x.H("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
            }
            for (final com.applovin.impl.mediation.b.f fVar : this.alZ) {
                this.sdk.BO().h(new Runnable() { // from class: com.applovin.impl.mediation.d.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(fVar);
                    }
                });
            }
        }
    }
}
