package com.bytedance.sdk.openadsdk.api.init;

import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.c;
import com.bytedance.sdk.component.f.d.c;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.PAGConstant;
import com.bytedance.sdk.openadsdk.core.v;
import com.bytedance.sdk.openadsdk.utils.ac;

/* JADX INFO: loaded from: classes2.dex */
public final class PAGConfig implements InitConfig {
    private static String l;
    private String a;
    private boolean b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1138d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1139e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1140f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1141g = 0;
    private boolean h;
    private boolean i;
    private String j;
    private String k;

    public static class Builder {
        private String a;
        private boolean b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1142d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1143e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f1144f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1145g = 0;
        private boolean h = true;
        private boolean i = false;
        private String[] j;
        private String k;
        private String l;

        public Builder appIcon(int i) {
            this.c = i;
            return this;
        }

        public Builder appId(String str) {
            this.a = str;
            return this;
        }

        public PAGConfig build() {
            PAGConfig pAGConfig = new PAGConfig();
            pAGConfig.b(this.a);
            pAGConfig.b(this.f1142d);
            pAGConfig.a(this.c);
            pAGConfig.e(this.f1145g);
            pAGConfig.b(this.h);
            pAGConfig.c(this.i);
            pAGConfig.c(this.f1143e);
            pAGConfig.d(this.f1144f);
            pAGConfig.a(this.b);
            pAGConfig.c(this.k);
            pAGConfig.a(this.l);
            return pAGConfig;
        }

        public Builder debugLog(boolean z) {
            this.b = z;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.j = strArr;
            return this;
        }

        public Builder setChildDirected(@PAGConstant.PAGChildDirectedType int i) {
            this.f1142d = i;
            return this;
        }

        public Builder setDoNotSell(@PAGConstant.PAGDoNotSellType int i) {
            this.f1144f = i;
            return this;
        }

        public Builder setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i) {
            this.f1143e = i;
            return this;
        }

        public Builder setPackageName(String str) {
            this.k = str;
            return this;
        }

        public Builder setUserData(String str) {
            this.l = str;
            return this;
        }

        public Builder supportMultiProcess(boolean z) {
            this.i = z;
            return this;
        }

        public Builder titleBarTheme(int i) {
            this.f1145g = i;
            return this;
        }

        public Builder useTextureView(boolean z) {
            this.h = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.c = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.k = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.b = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (i < -1 || i > 1) {
            i = -1;
        }
        this.f1138d = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        this.a = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        this.h = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        if (i < -1 || i > 1) {
            i = -1;
        }
        this.f1139e = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        this.j = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        this.i = z;
        c.a(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        if (i < -1 || i > 1) {
            i = -1;
        }
        this.f1140f = i;
    }

    public static void debugLog(boolean z) {
        if (v.a() != null) {
            if (z) {
                v.a().e(1);
                v.a().a();
                com.bykv.vk.openvk.component.video.api.f.c.a();
            } else {
                v.a().e(0);
                com.bytedance.sdk.component.f.d.c.a(c.a.OFF);
                l.c();
                com.bykv.vk.openvk.component.video.api.f.c.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        this.f1141g = i;
    }

    public static int getChildDirected() {
        if (ac.i("getCoppa")) {
            return v.a().b();
        }
        return -1;
    }

    public static int getDoNotSell() {
        if (ac.i("getCCPA")) {
            return v.a().f();
        }
        return -1;
    }

    public static int getGDPRConsent() {
        if (!ac.i("getGdpr")) {
            return -1;
        }
        int iC = v.a().c();
        if (iC == 1) {
            return 0;
        }
        if (iC == 0) {
            return 1;
        }
        return iC;
    }

    public static void setAppIconId(int i) {
        if (v.a() != null) {
            v.a().f(i);
        }
    }

    public static void setChildDirected(@PAGConstant.PAGChildDirectedType int i) {
        if (ac.i("setCoppa")) {
            if (i < -1 || i > 1) {
                i = -1;
            }
            v.a().b(i);
        }
    }

    public static void setDoNotSell(@PAGConstant.PAGDoNotSellType int i) {
        if (ac.i("setCCPA")) {
            if (i < -1 || i > 1) {
                i = -1;
            }
            v.a().d(i);
        }
    }

    public static void setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i) {
        ac.i("setGdpr");
        if (i < -1 || i > 1) {
            i = -1;
        }
        v.a().c(i);
    }

    public static void setPackageName(String str) {
        l = str;
    }

    public static void setUserData(String str) {
        if (v.a() != null) {
            v.a().b(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getAppIconId() {
        return this.c;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getAppId() {
        return this.a;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getCcpa() {
        return this.f1140f;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getCoppa() {
        return this.f1138d;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getData() {
        return this.k;
    }

    public boolean getDebugLog() {
        return this.b;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getGdpr() {
        return this.f1139e;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public String getPackageName() {
        return TextUtils.isEmpty(this.j) ? l : this.j;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public int getTitleBarTheme() {
        return this.f1141g;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isSupportMultiProcess() {
        return this.i;
    }

    @Override // com.bytedance.sdk.openadsdk.InitConfig
    public boolean isUseTextureView() {
        return this.h;
    }
}
