package com.json;

import com.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes2.dex */
public class gb {
    public static a a = new a(2001, a("initsdk"));
    public static a b = new a(2026, a("sdkrecoverstart"));
    public static a c = new a(2002, a("createcontrollerweb"));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static a f6118d = new a(2003, a("createcontrollernative"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static a f6119e = new a(2004, a("controllerstageready"));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static a f6120f = new a(2005, a("loadad"));

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static a f6121g = new a(2006, a("loadadfailed"));
    public static a h = new a(2007, a("initproduct"));
    public static a i = new a(2008, a("initproductfailed"));
    public static a j = new a(2009, a("loadproduct"));
    public static a k = new a(2010, a("parseadmfailed"));
    public static a l = new a(2011, a("loadadsuccess"));
    public static a m = new a(2027, a("destroyproduct"));
    public static a n = new a(2030, a("registerad"));
    public static a o = new a(2013, a("controllerfailed"));
    public static a p = new a(2015, a("appendnativefeaturesdatafailed"));
    public static a q = new a(2016, a("adunitcouldnotloadtowebview"));
    public static a r = new a(2017, a("webviewcleanupfailed"));
    public static a s = new a(2018, a("removewebviewfailed"));
    public static a t = new a(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN, a("banneralreadydestroyed"));
    public static a u = new a(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_SUCCESS, a("fialedregactlifecycle"));
    public static a v = new a(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_FAILED, a("loadcontrollerhtml"));
    public static a w = new a(IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_TIMED_OUT, a("controllerhtmlsuccess"));
    public static a x = new a(2024, a("controllerhtmlfailed"));
    public static a y = new a(2025, a("webviewcrashrpg"));
    public static a z = new a(2031, a("getorientationcalled"));

    public static class a {
        String a;
        int b;

        a(int i, String str) {
            this.b = i;
            this.a = str;
        }
    }

    static String a(String str) {
        return b4.c + str;
    }
}
