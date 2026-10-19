package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.controller.d;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.out.OnCompletionListener;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SDKAuthorityController.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static volatile a b = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7023e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f7024f = true;
    private d h;
    public ArrayList<String> a = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7025d = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7026g = "";
    private AuthorityInfoBean c = new AuthorityInfoBean();

    private a() {
        try {
            if (com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_GENERAL_DATA).equals("")) {
                this.c.b(1);
            }
            if (com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_DEVICE_ID).equals("")) {
                this.c.c(1);
            }
            if (com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_SERIAL_ID).equals("")) {
                this.c.d(1);
            }
            if (com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_OTHER).equals("")) {
                this.c.e(1);
            }
            this.a.add(MBridgeConstans.AUTHORITY_GENERAL_DATA);
            this.a.add(MBridgeConstans.AUTHORITY_DEVICE_ID);
            this.a.add(MBridgeConstans.AUTHORITY_SERIAL_ID);
            this.a.add(MBridgeConstans.AUTHORITY_OTHER);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            if (this.h == null) {
                d dVar = new d(context);
                this.h = dVar;
                dVar.a(new d.a() { // from class: com.mbridge.msdk.foundation.controller.authoritycontroller.a.2
                    @Override // com.mbridge.msdk.foundation.controller.d.a
                    public final void a() {
                        a.this.j();
                    }
                });
            }
            j();
        } catch (Throwable th) {
            aa.d("SDKAuthorityController", th.getMessage());
        }
    }

    public static void a(boolean z) {
        f7023e = z;
    }

    private int b(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                String strB = com.mbridge.msdk.foundation.a.a.a.a().b(str);
                if (TextUtils.isEmpty(strB)) {
                    return 0;
                }
                return Integer.parseInt(strB);
            }
        } catch (Exception e2) {
            aa.d("SDKAuthorityController", e2.getMessage());
        }
        return 0;
    }

    public static void b(boolean z) {
        f7024f = z;
    }

    private int c(String str) {
        e eVarB = f.a().b(b.d().h());
        if (eVarB == null) {
            eVarB = f.a().b();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return eVarB.H();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return eVarB.I();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
            return eVarB.G();
        }
        return -1;
    }

    private void c(int i) {
        this.f7025d = i != 1 ? 2 : 1;
    }

    private void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f7026g = str;
    }

    public static boolean g() {
        return f7023e;
    }

    public static boolean h() {
        return f7024f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void j() {
        boolean zB = this.h.b();
        d(this.h.a());
        c(zB ? 1 : 2);
        this.c.c(zB ? 1 : 0);
    }

    public final void a(int i) {
        if (this.c != null) {
            c(i);
        }
    }

    public final void a(final Context context, final OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.controller.authoritycontroller.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(context);
                    onCompletionListener.onCompletion();
                }
            });
        } else {
            a(context);
        }
    }

    public final void a(String str, int i) {
        if (this.c != null) {
            if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                this.c.b(i);
                return;
            }
            if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                this.c.c(i);
                return;
            }
            if (str.equals(MBridgeConstans.AUTHORITY_ALL_INFO)) {
                this.c.a(i);
            } else if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
                this.c.d(i);
            } else if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
                this.c.e(i);
            }
        }
    }

    public final boolean a(String str) {
        boolean z;
        e eVarB = f.a().b(b.d().h());
        boolean z2 = false;
        if (eVarB == null) {
            eVarB = f.a().b();
            z = true;
        } else {
            z = false;
        }
        int iJ = eVarB.J();
        boolean z3 = iJ != 0 ? iJ == 1 && c(str) == 1 : b(str) == 1 && c(str) == 1;
        if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
            z3 = b(str) == 1;
        }
        if (!str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID) || a().f7025d != 2) {
            return z3;
        }
        if (!eVarB.aB() && !z && b(str) == 1) {
            z2 = true;
        }
        return z2;
    }

    public final AuthorityInfoBean b() {
        AuthorityInfoBean authorityInfoBean = this.c;
        return authorityInfoBean != null ? authorityInfoBean : new AuthorityInfoBean().a(1);
    }

    public final void b(int i) {
        com.mbridge.msdk.foundation.a.a.a.a().a(MBridgeConstans.AUTHORITY_DNT, i);
    }

    public final String c() {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.a.size(); i++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("keyname", String.valueOf(this.a.get(i)));
                jSONObject.put("client_status", b(this.a.get(i)));
                jSONObject.put("server_status", c(this.a.get(i)));
                jSONArray.put(jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    public final boolean d() {
        int i = this.f7025d;
        return i == 1 || i == 3;
    }

    public final int e() {
        return com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_COPPA, 0);
    }

    public final int f() {
        return this.f7025d;
    }

    public final String i() {
        return this.f7026g;
    }
}
