package com.applovin.impl.sdk;

import android.adservices.AdServicesState;
import android.adservices.measurement.MeasurementManager;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.text.TextUtils;
import android.view.InputEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class aa {
    private final TopicsManager aFA;
    private final Executor aFw;
    private final MeasurementManager aFx;
    private final AtomicReference<JSONArray> aFy = new AtomicReference<>(new JSONArray());
    private final a aFz = new a();
    private final n sdk;

    private class a implements OutcomeReceiver<GetTopicsResponse, Exception> {
        private a() {
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(@NonNull GetTopicsResponse getTopicsResponse) {
            List<Topic> topics = getTopicsResponse.getTopics();
            int size = topics.size();
            aa.this.sdk.BN();
            if (x.Fn()) {
                aa.this.sdk.BN().g("PrivacySandboxService", size + " topic(s) received");
            }
            JSONArray jSONArray = new JSONArray();
            for (Topic topic : topics) {
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putInt(jSONObject, "id", topic.getTopicId());
                JsonUtils.putLong(jSONObject, "model", topic.getModelVersion());
                JsonUtils.putLong(jSONObject, "taxonomy", topic.getTaxonomyVersion());
                jSONArray.put(jSONObject);
            }
            aa.this.aFy.set(jSONArray);
            aa.this.g(((Boolean) aa.this.sdk.a(com.applovin.impl.sdk.c.b.aRb)).booleanValue(), ((Long) aa.this.sdk.a(com.applovin.impl.sdk.c.b.aQZ)).longValue());
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public void onError(@NonNull Exception exc) {
            String str;
            Long l = (Long) aa.this.sdk.a(com.applovin.impl.sdk.c.b.aRa);
            boolean z = l.longValue() == -1;
            aa.this.sdk.BN();
            if (x.Fn()) {
                x xVarBN = aa.this.sdk.BN();
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to retrieve topics");
                if (z) {
                    str = "";
                } else {
                    str = ", retrying in " + l + " ms";
                }
                sb.append(str);
                xVarBN.c("PrivacySandboxService", sb.toString(), exc);
            }
            if (z) {
                return;
            }
            aa.this.g(((Boolean) aa.this.sdk.a(com.applovin.impl.sdk.c.b.aRc)).booleanValue(), l.longValue());
        }
    }

    protected aa(n nVar) {
        this.sdk = nVar;
        this.aFw = nVar.BO().KK();
        Context applicationContext = n.getApplicationContext();
        this.aFx = (MeasurementManager) applicationContext.getSystemService(MeasurementManager.class);
        this.aFA = (TopicsManager) applicationContext.getSystemService(TopicsManager.class);
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aQY)).booleanValue()) {
            g(((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aRb)).booleanValue(), 0L);
        }
    }

    public static boolean M(Context context) {
        return N(context) && AdServicesState.isAdServicesStateEnabled();
    }

    public static boolean N(Context context) {
        return com.applovin.impl.sdk.utils.h.Lg() && !AppLovinSdkUtils.isFireOS(context);
    }

    public static boolean O(Context context) {
        return com.applovin.impl.sdk.utils.h.d("android.permission.ACCESS_ADSERVICES_TOPICS", context);
    }

    public static boolean P(Context context) {
        return com.applovin.impl.sdk.utils.h.d("android.permission.ACCESS_ADSERVICES_ATTRIBUTION", context);
    }

    public static boolean Q(Context context) {
        return com.applovin.impl.sdk.utils.h.d("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE", context);
    }

    public static boolean R(Context context) {
        return com.applovin.impl.sdk.utils.h.d("android.permission.ACCESS_ADSERVICES_AD_ID", context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(GetTopicsRequest getTopicsRequest) {
        this.aFA.getTopics(getTopicsRequest, this.aFw, this.aFz);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void g(boolean z, long j) {
        if (this.aFA == null) {
            return;
        }
        final GetTopicsRequest getTopicsRequestBuild = new GetTopicsRequest.Builder().setShouldRecordObservation(z).setAdsSdkName("AppLovin").build();
        if (j > 0) {
            this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, true, "getTopics", new Runnable() { // from class: com.applovin.impl.sdk.g0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(getTopicsRequestBuild);
                }
            }), q.b.BACKGROUND, j);
        } else {
            this.aFA.getTopics(getTopicsRequestBuild, this.aFw, this.aFz);
        }
    }

    public JSONArray Ft() {
        return this.aFy.get();
    }

    @SuppressLint({"MissingPermission"})
    public void I(@Nullable List<String> list) {
        if (list == null || list.isEmpty() || this.aFx == null || !M(n.hr)) {
            return;
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("PrivacySandboxService", "Registering impression...");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.aFx.registerSource(Uri.parse(it.next()), null, this.aFw, new OutcomeReceiver<Object, Exception>() { // from class: com.applovin.impl.sdk.aa.1
                @Override // android.os.OutcomeReceiver
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public void onError(@NonNull Exception exc) {
                    aa.this.sdk.BN();
                    if (x.Fn()) {
                        aa.this.sdk.BN().c("PrivacySandboxService", "Failed to register impression", exc);
                    }
                }

                @Override // android.os.OutcomeReceiver
                public void onResult(@NonNull Object obj) {
                    aa.this.sdk.BN();
                    if (x.Fn()) {
                        aa.this.sdk.BN().f("PrivacySandboxService", "Successfully registered impression");
                    }
                }
            });
        }
    }

    @SuppressLint({"MissingPermission"})
    public void a(@Nullable List<String> list, InputEvent inputEvent) {
        if (list == null || list.isEmpty() || this.aFx == null || !M(n.hr)) {
            return;
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("PrivacySandboxService", "Registering click...");
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.aFx.registerSource(Uri.parse(it.next()), inputEvent, this.aFw, new OutcomeReceiver<Object, Exception>() { // from class: com.applovin.impl.sdk.aa.2
                @Override // android.os.OutcomeReceiver
                /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
                public void onError(@NonNull Exception exc) {
                    aa.this.sdk.BN();
                    if (x.Fn()) {
                        aa.this.sdk.BN().c("PrivacySandboxService", "Failed to register click", exc);
                    }
                }

                @Override // android.os.OutcomeReceiver
                public void onResult(@NonNull Object obj) {
                    aa.this.sdk.BN();
                    if (x.Fn()) {
                        aa.this.sdk.BN().f("PrivacySandboxService", "Successfully registered click");
                    }
                }
            });
        }
    }

    @SuppressLint({"MissingPermission"})
    public void cL(@Nullable String str) {
        if (TextUtils.isEmpty(str) || this.aFx == null || !M(n.hr)) {
            return;
        }
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("PrivacySandboxService", "Registering conversion: " + str);
        }
        this.aFx.registerTrigger(Uri.parse(str), this.aFw, new OutcomeReceiver<Object, Exception>() { // from class: com.applovin.impl.sdk.aa.3
            @Override // android.os.OutcomeReceiver
            /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
            public void onError(@NonNull Exception exc) {
                aa.this.sdk.BN();
                if (x.Fn()) {
                    aa.this.sdk.BN().c("PrivacySandboxService", "Failed to register conversion", exc);
                }
            }

            @Override // android.os.OutcomeReceiver
            public void onResult(@NonNull Object obj) {
                aa.this.sdk.BN();
                if (x.Fn()) {
                    aa.this.sdk.BN().f("PrivacySandboxService", "Successfully registered conversion");
                }
            }
        });
    }
}
