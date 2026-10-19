package com.applovin.impl.sdk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinUserSegment;

/* JADX INFO: loaded from: classes.dex */
class h implements AppLovinUserSegment {

    @Nullable
    private String name;

    h() {
    }

    @Override // com.applovin.sdk.AppLovinUserSegment
    @Nullable
    public String getName() {
        return this.name;
    }

    @Override // com.applovin.sdk.AppLovinUserSegment
    public void setName(@Nullable String str) {
        if (str != null) {
            if (str.length() > 32) {
                x.H("AppLovinUserSegment", "Setting name greater than 32 characters: " + str);
            }
            if (!StringUtils.isAlphaNumeric(str)) {
                x.H("AppLovinUserSegment", "Setting name that is not alphanumeric: " + str);
            }
        }
        this.name = str;
    }

    @NonNull
    public String toString() {
        return "AppLovinUserSegment{name=" + getName() + '}';
    }
}
