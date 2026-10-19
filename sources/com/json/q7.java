package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.u1;

/* JADX INFO: loaded from: classes2.dex */
public class q7 extends u1 {
    private static q7 Q;
    private String R;
    private final z6 S = e9.h().d();

    private q7() {
        this.H = "ironbeast";
        this.G = 2;
        this.I = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.R = "";
    }

    public static synchronized q7 i() {
        if (Q == null) {
            q7 q7Var = new q7();
            Q = q7Var;
            q7Var.F();
        }
        return Q;
    }

    @Override // com.json.u1
    protected void C() {
        this.J.add(2001);
        this.J.add(2002);
        this.J.add(2003);
        this.J.add(2004);
        this.J.add(2200);
        this.J.add(2213);
        this.J.add(2211);
        this.J.add(2212);
        this.J.add(3001);
        this.J.add(Integer.valueOf(IronSourceConstants.BN_CALLBACK_LOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_RELOAD));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_CALLBACK_RELOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_CALLBACK_RELOAD_SUCCESS));
        this.J.add(3002);
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_RELOAD));
        this.J.add(3005);
        this.J.add(3300);
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_RELOAD_SUCCESS));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_RELOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_UNEXPECTED_LOAD_SUCCESS));
        this.J.add(Integer.valueOf(IronSourceConstants.BN_INSTANCE_UNEXPECTED_RELOAD_SUCCESS));
        this.J.add(3009);
        this.J.add(4001);
        this.J.add(Integer.valueOf(IronSourceConstants.NT_CALLBACK_LOAD_ERROR));
        this.J.add(4002);
        this.J.add(4005);
        this.J.add(Integer.valueOf(IronSourceConstants.NT_INSTANCE_LOAD_ERROR));
        this.J.add(Integer.valueOf(IronSourceConstants.NT_INSTANCE_SHOW));
    }

    @Override // com.json.u1
    protected boolean D(a4 a4Var) {
        int iC = a4Var.c();
        return iC == 2004 || iC == 2005 || iC == 2204 || iC == 2301 || iC == 2300 || iC == 3009 || iC == 3502 || iC == 3501 || iC == 4005 || iC == 4009 || iC == 4502 || iC == 4501;
    }

    @Override // com.json.u1
    protected String E(int i) {
        return this.R;
    }

    @Override // com.json.u1
    protected void K(a4 a4Var) {
        this.R = a4Var.b().optString("placement");
    }

    @Override // com.json.u1
    protected boolean U(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected boolean W(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected int y(a4 a4Var) {
        z6 z6Var;
        IronSource.AD_UNIT ad_unit;
        int I = I(a4Var.c());
        if (I == u1.e.BANNER.a()) {
            z6Var = this.S;
            ad_unit = IronSource.AD_UNIT.BANNER;
        } else if (I == u1.e.NATIVE_AD.a()) {
            z6Var = this.S;
            ad_unit = IronSource.AD_UNIT.NATIVE_AD;
        } else {
            z6Var = this.S;
            ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
        }
        return z6Var.a(ad_unit);
    }
}
