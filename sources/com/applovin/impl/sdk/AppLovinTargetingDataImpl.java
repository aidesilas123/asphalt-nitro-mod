package com.applovin.impl.sdk;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdContentRating;
import com.applovin.sdk.AppLovinGender;
import com.applovin.sdk.AppLovinTargetingData;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinTargetingDataImpl implements AppLovinTargetingData {
    private final Map<String, String> azT = new HashMap();
    private final Object azU = new Object();

    @Nullable
    private Integer azV = null;

    @Nullable
    private AppLovinGender azW = null;

    @Nullable
    private AppLovinAdContentRating azX = null;

    @Nullable
    private String azY = null;

    @Nullable
    private String azZ = null;

    @Nullable
    private List<String> aoI = null;

    @Nullable
    private List<String> aAa = null;

    private void y(String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.azU) {
            if (StringUtils.isValidString(str2)) {
                this.azT.put(str, str2);
            } else {
                this.azT.remove(str);
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void clearAll() {
        synchronized (this.azU) {
            this.azT.clear();
        }
        this.azV = null;
        this.azW = null;
        this.azX = null;
        this.azY = null;
        this.azZ = null;
        this.aoI = null;
        this.aAa = null;
    }

    public Map<String, String> getAllData() {
        Map<String, String> map;
        synchronized (this.azU) {
            map = CollectionUtils.map(this.azT);
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public String getEmail() {
        return this.azY;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public AppLovinGender getGender() {
        return this.azW;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public List<String> getInterests() {
        return this.aAa;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public List<String> getKeywords() {
        return this.aoI;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public AppLovinAdContentRating getMaximumAdContentRating() {
        return this.azX;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public String getPhoneNumber() {
        return this.azZ;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    @Nullable
    public Integer getYearOfBirth() {
        return this.azV;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setEmail(@Nullable String str) {
        y("email", str != null ? StringUtils.toFullSHA1Hash(str.toLowerCase().trim()) : str);
        this.azY = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    @Override // com.applovin.sdk.AppLovinTargetingData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setGender(@androidx.annotation.Nullable com.applovin.sdk.AppLovinGender r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L17
            com.applovin.sdk.AppLovinGender r0 = com.applovin.sdk.AppLovinGender.FEMALE
            if (r3 != r0) goto L9
            java.lang.String r0 = "F"
            goto L18
        L9:
            com.applovin.sdk.AppLovinGender r0 = com.applovin.sdk.AppLovinGender.MALE
            if (r3 != r0) goto L10
            java.lang.String r0 = "M"
            goto L18
        L10:
            com.applovin.sdk.AppLovinGender r0 = com.applovin.sdk.AppLovinGender.OTHER
            if (r3 != r0) goto L17
            java.lang.String r0 = "O"
            goto L18
        L17:
            r0 = 0
        L18:
            java.lang.String r1 = "gender"
            r2.y(r1, r0)
            r2.azW = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.AppLovinTargetingDataImpl.setGender(com.applovin.sdk.AppLovinGender):void");
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setInterests(@Nullable List<String> list) {
        y("interests", list == null ? null : CollectionUtils.implode(list, list.size()));
        this.aAa = list;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setKeywords(@Nullable List<String> list) {
        y("keywords", list == null ? null : CollectionUtils.implode(list, list.size()));
        this.aoI = list;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setMaximumAdContentRating(@Nullable AppLovinAdContentRating appLovinAdContentRating) {
        y("maximum_ad_content_rating", (appLovinAdContentRating == null || appLovinAdContentRating == AppLovinAdContentRating.NONE) ? null : Integer.toString(appLovinAdContentRating.ordinal()));
        this.azX = appLovinAdContentRating;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setPhoneNumber(@Nullable String str) {
        y("phone_number", str != null ? StringUtils.toFullSHA1Hash(str.replaceAll("[^0-9]", "")) : str);
        this.azZ = str;
    }

    @Override // com.applovin.sdk.AppLovinTargetingData
    public void setYearOfBirth(@Nullable Integer num) {
        y("year_of_birth", num == null ? null : Integer.toString(num.intValue()));
        this.azV = num;
    }
}
