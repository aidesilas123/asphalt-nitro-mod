package com.bytedance.sdk.openadsdk;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bykv.vk.openvk.component.video.api.f.b;
import com.bytedance.sdk.component.utils.l;
import com.gameloft.adsmanager.JavaUtils;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdSlot {
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_CACHED_SPLASH = 4;
    public static final int TYPE_FEED = 5;
    public static final int TYPE_FULL_SCREEN_VIDEO = 8;
    public static final int TYPE_INTERACTION_AD = 2;
    public static final int TYPE_OPEN_AD = 3;
    public static final int TYPE_REWARD_VIDEO = 7;
    private Map<String, Object> A;
    private String a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f1097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1099g;
    private String h;
    private int i;
    private String j;
    private String k;
    private int l;
    private boolean m;
    private boolean n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private int t;
    private int u;
    private int v;
    private int w;
    private JSONArray x;
    private Bundle y;
    private String z;

    public static class Builder {
        private String a;
        private String h;
        private int j;
        private float k;
        private float l;
        private boolean m;
        private String n;
        private String o;
        private String p;
        private String q;
        private String r;
        private Bundle u;
        private String v;
        private int w;
        private int b = 640;
        private int c = JavaUtils.Constants.BANNER_WIDTH_DP;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1100d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1101e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final String f1102f = "";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f1103g = 0;
        private String i = "defaultUser";
        private boolean s = true;
        private Map<String, Object> t = null;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.a = this.a;
            adSlot.f1098f = this.f1101e;
            adSlot.f1099g = true;
            adSlot.b = this.b;
            adSlot.c = this.c;
            float f2 = this.k;
            if (f2 <= 0.0f) {
                adSlot.f1096d = this.b;
                adSlot.f1097e = this.c;
            } else {
                adSlot.f1096d = f2;
                adSlot.f1097e = this.l;
            }
            adSlot.h = "";
            adSlot.i = 0;
            adSlot.j = this.h;
            adSlot.k = this.i;
            adSlot.l = this.j;
            adSlot.m = this.s;
            adSlot.n = this.m;
            adSlot.o = this.n;
            adSlot.p = this.o;
            adSlot.q = this.p;
            adSlot.r = this.q;
            adSlot.s = this.r;
            adSlot.A = this.t;
            Bundle bundle = this.u;
            if (bundle == null) {
                bundle = new Bundle();
            }
            adSlot.y = bundle;
            adSlot.z = this.v;
            adSlot.w = this.w;
            return adSlot;
        }

        public Builder isExpressAd(boolean z) {
            this.m = z;
            return this;
        }

        public Builder setAdCount(int i) {
            if (i <= 0) {
                i = 1;
                l.c(TTAdConstant.TAG, "setAdCount: adCount must greater than 0 ");
            }
            if (i > 20) {
                l.c(TTAdConstant.TAG, "setAdCount: adCount must less than or equal to 20 ");
                i = 20;
            }
            this.f1101e = i;
            return this;
        }

        public Builder setAdId(String str) {
            this.o = str;
            return this;
        }

        public Builder setCodeId(String str) {
            this.a = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.p = str;
            return this;
        }

        public Builder setDurationSlotType(int i) {
            this.w = i;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f2, float f3) {
            this.k = f2;
            this.l = f3;
            return this;
        }

        public Builder setExt(String str) {
            this.q = str;
            return this;
        }

        public Builder setImageAcceptedSize(int i, int i2) {
            this.b = i;
            this.c = i2;
            return this;
        }

        public Builder setIsAutoPlay(boolean z) {
            this.s = z;
            return this;
        }

        public Builder setLinkId(String str) {
            this.v = str;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.h = str;
            return this;
        }

        public Builder setNativeAdType(int i) {
            this.j = i;
            return this;
        }

        public Builder setNetworkExtrasBundle(Bundle bundle) {
            this.u = bundle;
            return this;
        }

        public Builder setRequestExtraMap(Map<String, Object> map) {
            this.t = map;
            return this;
        }

        @Deprecated
        public Builder setRewardAmount(int i) {
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            return this;
        }

        @Deprecated
        public Builder setSupportDeepLink(boolean z) {
            return this;
        }

        public Builder setUserData(String str) {
            this.r = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.i = str;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (l.d()) {
                l.c("bidding", "AdSlot -> bidAdm=" + b.a(str));
            }
            this.n = str;
            return this;
        }
    }

    private AdSlot() {
        this.m = true;
        this.n = false;
        this.t = 0;
        this.u = 0;
        this.v = 0;
    }

    public static int getPosition(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return (i == 3 || i == 4 || i == 7 || i == 8) ? 5 : 3;
        }
        return 4;
    }

    public static AdSlot getSlot(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            int iOptInt = jSONObject.optInt("mImgAcceptedWidth", 640);
            int iOptInt2 = jSONObject.optInt("mImgAcceptedHeight", JavaUtils.Constants.BANNER_WIDTH_DP);
            double dOptDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double dOptDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            builder.setCodeId(jSONObject.optString("mCodeId", null));
            builder.setAdCount(jSONObject.optInt("mAdCount", 1));
            builder.setIsAutoPlay(jSONObject.optBoolean("mIsAutoPlay"));
            builder.setImageAcceptedSize(iOptInt, iOptInt2);
            builder.setExpressViewAcceptedSize(Double.valueOf(dOptDouble).floatValue(), Double.valueOf(dOptDouble2).floatValue());
            builder.setSupportDeepLink(jSONObject.optBoolean("mSupportDeepLink", false));
            builder.setRewardName(jSONObject.optString("mRewardName", null));
            builder.setRewardAmount(jSONObject.optInt("mRewardAmount"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra", null));
            builder.setUserID(jSONObject.optString("mUserID", null));
            builder.setNativeAdType(jSONObject.optInt("mNativeAdType"));
            builder.isExpressAd(jSONObject.optBoolean("mIsExpressAd"));
            builder.withBid(jSONObject.optString("mBidAdm"));
            builder.setAdId(jSONObject.optString("mAdId"));
            builder.setCreativeId(jSONObject.optString("mCreativeId"));
            builder.setExt(jSONObject.optString("mExt"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra"));
        } catch (Exception unused) {
        }
        AdSlot adSlotBuild = builder.build();
        adSlotBuild.setDurationSlotType(jSONObject.optInt("mDurationSlotType"));
        return adSlotBuild;
    }

    public int getAdCount() {
        return this.f1098f;
    }

    public String getAdId() {
        return this.p;
    }

    public String getBidAdm() {
        return this.o;
    }

    public JSONArray getBiddingTokens() {
        return this.x;
    }

    public String getCodeId() {
        return this.a;
    }

    public String getCreativeId() {
        return this.q;
    }

    public int getDurationSlotType() {
        return this.w;
    }

    public float getExpressViewAcceptedHeight() {
        return this.f1097e;
    }

    public float getExpressViewAcceptedWidth() {
        return this.f1096d;
    }

    public String getExt() {
        return this.r;
    }

    public int getImgAcceptedHeight() {
        return this.c;
    }

    public int getImgAcceptedWidth() {
        return this.b;
    }

    public int getIsRotateBanner() {
        return this.t;
    }

    public String getLinkId() {
        return this.z;
    }

    public String getMediaExtra() {
        return this.j;
    }

    public int getNativeAdType() {
        return this.l;
    }

    public Bundle getNetworkExtrasBundle() {
        return this.y;
    }

    @Nullable
    public Map<String, Object> getRequestExtraMap() {
        return this.A;
    }

    @Deprecated
    public int getRewardAmount() {
        return this.i;
    }

    @Deprecated
    public String getRewardName() {
        return this.h;
    }

    public int getRotateOrder() {
        return this.v;
    }

    public int getRotateTime() {
        return this.u;
    }

    public String getUserData() {
        return this.s;
    }

    public String getUserID() {
        return this.k;
    }

    public boolean isAutoPlay() {
        return this.m;
    }

    public boolean isExpressAd() {
        return this.n;
    }

    public boolean isSupportDeepLink() {
        return this.f1099g;
    }

    public void setAdCount(int i) {
        this.f1098f = i;
    }

    public void setBiddingTokens(JSONArray jSONArray) {
        this.x = jSONArray;
    }

    public void setDurationSlotType(int i) {
        this.w = i;
    }

    public void setIsRotateBanner(int i) {
        this.t = i;
    }

    public void setNativeAdType(int i) {
        this.l = i;
    }

    public void setRotateOrder(int i) {
        this.v = i;
    }

    public void setRotateTime(int i) {
        this.u = i;
    }

    public void setUserData(String str) {
        this.s = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.a);
            jSONObject.put("mAdCount", this.f1098f);
            jSONObject.put("mIsAutoPlay", this.m);
            jSONObject.put("mImgAcceptedWidth", this.b);
            jSONObject.put("mImgAcceptedHeight", this.c);
            jSONObject.put("mExpressViewAcceptedWidth", this.f1096d);
            jSONObject.put("mExpressViewAcceptedHeight", this.f1097e);
            jSONObject.put("mSupportDeepLink", this.f1099g);
            jSONObject.put("mRewardName", this.h);
            jSONObject.put("mRewardAmount", this.i);
            jSONObject.put("mMediaExtra", this.j);
            jSONObject.put("mUserID", this.k);
            jSONObject.put("mNativeAdType", this.l);
            jSONObject.put("mIsExpressAd", this.n);
            jSONObject.put("mAdId", this.p);
            jSONObject.put("mCreativeId", this.q);
            jSONObject.put("mExt", this.r);
            jSONObject.put("mBidAdm", this.o);
            jSONObject.put("mUserData", this.s);
            jSONObject.put("mDurationSlotType", this.w);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return super.toString();
    }
}
