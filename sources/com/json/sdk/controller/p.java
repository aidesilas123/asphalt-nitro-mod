package com.json.sdk.controller;

import com.json.fa;
import com.json.i6;
import com.json.n4;
import com.json.p4;
import com.json.p8;
import com.json.q6;
import com.json.q8;
import com.json.r8;
import com.json.sdk.utils.IronSourceStorageUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class p {
    private final String a;
    private final p4 b;

    class a implements fa {
        final /* synthetic */ r8 a;
        final /* synthetic */ q8 b;

        a(r8 r8Var, q8 q8Var) {
            this.a = r8Var;
            this.b = q8Var;
        }

        @Override // com.json.fa
        public void a(q6 q6Var) {
            try {
                r8 r8Var = this.a;
                q8 q8Var = this.b;
                r8Var.b(q8Var, p.this.d(q8Var, q6Var.a()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.json.fa
        public void a(q6 q6Var, i6 i6Var) {
            try {
                r8 r8Var = this.a;
                q8 q8Var = this.b;
                r8Var.a(q8Var, p.this.c(q8Var, i6Var.b()));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    p(String str, p4 p4Var) {
        this.a = str;
        this.b = p4Var;
    }

    private fa a(q8 q8Var, r8 r8Var) {
        return new a(r8Var, q8Var);
    }

    private JSONObject b(q8 q8Var, long j) {
        try {
            return q8Var.e().put("result", j);
        } catch (Exception e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject c(q8 q8Var, String str) {
        try {
            return q8Var.e().put("errMsg", str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject d(q8 q8Var, JSONObject jSONObject) {
        try {
            return q8Var.e().put("result", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    private q6 h(JSONObject jSONObject, String str) throws Exception {
        if (!jSONObject.has(n4.c.c) || !jSONObject.has(n4.c.b)) {
            throw new Exception(n4.a.a);
        }
        String string = jSONObject.getString(n4.c.c);
        return new q6(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, string), jSONObject.getString(n4.c.b));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void g(JSONObject jSONObject, p8 p8Var) {
        JSONObject jSONObjectA;
        JSONObject jSONObjectD;
        q8 q8Var = new q8(jSONObject);
        r8 r8Var = new r8(p8Var);
        try {
            String strB = q8Var.b();
            JSONObject jSONObjectC = q8Var.c();
            q6 q6VarH = h(jSONObjectC, this.a);
            IronSourceStorageUtils.ensurePathSafety(q6VarH, this.a);
            byte b = -1;
            switch (strB.hashCode()) {
                case -2073025383:
                    if (strB.equals(n4.b.a)) {
                        b = 0;
                    }
                    break;
                case -1137024519:
                    if (strB.equals(n4.b.c)) {
                        b = 2;
                    }
                    break;
                case -318115535:
                    if (strB.equals(n4.b.f6442e)) {
                        b = 4;
                    }
                    break;
                case 537556755:
                    if (strB.equals(n4.b.f6443f)) {
                        b = 5;
                    }
                    break;
                case 1764172231:
                    if (strB.equals(n4.b.b)) {
                        b = 1;
                    }
                    break;
                case 1953259713:
                    if (strB.equals(n4.b.f6441d)) {
                        b = 3;
                    }
                    break;
            }
            if (b == 0) {
                this.b.a(q6VarH, jSONObjectC.optString(n4.c.a), jSONObjectC.optInt("connectionTimeout"), jSONObjectC.optInt("readTimeout"), a(q8Var, r8Var));
                return;
            }
            if (b == 1) {
                this.b.a(q6VarH);
                jSONObjectA = q6VarH.a();
            } else if (b == 2) {
                this.b.b(q6VarH);
                jSONObjectA = q6VarH.a();
            } else if (b == 3) {
                jSONObjectA = this.b.c(q6VarH);
            } else if (b == 4) {
                jSONObjectD = b(q8Var, this.b.d(q6VarH));
                r8Var.b(q8Var, jSONObjectD);
            } else {
                if (b != 5) {
                    return;
                }
                this.b.a(q6VarH, jSONObjectC.optJSONObject(n4.c.f6447g));
                jSONObjectA = q6VarH.a();
            }
            jSONObjectD = d(q8Var, jSONObjectA);
            r8Var.b(q8Var, jSONObjectD);
        } catch (Exception e2) {
            r8Var.a(q8Var, c(q8Var, e2.getMessage()));
        }
    }
}
