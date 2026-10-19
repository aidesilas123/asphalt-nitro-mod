package com.tapjoy;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class TJPrivacyPolicy {
    public static TJPrivacyPolicy a;
    public TJStatus b = null;
    public TJStatus c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public TJStatus f7810d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7811e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Context f7812f;

    public static TJPrivacyPolicy getInstance() {
        if (a == null) {
            a = new TJPrivacyPolicy();
        }
        return a;
    }

    public final void a() {
        TJStatus tJStatus;
        Context context = this.f7812f;
        if (context == null || (tJStatus = this.f7810d) == null) {
            return;
        }
        if (tJStatus == TJStatus.c) {
            new v(context, "tjcPrefrences").f("below_consent_age");
        } else {
            new v(context, "tjcPrefrences").g("below_consent_age", Integer.valueOf(this.f7810d.e()));
        }
    }

    public final synchronized void b(Context context) {
        String str;
        if (context != null) {
            if (this.f7812f == null) {
                this.f7812f = context;
            }
        }
        TJPrivacyPolicy tJPrivacyPolicy = getInstance();
        Context context2 = tJPrivacyPolicy.f7812f;
        if (context2 != null) {
            v vVar = new v(context2, "tjcPrefrences");
            if (tJPrivacyPolicy.b == null && vVar.a("gdpr")) {
                if (vVar.e("gdpr") == Boolean.class) {
                    tJPrivacyPolicy.b = vVar.b("gdpr", false) ? TJStatus.b : TJStatus.a;
                } else if (vVar.e("gdpr") == Integer.class) {
                    tJPrivacyPolicy.b = TJStatus.valueOf(vVar.c("gdpr", TJStatus.c.e()));
                }
            }
            if (tJPrivacyPolicy.c == null && vVar.a("cgdpr")) {
                if (vVar.e("cgdpr") == String.class) {
                    tJPrivacyPolicy.c = Objects.equals(vVar.d("cgdpr", ""), "1") ? TJStatus.b : TJStatus.a;
                } else if (vVar.e("cgdpr") == Integer.class) {
                    tJPrivacyPolicy.c = TJStatus.valueOf(vVar.c("cgdpr", TJStatus.c.e()));
                }
            }
            if (tJPrivacyPolicy.f7810d == null && vVar.a("below_consent_age")) {
                if (vVar.e("below_consent_age") == Boolean.class) {
                    tJPrivacyPolicy.f7810d = vVar.b("below_consent_age", false) ? TJStatus.b : TJStatus.a;
                } else if (vVar.e("below_consent_age") == Integer.class) {
                    tJPrivacyPolicy.f7810d = TJStatus.valueOf(vVar.c("below_consent_age", TJStatus.c.e()));
                }
            }
            if (tJPrivacyPolicy.f7811e == null) {
                tJPrivacyPolicy.f7811e = vVar.d("us_privacy", "");
            }
        }
        TJPrivacyPolicy tJPrivacyPolicy2 = getInstance();
        if (tJPrivacyPolicy2.f7812f != null) {
            tJPrivacyPolicy2.c();
            tJPrivacyPolicy2.d();
            tJPrivacyPolicy2.a();
            if (tJPrivacyPolicy2.f7812f != null && (str = tJPrivacyPolicy2.f7811e) != null) {
                if (str.isEmpty()) {
                    new v(tJPrivacyPolicy2.f7812f, "tjcPrefrences").f("us_privacy");
                } else {
                    new v(tJPrivacyPolicy2.f7812f, "tjcPrefrences").g("us_privacy", tJPrivacyPolicy2.f7811e);
                }
            }
        }
    }

    public final void c() {
        TJStatus tJStatus;
        Context context = this.f7812f;
        if (context == null || (tJStatus = this.b) == null) {
            return;
        }
        if (tJStatus == TJStatus.c) {
            new v(context, "tjcPrefrences").f("gdpr");
        } else {
            new v(context, "tjcPrefrences").g("gdpr", Integer.valueOf(this.b.e()));
        }
    }

    public final void d() {
        TJStatus tJStatus;
        Context context = this.f7812f;
        if (context == null || (tJStatus = this.c) == null) {
            return;
        }
        if (tJStatus == TJStatus.c) {
            new v(context, "tjcPrefrences").f("cgdpr");
        } else {
            new v(context, "tjcPrefrences").g("cgdpr", Integer.valueOf(this.c.e()));
        }
    }

    public TJStatus e() {
        return this.c;
    }

    public void f(TJStatus tJStatus) {
        this.f7810d = tJStatus;
        a();
    }

    public void g(String str) {
        this.f7811e = str;
        if (this.f7812f == null || str == null) {
            return;
        }
        if (str.isEmpty()) {
            new v(this.f7812f, "tjcPrefrences").f("us_privacy");
        } else {
            new v(this.f7812f, "tjcPrefrences").g("us_privacy", this.f7811e);
        }
    }

    public void h(TJStatus tJStatus) {
        this.c = tJStatus;
        d();
    }
}
