package com.fyber.inneractive.sdk.config.global.features;

import com.vungle.ads.internal.presenter.MRAIDPresenter;

/* JADX INFO: loaded from: classes2.dex */
public class a extends g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final EnumC0152a f1958e = EnumC0152a.NONE;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.config.global.features.a$a, reason: collision with other inner class name */
    public enum EnumC0152a {
        NONE("none"),
        OPEN(MRAIDPresenter.OPEN);

        public String mKey;

        EnumC0152a(String str) {
            this.mKey = str;
        }
    }

    public a() {
        super("ad_identifier");
    }

    @Override // com.fyber.inneractive.sdk.config.global.features.g
    public g b() {
        a aVar = new a();
        a(aVar);
        return aVar;
    }
}
