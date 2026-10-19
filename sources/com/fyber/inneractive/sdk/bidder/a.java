package com.fyber.inneractive.sdk.bidder;

import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Build;
import com.fyber.inneractive.sdk.bidder.TokenParametersOuterClass$TokenParameters;
import com.fyber.inneractive.sdk.cache.session.h;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.f0;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d, f0.a {
    public static final a h = new a();
    public final TokenParametersOuterClass$TokenParameters.b a;
    public final com.fyber.inneractive.sdk.serverapi.b b;
    public final c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e f1910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReference<String> f1911e = new AtomicReference<>(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f1912f = new AtomicBoolean(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f1913g = new Object();

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.bidder.a$a, reason: collision with other inner class name */
    public class RunnableC0149a implements Runnable {
        public RunnableC0149a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a();
        }
    }

    public a() {
        com.fyber.inneractive.sdk.serverapi.b bVar = new com.fyber.inneractive.sdk.serverapi.b(s.b());
        this.b = bVar;
        c cVar = new c(bVar);
        this.c = cVar;
        this.a = TokenParametersOuterClass$TokenParameters.newBuilder();
        IAConfigManager.e().a(this);
        c();
        if (IAConfigManager.c().a().a("bidding_token_wait_for_ua", true)) {
            IAConfigManager.f().d();
            cVar.a(IAConfigManager.f().a());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:68:0x04ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            Method dump skipped, instruction units count: 1538
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.bidder.a.a():void");
    }

    public final void a(String str, UnitDisplayType unitDisplayType, TokenParametersOuterClass$TokenParameters.k kVar) {
        ArrayList<com.fyber.inneractive.sdk.cache.session.e> arrayList;
        com.fyber.inneractive.sdk.cache.session.d dVar = IAConfigManager.M.x.a;
        if (dVar != null) {
            h hVar = dVar.b.get(com.fyber.inneractive.sdk.cache.session.enums.b.a(unitDisplayType.value(), str));
            TokenParametersOuterClass$TokenParameters.UserSession userSessionA = null;
            if (hVar != null) {
                ArrayList arrayList2 = new ArrayList(hVar);
                Collections.sort(arrayList2, new com.fyber.inneractive.sdk.cache.session.g(hVar));
                arrayList = new ArrayList(arrayList2);
            } else {
                arrayList = null;
            }
            int iA = dVar.a();
            if (iA > 0 && arrayList != null && arrayList.size() >= iA) {
                TokenParametersOuterClass$TokenParameters.j jVar = !str.equals("video") ? !str.equals("display") ? TokenParametersOuterClass$TokenParameters.j.UNITCONTENTTYPEUNKNOWN : TokenParametersOuterClass$TokenParameters.j.DISPLAY : TokenParametersOuterClass$TokenParameters.j.VIDEO;
                TokenParametersOuterClass$TokenParameters.UserSession.a aVarNewBuilder = TokenParametersOuterClass$TokenParameters.UserSession.newBuilder();
                aVarNewBuilder.c();
                ((TokenParametersOuterClass$TokenParameters.UserSession) aVarNewBuilder.b).setSubType(jVar);
                int i = 0;
                for (com.fyber.inneractive.sdk.cache.session.e eVar : arrayList) {
                    TokenParametersOuterClass$TokenParameters.SessionData.a aVarNewBuilder2 = TokenParametersOuterClass$TokenParameters.SessionData.newBuilder();
                    int i2 = eVar.b;
                    aVarNewBuilder2.c();
                    ((TokenParametersOuterClass$TokenParameters.SessionData) aVarNewBuilder2.b).setClicks(i2);
                    int i3 = eVar.a;
                    aVarNewBuilder2.c();
                    ((TokenParametersOuterClass$TokenParameters.SessionData) aVarNewBuilder2.b).setImpressions(i3);
                    if (str.equals("video") || kVar.equals(TokenParametersOuterClass$TokenParameters.k.REWARDED)) {
                        int i4 = eVar.c;
                        aVarNewBuilder2.c();
                        ((TokenParametersOuterClass$TokenParameters.SessionData) aVarNewBuilder2.b).setCompletions(i4);
                    }
                    TokenParametersOuterClass$TokenParameters.SessionData sessionDataA = aVarNewBuilder2.a();
                    aVarNewBuilder.c();
                    ((TokenParametersOuterClass$TokenParameters.UserSession) aVarNewBuilder.b).addSessionDataItems(sessionDataA);
                    i++;
                    if (i >= iA) {
                        break;
                    }
                }
                aVarNewBuilder.c();
                ((TokenParametersOuterClass$TokenParameters.UserSession) aVarNewBuilder.b).setType(kVar);
                userSessionA = aVarNewBuilder.a();
            }
            if (userSessionA == null || userSessionA.getSessionDataItemsList().size() <= 0) {
                return;
            }
            TokenParametersOuterClass$TokenParameters.b bVar = this.a;
            bVar.c();
            ((TokenParametersOuterClass$TokenParameters) bVar.b).addUserSessions(userSessionA);
        }
    }

    public void b() {
        m.a(new RunnableC0149a());
    }

    public final void c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) l.a.getSystemService("connectivity");
        int i = Build.VERSION.SDK_INT;
        if (i >= 24 && !InneractiveAdManager.isCurrentUserAChild()) {
            connectivityManager.registerDefaultNetworkCallback(new b(this));
        }
        e eVar = new e(this);
        this.f1910d = eVar;
        l.a.registerReceiver(eVar, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        l.a.registerReceiver(eVar, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (i >= 23) {
            l.a.registerReceiver(eVar, new IntentFilter("android.app.action.INTERRUPTION_FILTER_CHANGED"));
        }
        if (i >= 21) {
            l.a.registerReceiver(eVar, new IntentFilter("android.os.action.POWER_SAVE_MODE_CHANGED"));
        }
        if (i >= 17) {
            l.a.registerReceiver(eVar, new IntentFilter("android.intent.action.AIRPLANE_MODE"));
        }
        if (l.b("android.permission.BLUETOOTH")) {
            l.a.registerReceiver(eVar, new IntentFilter("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"));
            l.a.registerReceiver(eVar, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
        }
    }
}
