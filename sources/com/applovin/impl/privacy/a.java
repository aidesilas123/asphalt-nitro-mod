package com.applovin.impl.privacy;

import android.content.Context;
import com.applovin.impl.sdk.c.d;
import com.applovin.impl.sdk.c.e;
import com.applovin.impl.sdk.x;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final C0076a axn = new C0076a("Age Restricted User", d.aRr);
    private static final C0076a axo = new C0076a("Has User Consent", d.aRq);
    private static final C0076a axp = new C0076a("\"Do Not Sell\"", d.aRs);

    /* JADX INFO: renamed from: com.applovin.impl.privacy.a$a, reason: collision with other inner class name */
    public static class C0076a {
        private final d<Boolean> axq;
        private final String name;

        C0076a(String str, d<Boolean> dVar) {
            this.name = str;
            this.axq = dVar;
        }

        public Boolean B(Context context) {
            if (context != null) {
                return (Boolean) e.b(this.axq, (Object) null, context);
            }
            x.H("AppLovinSdk", "Failed to get value for key: " + this.axq);
            return null;
        }

        public String C(Context context) {
            Boolean boolB = B(context);
            return boolB != null ? boolB.toString() : "No value set";
        }

        public String getName() {
            return this.name;
        }
    }

    public static String A(Context context) {
        return a(axn, context) + a(axo, context) + a(axp, context);
    }

    private static String a(C0076a c0076a, Context context) {
        return "\n" + c0076a.name + " - " + c0076a.C(context);
    }

    private static boolean a(d<Boolean> dVar, Boolean bool, Context context) {
        if (context != null) {
            Boolean bool2 = (Boolean) e.b(dVar, (Object) null, context);
            e.a(dVar, bool, context);
            return bool2 == null || bool2 != bool;
        }
        x.H("AppLovinSdk", "Failed to update compliance value for key: " + dVar);
        return false;
    }

    public static boolean a(boolean z, Context context) {
        return a(d.aRr, Boolean.valueOf(z), context);
    }

    public static boolean b(boolean z, Context context) {
        return a(d.aRq, Boolean.valueOf(z), context);
    }

    public static boolean c(boolean z, Context context) {
        return a(d.aRs, Boolean.valueOf(z), context);
    }

    public static C0076a zO() {
        return axn;
    }

    public static C0076a zP() {
        return axo;
    }

    public static C0076a zQ() {
        return axp;
    }
}
