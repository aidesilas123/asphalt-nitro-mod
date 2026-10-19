package com.fyber.inneractive.sdk.bidder;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.fyber.inneractive.sdk.bidder.TokenParametersOuterClass$TokenParameters;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[UnitDisplayType.values().length];
            a = iArr;
            try {
                iArr[UnitDisplayType.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UnitDisplayType.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[UnitDisplayType.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[UnitDisplayType.MRECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static TokenParametersOuterClass$TokenParameters.NullableBool a(Boolean bool) {
        TokenParametersOuterClass$TokenParameters.NullableBool.a aVarNewBuilder = TokenParametersOuterClass$TokenParameters.NullableBool.newBuilder();
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            aVarNewBuilder.c();
            ((TokenParametersOuterClass$TokenParameters.NullableBool) aVarNewBuilder.b).setData(zBooleanValue);
        }
        return aVarNewBuilder.a();
    }

    public static TokenParametersOuterClass$TokenParameters.NullableUInt32 a(int i) {
        TokenParametersOuterClass$TokenParameters.NullableUInt32.a aVarNewBuilder = TokenParametersOuterClass$TokenParameters.NullableUInt32.newBuilder();
        if (i > 0) {
            aVarNewBuilder.c();
            ((TokenParametersOuterClass$TokenParameters.NullableUInt32) aVarNewBuilder.b).setData(i);
        }
        return aVarNewBuilder.a();
    }

    public static TokenParametersOuterClass$TokenParameters.d a(String str) {
        return !str.equals(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE) ? !str.equals("unity3d") ? TokenParametersOuterClass$TokenParameters.d.UNRECOGNIZED : TokenParametersOuterClass$TokenParameters.d.UNITY3D : TokenParametersOuterClass$TokenParameters.d.NATIVE;
    }

    public static TokenParametersOuterClass$TokenParameters.k a(UnitDisplayType unitDisplayType) {
        int i = a.a[unitDisplayType.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? TokenParametersOuterClass$TokenParameters.k.UNITDISPLAYTYPEUNKNOWN : TokenParametersOuterClass$TokenParameters.k.MRECT : TokenParametersOuterClass$TokenParameters.k.REWARDED : TokenParametersOuterClass$TokenParameters.k.INTERSTITIAL : TokenParametersOuterClass$TokenParameters.k.BANNER;
    }

    public static TokenParametersOuterClass$TokenParameters.NullableUInt32 b(String str) {
        TokenParametersOuterClass$TokenParameters.NullableUInt32.a aVarNewBuilder = TokenParametersOuterClass$TokenParameters.NullableUInt32.newBuilder();
        if (!TextUtils.isEmpty(str)) {
            int i = Integer.parseInt(str);
            aVarNewBuilder.c();
            ((TokenParametersOuterClass$TokenParameters.NullableUInt32) aVarNewBuilder.b).setData(i);
        }
        return aVarNewBuilder.a();
    }

    public static TokenParametersOuterClass$TokenParameters.NullableString c(String str) {
        TokenParametersOuterClass$TokenParameters.NullableString.a aVarNewBuilder = TokenParametersOuterClass$TokenParameters.NullableString.newBuilder();
        if (!TextUtils.isEmpty(str)) {
            aVarNewBuilder.c();
            ((TokenParametersOuterClass$TokenParameters.NullableString) aVarNewBuilder.b).setData(str);
        }
        return aVarNewBuilder.a();
    }
}
