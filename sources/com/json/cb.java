package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.u1;

/* JADX INFO: loaded from: classes2.dex */
public class cb extends u1 {
    private static cb Q;
    private String R;
    private final z6 S = e9.h().d();

    private cb() {
        this.H = "outcome";
        this.G = 3;
        this.I = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.R = "";
    }

    public static synchronized cb i() {
        if (Q == null) {
            cb cbVar = new cb();
            Q = cbVar;
            cbVar.F();
        }
        return Q;
    }

    @Override // com.json.u1
    protected void C() {
        this.J.add(1000);
        this.J.add(1001);
        this.J.add(1002);
        this.J.add(1003);
        this.J.add(1200);
        this.J.add(Integer.valueOf(IronSourceConstants.RV_INSTANCE_SHOW_CHANCE));
        this.J.add(1210);
        this.J.add(1211);
        this.J.add(Integer.valueOf(IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON));
        this.J.add(1213);
        this.J.add(Integer.valueOf(IronSourceConstants.RV_MEDIATION_LOAD_ERROR));
    }

    @Override // com.json.u1
    protected boolean D(a4 a4Var) {
        int iC = a4Var.c();
        return iC == 14 || iC == 514 || iC == 305 || iC == 1003 || iC == 1005 || iC == 1203 || iC == 1010 || iC == 1301 || iC == 1302;
    }

    @Override // com.json.u1
    protected String E(int i) {
        return (i == 15 || (i >= 300 && i < 400)) ? this.R : "";
    }

    @Override // com.json.u1
    protected void K(a4 a4Var) {
        if (a4Var.c() == 15 || (a4Var.c() >= 300 && a4Var.c() < 400)) {
            this.R = a4Var.b().optString("placement");
        }
    }

    @Override // com.json.u1
    protected boolean U(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected boolean W(a4 a4Var) {
        return a4Var.c() == 305;
    }

    @Override // com.json.u1
    protected int y(a4 a4Var) {
        return this.S.a(I(a4Var.c()) == u1.e.OFFERWALL.a() ? IronSource.AD_UNIT.OFFERWALL : IronSource.AD_UNIT.REWARDED_VIDEO);
    }
}
