package com.fyber.inneractive.sdk.config;

import android.app.Application;
import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public Boolean a = null;
    public String b = null;
    public InneractiveAdManager.GdprConsentSource c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f1951d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f1952e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f1953f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Boolean f1954g = null;
    public SharedPreferences h;

    public Boolean a() {
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            return null;
        }
        return this.a;
    }

    public final boolean a(String str, String str2) {
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            return false;
        }
        b();
        if (this.h == null) {
            return false;
        }
        IAlog.a("Saving %s value = %s to sharedPrefs", str, str2);
        this.h.edit().putString(str, str2).apply();
        return true;
    }

    public final boolean a(String str, boolean z) {
        if (com.fyber.inneractive.sdk.util.l.a == null) {
            return false;
        }
        b();
        SharedPreferences sharedPreferences = this.h;
        if (sharedPreferences == null) {
            return false;
        }
        sharedPreferences.edit().putBoolean(str, z).apply();
        return true;
    }

    public void b() {
        Application application = com.fyber.inneractive.sdk.util.l.a;
        if (this.h != null || application == null) {
            return;
        }
        SharedPreferences sharedPreferences = application.getSharedPreferences("IAConfigurationPreferences", 0);
        this.h = sharedPreferences;
        if (sharedPreferences != null) {
            if (sharedPreferences.contains("IAGDPRBool")) {
                this.a = Boolean.valueOf(sharedPreferences.getBoolean("IAGDPRBool", false));
            }
            if (sharedPreferences.contains("IAGdprConsentData")) {
                this.b = sharedPreferences.getString("IAGdprConsentData", null);
            }
            if (sharedPreferences.contains("IACCPAConsentData")) {
                this.f1952e = sharedPreferences.getString("IACCPAConsentData", null);
            }
            if (sharedPreferences.contains("IAGdprSource")) {
                try {
                    this.c = InneractiveAdManager.GdprConsentSource.valueOf(sharedPreferences.getString("IAGdprSource", InneractiveAdManager.GdprConsentSource.Internal.toString()));
                } catch (Exception unused) {
                    this.c = InneractiveAdManager.GdprConsentSource.Internal;
                }
            }
            if (sharedPreferences.contains("IALgpdConsentStatus")) {
                this.f1953f = Boolean.valueOf(sharedPreferences.getBoolean("IALgpdConsentStatus", false));
            }
            if (sharedPreferences.contains("keyUserID")) {
                this.f1951d = sharedPreferences.getString("keyUserID", null);
            }
        }
    }
}
