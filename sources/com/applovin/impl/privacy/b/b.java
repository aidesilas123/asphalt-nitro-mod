package com.applovin.impl.privacy.b;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.annotation.Nullable;
import com.applovin.impl.privacy.b.c;
import com.applovin.impl.sdk.c.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b implements SharedPreferences.OnSharedPreferenceChangeListener {

    @Nullable
    private String ayA;

    @Nullable
    private String ayB;
    private String ayC;
    private final List<c> ayD;
    private final SharedPreferences ayw;

    @Nullable
    private Integer ayx;

    @Nullable
    private Integer ayy;

    @Nullable
    private Integer ayz;
    private final n sdk;

    public b(n nVar) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(n.getApplicationContext());
        this.ayw = defaultSharedPreferences;
        this.ayD = new ArrayList();
        this.sdk = nVar;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        this.ayx = cn(com.applovin.impl.sdk.c.d.aRu.getName());
        this.ayy = cn(com.applovin.impl.sdk.c.d.aRv.getName());
        this.ayz = An();
        this.ayA = (String) e.a((com.applovin.impl.sdk.c.d<Object>) com.applovin.impl.sdk.c.d.aRx, (Object) null, defaultSharedPreferences, false);
        this.ayB = (String) e.a((com.applovin.impl.sdk.c.d<Object>) com.applovin.impl.sdk.c.d.aRy, (Object) null, defaultSharedPreferences, false);
        this.ayC = (String) e.a((com.applovin.impl.sdk.c.d<Object>) com.applovin.impl.sdk.c.d.aRz, (Object) null, defaultSharedPreferences, false);
        co(this.ayB);
    }

    @Nullable
    private Integer An() {
        String name = com.applovin.impl.sdk.c.d.aRw.getName();
        if (this.ayw.contains(name)) {
            Integer num = (Integer) e.a(name, null, Integer.class, this.ayw, false);
            if (num != null) {
                if (num.intValue() == 1 || num.intValue() == 0) {
                    return num;
                }
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().i("TcfManager", "Integer value (" + num + ") for " + name + " is invalid - setting GDPR Applies to null");
                }
                return null;
            }
            Long l = (Long) e.a(name, null, Long.class, this.ayw, false);
            if (l != null) {
                if (l.longValue() == 1 || l.longValue() == 0) {
                    return Integer.valueOf(l.intValue());
                }
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().i("TcfManager", "Long value (" + l + ") for " + name + " is invalid - setting GDPR Applies to null");
                }
                return null;
            }
            Boolean bool = (Boolean) e.a(name, null, Boolean.class, this.ayw, false);
            if (bool != null) {
                return Integer.valueOf(bool.booleanValue() ? 1 : 0);
            }
            String str = (String) e.a(name, null, String.class, this.ayw, false);
            if (str != null) {
                if ("1".equals(str) || "true".equals(str)) {
                    return 1;
                }
                if ("0".equals(str) || "false".equals(str)) {
                    return 0;
                }
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().i("TcfManager", "String value (" + str + ") for " + name + " is invalid - setting GDPR Applies to null");
                }
                return null;
            }
        }
        return null;
    }

    private void Ao() {
        this.ayx = null;
        this.ayz = null;
        this.ayA = null;
        this.ayB = null;
        this.ayC = null;
        Iterator<c> it = this.ayD.iterator();
        while (it.hasNext()) {
            it.next().c(null);
        }
    }

    private String b(String str, @Nullable Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        sb.append(str);
        sb.append(" - ");
        sb.append(obj != null ? obj.toString() : "No value set");
        return sb.toString();
    }

    @Nullable
    private Integer cn(String str) {
        if (this.ayw.contains(str)) {
            Integer num = (Integer) e.a(str, null, Integer.class, this.ayw, false);
            if (num != null) {
                return num;
            }
            Long l = (Long) e.a(str, null, Long.class, this.ayw, false);
            if (l != null && l.longValue() >= -2147483648L && l.longValue() <= 2147483647L) {
                return Integer.valueOf(l.intValue());
            }
            String str2 = (String) e.a(str, null, String.class, this.ayw, false);
            if (str2 != null) {
                if (StringUtils.isNumeric(str2)) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().i("TcfManager", "String value (" + str2 + ") for " + str + " is not numeric - storing value as null");
                }
            }
        }
        return null;
    }

    private void co(@Nullable String str) {
        x.D("TcfManager", "Attempting to update consent from Additional Consent string: " + str);
        Boolean boolF = d.f(IronSourceConstants.RV_AUCTION_FAILED, str);
        if (boolF == null) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "AC string is not valid or AppLovin was not listed on the CMP flow - no consent update");
                return;
            }
            return;
        }
        if (boolF.booleanValue()) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "Found AppLovin ID in the list of consented ATP IDs - setting user consent to true");
            }
            AppLovinPrivacySettings.setHasUserConsent(true, n.getApplicationContext());
        } else {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "Could not find AppLovin ID in the list of consented ATP IDs - setting user consent to false");
            }
            AppLovinPrivacySettings.setHasUserConsent(false, n.getApplicationContext());
        }
        this.sdk.Bu();
    }

    private void cp(@Nullable String str) {
        if (str == null) {
            Iterator<c> it = this.ayD.iterator();
            while (it.hasNext()) {
                it.next().c(null);
            }
        } else {
            for (c cVar : this.ayD) {
                if (cVar.Av() == c.a.TCF_VENDOR && cVar.Aw() != null) {
                    cVar.c(Boolean.valueOf(d.e(str, cVar.Aw().intValue() - 1)));
                }
            }
        }
    }

    private void cq(@Nullable String str) {
        for (c cVar : this.ayD) {
            if (cVar.Av() == c.a.ATP_NETWORK && cVar.Aw() != null) {
                cVar.c(d.f(cVar.Aw().intValue(), str));
            }
        }
    }

    @Nullable
    public String Am() {
        return a.l(this.ayx);
    }

    @Nullable
    public Integer Ap() {
        return this.ayx;
    }

    @Nullable
    public Integer Aq() {
        return this.ayy;
    }

    @Nullable
    public Integer Ar() {
        return this.ayz;
    }

    @Nullable
    public String As() {
        return this.ayA;
    }

    @Nullable
    public String At() {
        return this.ayB;
    }

    public List<c> Au() {
        return this.ayD;
    }

    public void F(List<com.applovin.impl.mediation.debugger.b.c.b> list) {
        Iterator<com.applovin.impl.mediation.debugger.b.c.b> it = list.iterator();
        while (it.hasNext()) {
            this.ayD.add(it.next().vI());
        }
        cp(this.ayC);
        cq(this.ayB);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, @Nullable String str) {
        if (str == null) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences are cleared - setting all stored TC data to null");
            }
            Ao();
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRu.getName())) {
            this.ayx = cn(str);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.ayx);
            }
            this.sdk.Bu();
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRv.getName())) {
            this.ayy = cn(str);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.ayy);
                return;
            }
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRw.getName())) {
            this.ayz = An();
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.ayz);
                return;
            }
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRx.getName())) {
            this.ayA = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreference entry updated - key: " + str + ", value: " + this.ayA);
            }
            this.sdk.Bu();
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRy.getName())) {
            this.ayB = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.ayB);
            }
            co(this.ayB);
            cq(this.ayB);
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRz.getName())) {
            this.ayC = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.ayC);
            }
            cp(this.ayC);
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRA.getName())) {
            String str2 = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str2);
                return;
            }
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRB.getName())) {
            String str3 = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str3);
                return;
            }
            return;
        }
        if (str.equals(com.applovin.impl.sdk.c.d.aRC.getName())) {
            String str4 = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str4);
                return;
            }
            return;
        }
        if (str.contains("IABTCF_PublisherRestrictions")) {
            String str5 = (String) e.a(str, (Object) null, String.class, sharedPreferences);
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str5);
            }
        }
    }

    public String uI() {
        return b("CMP Name", Am()) + b("CMP SDK ID", this.ayx) + b("CMP SDK Version", this.ayy) + b(com.applovin.impl.sdk.c.d.aRw.getName(), this.ayz) + b(com.applovin.impl.sdk.c.d.aRx.getName(), this.ayA) + b(com.applovin.impl.sdk.c.d.aRy.getName(), this.ayB);
    }
}
