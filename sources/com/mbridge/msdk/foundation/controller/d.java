package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: TCStringManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d implements SharedPreferences.OnSharedPreferenceChangeListener {
    private String a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7036e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7038g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private a l;
    private final SharedPreferences m;
    private String b = "";
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7035d = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7037f = false;

    /* JADX INFO: compiled from: TCStringManager.java */
    public interface a {
        void a();
    }

    public d(Context context) {
        this.a = "";
        this.f7036e = 0;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        this.m = defaultSharedPreferences;
        if (defaultSharedPreferences != null) {
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        }
        if (defaultSharedPreferences != null) {
            this.a = defaultSharedPreferences.getString("IABTCF_TCString", "");
            this.f7036e = defaultSharedPreferences.getInt("IABTCF_gdprApplies", 0);
            a(defaultSharedPreferences.getString("IABTCF_PurposeConsents", ""));
            b(defaultSharedPreferences.getString("IABTCF_VendorConsents", ""));
            c(defaultSharedPreferences.getString("IABTCF_AddtlConsent", ""));
        }
    }

    private void a(String str) {
        this.f7038g = a(str, 1);
        this.h = a(str, 2);
        this.b = str;
    }

    private boolean a(String str, int i) {
        return d(str) && i <= str.length() && i >= 1 && '1' == str.charAt(i - 1);
    }

    private void b(String str) {
        this.i = a(str, 867);
        this.c = str;
    }

    private void c(String str) {
        this.f7035d = str;
        if (TextUtils.isEmpty(str)) {
            this.j = true;
            return;
        }
        if (MBridgeConstans.GOOGLE_ATP_ID == -1) {
            this.k = false;
            return;
        }
        this.k = true;
        try {
            String[] strArrSplit = str.split("~");
            if (strArrSplit.length > 1) {
                if (TextUtils.isEmpty(strArrSplit[1])) {
                    this.j = false;
                } else {
                    this.j = str.contains(String.valueOf(MBridgeConstans.GOOGLE_ATP_ID));
                }
            }
        } catch (Throwable th) {
            aa.d("TCStringManager", th.getMessage());
        }
    }

    private boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[01]+");
    }

    public final String a() {
        return this.a;
    }

    public final void a(a aVar) {
        if (aVar != null) {
            this.l = aVar;
        }
    }

    public final boolean b() {
        if (this.f7036e == 0) {
            this.f7037f = true;
            return true;
        }
        if (!d(this.b) || !d(this.c)) {
            this.f7037f = z;
        } else if (MBridgeConstans.VERIFY_ATP_CONSENT) {
            this.f7037f = (this.i || (this.k && this.j)) && this.f7038g && this.h;
        } else {
            if (!this.i || !this.f7038g || !this.h) {
                z = false;
            }
            this.f7037f = z;
        }
        return this.f7037f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            byte b = -1;
            switch (str.hashCode()) {
                case -2004976699:
                    if (str.equals("IABTCF_PurposeConsents")) {
                        b = 2;
                    }
                    break;
                case 83641339:
                    if (str.equals("IABTCF_gdprApplies")) {
                        b = 1;
                    }
                    break;
                case 1218895378:
                    if (str.equals("IABTCF_TCString")) {
                        b = 0;
                    }
                    break;
                case 1342914771:
                    if (str.equals("IABTCF_AddtlConsent")) {
                        b = 4;
                    }
                    break;
                case 1450203731:
                    if (str.equals("IABTCF_VendorConsents")) {
                        b = 3;
                    }
                    break;
            }
            if (b == 0) {
                this.a = sharedPreferences.getString("IABTCF_TCString", "");
            } else if (b == 1) {
                this.f7036e = sharedPreferences.getInt("IABTCF_gdprApplies", 0);
            } else if (b == 2) {
                a(sharedPreferences.getString("IABTCF_PurposeConsents", ""));
            } else if (b == 3) {
                b(sharedPreferences.getString("IABTCF_VendorConsents", ""));
            } else if (b == 4) {
                c(sharedPreferences.getString("IABTCF_AddtlConsent", ""));
            }
            a aVar = this.l;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Throwable th) {
            aa.d("TCStringManager", th.getMessage());
        }
    }
}
