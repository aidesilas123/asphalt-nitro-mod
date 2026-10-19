package com.applovin.impl.sdk.a;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.facebook.internal.AnalyticsEvents;
import com.iab.omid.library.applovin.Omid;
import com.iab.omid.library.applovin.ScriptInjector;
import com.iab.omid.library.applovin.adsession.Partner;
import com.json.o2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private final Context E = com.applovin.impl.sdk.n.getApplicationContext();
    private String aIE;
    private final com.applovin.impl.sdk.n sdk;

    public f(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
    }

    private void IU() {
        this.sdk.BO().a(new ab(this.sdk, "OpenMeasurementService", new Runnable() { // from class: com.applovin.impl.sdk.a.p
            @Override // java.lang.Runnable
            public final void run() {
                this.a.IV();
            }
        }), q.b.BACKGROUND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void IV() {
        if (this.aIE != null) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.E.getResources().openRawResource(R.raw.omsdk_v_1_0)));
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            this.aIE = sb.toString();
                            bufferedReader.close();
                            return;
                        }
                        sb.append(line);
                    }
                } catch (Throwable th) {
                    try {
                        Log.e("OpenMeasurementService", "Failed to load JavaScript Open Measurement SDK", th);
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            Log.e("OpenMeasurementService", "Failed to close the BufferReader for reading JavaScript Open Measurement SDK", e2);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e3) {
                Log.e("OpenMeasurementService", "Failed to close the BufferReader for reading JavaScript Open Measurement SDK", e3);
            }
        } catch (Throwable th3) {
            this.sdk.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.sdk.BN().c("OpenMeasurementService", "Failed to retrieve resource omsdk_v_1_0.js", th3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void IW() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Omid.activate(this.E);
        this.sdk.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            com.applovin.impl.sdk.x xVarBN = this.sdk.BN();
            StringBuilder sb = new StringBuilder();
            sb.append("Init ");
            sb.append(isInitialized() ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : o2.h.t);
            sb.append(" and took ");
            sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
            sb.append("ms");
            xVarBN.f("OpenMeasurementService", sb.toString());
        }
        IU();
    }

    @Nullable
    public String IT() {
        return this.aIE;
    }

    public String dl(String str) {
        try {
            return ScriptInjector.injectScriptContentIntoHtml(this.aIE, str);
        } catch (Throwable th) {
            this.sdk.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.sdk.BN().c("OpenMeasurementService", "Failed to inject JavaScript SDK into HTML", th);
            }
            return str;
        }
    }

    public Partner getPartner() {
        return Partner.createPartner((String) this.sdk.a(com.applovin.impl.sdk.c.b.aKR), AppLovinSdk.VERSION);
    }

    public String getSdkVersion() {
        return Omid.getVersion();
    }

    public boolean isInitialized() {
        return Omid.isActive();
    }

    public void uB() {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aKQ)).booleanValue()) {
            this.sdk.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.sdk.BN().f("OpenMeasurementService", "Initializing Open Measurement SDK v" + getSdkVersion() + "...");
            }
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.a.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.IW();
                }
            });
        }
    }
}
