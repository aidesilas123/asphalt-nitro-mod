package com.json;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class r2 {
    public static final String a = "SSA_CORE.SDKController.runFunction";

    public static String a(s2 s2Var) {
        return String.format("%1$s('%2$s%3$s'%4$s)", a, s2Var.b(), b(s2Var.c()), c(s2Var));
    }

    private static String b(JSONObject jSONObject) {
        return (jSONObject == null || jSONObject.length() == 0) ? "" : jSONObject.toString();
    }

    private static String c(s2 s2Var) {
        return (s2Var.d() == null || s2Var.a() == null) ? "" : String.format(", '%1$s', '%2$s'", s2Var.d(), s2Var.a());
    }
}
