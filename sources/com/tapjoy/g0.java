package com.tapjoy;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class g0 {
    public final Context a;
    public String b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7839d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7840e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7841f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Boolean f7842g;
    public Boolean h;

    public g0(Context context) {
        this.a = context;
    }

    public void a() throws i0 {
        if (!i()) {
            throw new i0("Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers");
        }
        if (!h()) {
            throw new i0("Failed to load manifest.xml meta-data, 'com.google.android.gms.version' not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers");
        }
    }

    public String b() {
        return this.b;
    }

    public int c() {
        return this.f7839d;
    }

    public int d() {
        return this.f7840e;
    }

    public boolean e() {
        return this.f7841f;
    }

    public boolean f() {
        return this.c;
    }

    public boolean g() {
        if (this.a.getSharedPreferences("tjcPrefrences", 0).contains("optout_advertising_id")) {
            return !Boolean.valueOf(r0.getBoolean("optout_advertising_id", false)).booleanValue();
        }
        return true;
    }

    public boolean h() {
        if (this.h == null) {
            try {
                this.f7840e = this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 128).metaData.getInt("com.google.android.gms.version");
                this.h = Boolean.TRUE;
            } catch (Exception unused) {
                this.h = Boolean.FALSE;
            }
        }
        return this.h.booleanValue();
    }

    public boolean i() {
        if (this.f7842g == null) {
            try {
                this.a.getClassLoader().loadClass("com.google.android.gms.ads.identifier.AdvertisingIdClient");
                this.f7842g = Boolean.TRUE;
            } catch (Error unused) {
                this.f7842g = Boolean.FALSE;
            } catch (Exception unused2) {
                this.f7842g = Boolean.FALSE;
            }
        }
        return this.f7842g.booleanValue();
    }

    public void j(boolean z) {
        TapjoyLog.i("TapjoyGpsHelper", "Looking for Google Play Services...");
        if (!i() || !h()) {
            TapjoyLog.i("TapjoyGpsHelper", "Google Play Services not found");
            return;
        }
        TapjoyLog.i("TapjoyGpsHelper", "Packaged Google Play Services found, fetching advertisingID...");
        TapjoyLog.i("TapjoyGpsHelper", "Packaged Google Play Services version: " + this.f7840e);
        a0 a0Var = new a0(this.a);
        if (g()) {
            this.f7841f = a0Var.c();
        } else {
            this.f7841f = false;
        }
        try {
            this.f7839d = this.a.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
            TapjoyLog.i("TapjoyGpsHelper", "Device's Google Play Services version: " + this.f7839d);
        } catch (Exception unused) {
            TapjoyLog.i("TapjoyGpsHelper", "Error getting device's Google Play Services version");
        }
        if (this.f7841f) {
            this.c = a0Var.b();
            this.b = a0Var.a();
            TapjoyLog.i("TapjoyGpsHelper", "Found advertising ID: " + this.b);
            TapjoyLog.i("TapjoyGpsHelper", "Is ad tracking enabled: " + Boolean.toString(this.c));
            return;
        }
        TapjoyLog.i("TapjoyGpsHelper", "Error getting advertisingID from Google Play Services");
        if (z) {
            this.c = false;
            if (g()) {
                this.b = "00000000-0000-0000-0000-000000000000";
                this.f7841f = true;
            } else {
                k();
                this.f7841f = false;
            }
        }
    }

    public void k() {
        this.b = "";
    }
}
