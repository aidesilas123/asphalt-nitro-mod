package com.applovin.impl.sdk;

import android.content.Intent;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.p;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.json.o2;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class EventServiceImpl implements AppLovinEventService {
    public static final List<String> ALLOW_PRE_INIT_EVENT_TYPES = Arrays.asList("landing", o2.h.f0, "resumed", "cf_start", "tos_ok", "gdpr_ok");
    private final Map<String, Object> aES;
    private final AtomicBoolean aET = new AtomicBoolean();
    private final n sdk;

    public EventServiceImpl(n nVar) {
        this.sdk = nVar;
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aLE)).booleanValue()) {
            this.aES = JsonUtils.toStringObjectMap((String) nVar.b(com.applovin.impl.sdk.c.d.aRG, JsonUtils.EMPTY_JSON));
        } else {
            this.aES = new HashMap();
            nVar.a(com.applovin.impl.sdk.c.d.aRG, JsonUtils.EMPTY_JSON);
        }
    }

    private String EW() {
        return ((String) this.sdk.a(com.applovin.impl.sdk.c.b.aLy)) + "4.0/pix";
    }

    private String EX() {
        return ((String) this.sdk.a(com.applovin.impl.sdk.c.b.aLz)) + "4.0/pix";
    }

    private void EY() {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLE)).booleanValue()) {
            this.sdk.a(com.applovin.impl.sdk.c.d.aRG, CollectionUtils.toJsonString(this.aES, JsonUtils.EMPTY_JSON));
        }
    }

    private Map<String, String> a(s sVar, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        boolean zContains = this.sdk.b(com.applovin.impl.sdk.c.b.aLC).contains(sVar.getName());
        map2.put("AppLovin-Event", zContains ? sVar.getName() : "postinstall");
        if (!zContains) {
            map2.put("AppLovin-Sub-Event", sVar.getName());
        }
        return map2;
    }

    private Map<String, String> a(s sVar, boolean z) {
        boolean zContains = this.sdk.b(com.applovin.impl.sdk.c.b.aLC).contains(sVar.getName());
        Map<String, Object> mapA = this.sdk.BV() != null ? this.sdk.BV().a(null, z, false) : this.sdk.BS().a(null, z, false);
        mapA.put(NotificationCompat.CATEGORY_EVENT, zContains ? sVar.getName() : "postinstall");
        mapA.put("event_id", sVar.mQ());
        mapA.put("ts", Long.toString(sVar.EV()));
        if (!zContains) {
            mapA.put("sub_event", sVar.getName());
        }
        return com.applovin.impl.sdk.utils.u.s(mapA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(s sVar, Map map, boolean z) {
        Map<String, String> mapA = a(sVar, false);
        Map<String, Object> mapEU = sVar.EU();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQd)).booleanValue() || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPY)).booleanValue()) {
            mapEU.putAll(mapA);
            mapA = null;
        }
        this.sdk.Cu().a(com.applovin.impl.sdk.network.h.ID().dd(EW()).de(EX()).n(mapA).p(mapEU).o(a(sVar, (Map<String, String>) map)).aW(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQn)).booleanValue()).aV(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()).aX(z).b(p.a.gW(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPV)).intValue())).IF());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public Map<String, Object> getSuperProperties() {
        return CollectionUtils.map(this.aES);
    }

    public void maybeTrackAppOpenEvent() {
        if (this.aET.compareAndSet(false, true)) {
            this.sdk.BF().trackEvent("landing");
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void setSuperProperty(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            x.H("AppLovinEventService", "Super property key cannot be null or empty");
            return;
        }
        if (obj == null) {
            this.aES.remove(str);
            EY();
            return;
        }
        List<String> listB = this.sdk.b(com.applovin.impl.sdk.c.b.aLD);
        if (com.applovin.impl.sdk.utils.u.a(obj, listB, this.sdk)) {
            this.aES.put(str, com.applovin.impl.sdk.utils.u.a(obj, this.sdk));
            EY();
            return;
        }
        x.H("AppLovinEventService", "Failed to set super property '" + obj + "' for key '" + str + "' - valid super property types include: " + listB);
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        map2.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, map2);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, String> map) {
        trackEvent(str, map, null);
    }

    public void trackEvent(String str, Map<String, String> map, final Map<String, String> map2) {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinEventService", "Tracking event: \"" + str + "\" with parameters: " + map);
        }
        final s sVar = new s(str, map, this.aES);
        final boolean zContains = ALLOW_PRE_INIT_EVENT_TYPES.contains(str);
        try {
            this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, zContains, "submitTrackEventPostback", new Runnable() { // from class: com.applovin.impl.sdk.f0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(sVar, map2, zContains);
                }
            }), q.b.BACKGROUND);
        } catch (Throwable th) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().c("AppLovinEventService", "Unable to track event: " + sVar, th);
            }
            this.sdk.Cs().d("AppLovinEventService", "trackEvent", th);
        }
    }

    public void trackEventSynchronously(String str) {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("AppLovinEventService", "Tracking event: \"" + str + "\" synchronously");
        }
        s sVar = new s(str, new HashMap(), this.aES);
        Map<String, String> mapA = a(sVar, true);
        Map<String, Object> mapEU = sVar.EU();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQd)).booleanValue() || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPY)).booleanValue()) {
            mapEU.putAll(mapA);
            mapA = null;
        }
        this.sdk.Cu().a(com.applovin.impl.sdk.network.h.ID().dd(EW()).de(EX()).n(mapA).p(mapEU).o(a(sVar, (Map<String, String>) null)).aW(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQn)).booleanValue()).aV(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPL)).booleanValue()).IF());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        Map<String, String> map2 = CollectionUtils.map(map);
        try {
            map2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            map2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Throwable th) {
            x.e("AppLovinEventService", "Unable to track in app purchase - invalid purchase intent", th);
            this.sdk.Cs().d("AppLovinEventService", "trackIAP", th);
        }
        trackEvent("iap", map2);
    }
}
