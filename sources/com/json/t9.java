package com.json;

import android.content.Context;
import android.text.TextUtils;
import com.iab.omid.library.ironsrc.Omid;
import com.iab.omid.library.ironsrc.adsession.AdEvents;
import com.iab.omid.library.ironsrc.adsession.AdSession;
import com.iab.omid.library.ironsrc.adsession.AdSessionConfiguration;
import com.iab.omid.library.ironsrc.adsession.AdSessionContext;
import com.iab.omid.library.ironsrc.adsession.CreativeType;
import com.iab.omid.library.ironsrc.adsession.ImpressionType;
import com.iab.omid.library.ironsrc.adsession.Owner;
import com.iab.omid.library.ironsrc.adsession.Partner;
import com.json.sdk.utils.SDKUtils;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class t9 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f6639d = "Ironsrc";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f6640e = "7";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f6641f = Omid.getVersion();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6642g = "omidVersion";
    public static final String h = "omidPartnerName";
    public static final String i = "omidPartnerVersion";
    public static final String j = "omidActiveAdSessions";
    private final Partner a = Partner.createPartner(f6639d, f6640e);
    private boolean c = false;
    private final HashMap<String, AdSession> b = new HashMap<>();

    static class a {
        public static final String o = "adViewId";
        public boolean a;
        public Owner b;
        public Owner c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f6643d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ImpressionType f6644e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public CreativeType f6645f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f6646g;
        public Owner h;

        public static a a(JSONObject jSONObject) throws IllegalArgumentException {
            a aVar = new a();
            aVar.a = jSONObject.optBoolean("isolateVerificationScripts", false);
            String strOptString = jSONObject.optString("impressionOwner", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new IllegalArgumentException("Missing OMID impressionOwner");
            }
            try {
                aVar.b = Owner.valueOf(strOptString.toUpperCase());
                String strOptString2 = jSONObject.optString("videoEventsOwner", "");
                if (TextUtils.isEmpty(strOptString)) {
                    throw new IllegalArgumentException("Missing OMID videoEventsOwner");
                }
                try {
                    aVar.c = Owner.valueOf(strOptString2.toUpperCase());
                    aVar.f6643d = jSONObject.optString("customReferenceData", "");
                    aVar.f6645f = b(jSONObject);
                    aVar.f6644e = c(jSONObject);
                    aVar.f6646g = e(jSONObject);
                    aVar.h = d(jSONObject);
                    return aVar;
                } catch (IllegalArgumentException unused) {
                    throw new IllegalArgumentException("Invalid OMID videoEventsOwner " + strOptString2);
                }
            } catch (IllegalArgumentException unused2) {
                throw new IllegalArgumentException("Invalid OMID impressionOwner " + strOptString);
            }
        }

        private static CreativeType b(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("creativeType", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new IllegalArgumentException("Missing OMID creativeType" + strOptString);
            }
            for (CreativeType creativeType : CreativeType.values()) {
                if (strOptString.equalsIgnoreCase(creativeType.toString())) {
                    return creativeType;
                }
            }
            throw new IllegalArgumentException("Missing OMID creativeType" + strOptString);
        }

        private static ImpressionType c(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("impressionType", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new IllegalArgumentException("Missing OMID creativeType" + strOptString);
            }
            for (ImpressionType impressionType : ImpressionType.values()) {
                if (strOptString.equalsIgnoreCase(impressionType.toString())) {
                    return impressionType;
                }
            }
            throw new IllegalArgumentException("Missing OMID creativeType" + strOptString);
        }

        private static Owner d(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("videoEventsOwner", "");
            Owner owner = Owner.NONE;
            try {
                return Owner.valueOf(strOptString.toUpperCase());
            } catch (IllegalArgumentException unused) {
                return owner;
            }
        }

        private static String e(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("adViewId", "");
            if (!TextUtils.isEmpty(strOptString)) {
                return strOptString;
            }
            throw new IllegalArgumentException("Missing adview id in OMID params" + strOptString);
        }
    }

    private AdSession a(a aVar, y6 y6Var) throws IllegalArgumentException {
        AdSession adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(aVar.f6645f, aVar.f6644e, aVar.b, aVar.c, aVar.a), AdSessionContext.createHtmlAdSessionContext(this.a, y6Var.getPresentingView(), null, aVar.f6643d));
        adSessionCreateAdSession.registerAdView(y6Var.getPresentingView());
        return adSessionCreateAdSession;
    }

    private void e(JSONObject jSONObject) throws IllegalStateException {
        if (!this.c) {
            throw new IllegalStateException("OMID has not been activated");
        }
        if (jSONObject == null) {
            throw new IllegalStateException("OMID Session has not started");
        }
    }

    public hb a() {
        hb hbVar = new hb();
        hbVar.b("omidVersion", SDKUtils.encodeString(f6641f));
        hbVar.b(h, SDKUtils.encodeString(f6639d));
        hbVar.b("omidPartnerVersion", SDKUtils.encodeString(f6640e));
        hbVar.b(j, SDKUtils.encodeString(Arrays.toString(this.b.keySet().toArray())));
        return hbVar;
    }

    public void a(Context context) throws IllegalArgumentException {
        if (this.c) {
            return;
        }
        Omid.activate(context);
        this.c = true;
    }

    public void a(a aVar) throws IllegalStateException, IllegalArgumentException {
        if (!this.c) {
            throw new IllegalStateException("OMID has not been activated");
        }
        if (TextUtils.isEmpty(aVar.f6646g)) {
            throw new IllegalStateException("Missing adview id in OMID params");
        }
        String str = aVar.f6646g;
        if (this.b.containsKey(str)) {
            throw new IllegalStateException("OMID Session has already started");
        }
        y6 y6VarA = g6.a().a(str);
        if (y6VarA == null) {
            throw new IllegalStateException("No adview found with the provided adViewId");
        }
        AdSession adSessionA = a(aVar, y6VarA);
        adSessionA.start();
        this.b.put(str, adSessionA);
    }

    public void b(JSONObject jSONObject) throws IllegalStateException {
        e(jSONObject);
        String strOptString = jSONObject.optString("adViewId");
        AdSession adSession = this.b.get(strOptString);
        if (adSession == null) {
            throw new IllegalStateException("OMID Session has not started");
        }
        adSession.finish();
        this.b.remove(strOptString);
    }

    public void c(JSONObject jSONObject) throws IllegalStateException, IllegalArgumentException {
        e(jSONObject);
        AdSession adSession = this.b.get(jSONObject.optString("adViewId"));
        if (adSession == null) {
            throw new IllegalStateException("OMID Session has not started");
        }
        AdEvents adEventsCreateAdEvents = AdEvents.createAdEvents(adSession);
        if (jSONObject.optBoolean("signalLoaded")) {
            adEventsCreateAdEvents.loaded();
        }
        adEventsCreateAdEvents.impressionOccurred();
    }

    public void d(JSONObject jSONObject) throws IllegalStateException, IllegalArgumentException {
        a(a.a(jSONObject));
    }
}
