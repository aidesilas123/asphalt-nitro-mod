package com.mbridge.msdk.dycreator.bridge;

import com.mbridge.msdk.dycreator.f.a.a;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes4.dex */
public class MBSplashData implements a {
    private DyOption a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6907d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6908e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CampaignEx f6909f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6910g;
    private int h;
    private float i;
    private float j;
    private int k = 0;

    public MBSplashData(DyOption dyOption) {
        this.a = dyOption;
        this.f6909f = dyOption.getCampaignEx();
    }

    public String getAdClickText() {
        return this.c;
    }

    public String getAppInfo() {
        return this.b;
    }

    @Override // com.mbridge.msdk.dycreator.f.a.a
    public CampaignEx getBindData() {
        return this.f6909f;
    }

    public int getClickType() {
        return this.k;
    }

    public String getCountDownText() {
        return this.f6907d;
    }

    public DyOption getDyOption() {
        return this.a;
    }

    @Override // com.mbridge.msdk.dycreator.f.a.a
    public DyOption getEffectData() {
        return this.a;
    }

    public int getLogoImage() {
        return this.h;
    }

    public String getLogoText() {
        return this.f6908e;
    }

    public int getNoticeImage() {
        return this.f6910g;
    }

    public float getxInScreen() {
        return this.i;
    }

    public float getyInScreen() {
        return this.j;
    }

    public void setAdClickText(String str) {
        this.c = str;
    }

    public void setAppInfo(String str) {
        this.b = str;
    }

    public void setClickType(int i) {
        this.k = i;
    }

    public void setCountDownText(String str) {
        this.f6907d = str;
    }

    public void setLogoImage(int i) {
        this.h = i;
    }

    public void setLogoText(String str) {
        this.f6908e = str;
    }

    public void setNoticeImage(int i) {
        this.f6910g = i;
    }

    public void setxInScreen(float f2) {
        this.i = f2;
    }

    public void setyInScreen(float f2) {
        this.j = f2;
    }
}
