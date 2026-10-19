package com.json.adapters.admob.banner;

import com.json.adapters.admob.R;
import com.json.mediationsdk.ISBannerSize;
import org.json.JSONObject;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'NB_TMP_BASIC' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: AdMobNativeBannerViewHandler.java */
/* JADX INFO: loaded from: classes3.dex */
final class NativeTemplateType {
    private static final /* synthetic */ NativeTemplateType[] $VALUES;
    private static final String NATIVE_TEMPLATE_NAME = "nativeBannerTemplateName";
    public static final NativeTemplateType NB_TMP_BASIC;
    public static final NativeTemplateType NB_TMP_BASIC_LARGE;
    public static final NativeTemplateType NB_TMP_ICON_TEXT;
    public static final NativeTemplateType NB_TMP_RECT;
    public static final NativeTemplateType NB_TMP_TEXT_CTA;
    private final int mAdChoicesPlacement;
    private final boolean mHideCallToAction;
    private final boolean mHideVideoContent;
    private final int mLayoutId;
    private final int mMediaAspectRatio;

    static {
        int i = R.layout.ad_mob_native_banner_template_basic_layout;
        NativeTemplateType nativeTemplateType = new NativeTemplateType("NB_TMP_BASIC", 0, i, true, true, 1, 1);
        NB_TMP_BASIC = nativeTemplateType;
        NativeTemplateType nativeTemplateType2 = new NativeTemplateType("NB_TMP_BASIC_LARGE", 1, i, false, true, 1, 1);
        NB_TMP_BASIC_LARGE = nativeTemplateType2;
        NativeTemplateType nativeTemplateType3 = new NativeTemplateType("NB_TMP_ICON_TEXT", 2, R.layout.ad_mob_native_banner_template_icon_text_layout, true, true, 1, 1);
        NB_TMP_ICON_TEXT = nativeTemplateType3;
        NativeTemplateType nativeTemplateType4 = new NativeTemplateType("NB_TMP_TEXT_CTA", 3, R.layout.ad_mob_native_banner_template_text_cta_layout, false, true, 3, 1);
        NB_TMP_TEXT_CTA = nativeTemplateType4;
        NativeTemplateType nativeTemplateType5 = new NativeTemplateType("NB_TMP_RECT", 4, R.layout.ad_mob_native_banner_template_rect_layout, false, false, 1, 1);
        NB_TMP_RECT = nativeTemplateType5;
        $VALUES = new NativeTemplateType[]{nativeTemplateType, nativeTemplateType2, nativeTemplateType3, nativeTemplateType4, nativeTemplateType5};
    }

    private NativeTemplateType(String str, int i, int i2, boolean z, boolean z2, int i3, int i4) {
        this.mLayoutId = i2;
        this.mHideCallToAction = z;
        this.mHideVideoContent = z2;
        this.mAdChoicesPlacement = i3;
        this.mMediaAspectRatio = i4;
    }

    public static NativeTemplateType createTemplateType(JSONObject jSONObject, ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
                return NB_TMP_RECT;
            case "LARGE":
                return NB_TMP_BASIC_LARGE;
            case "SMART":
            case "BANNER":
                try {
                    return valueOf(jSONObject.optString(NATIVE_TEMPLATE_NAME, NB_TMP_ICON_TEXT.toString()));
                } catch (IllegalArgumentException unused) {
                    return NB_TMP_ICON_TEXT;
                }
            default:
                return NB_TMP_BASIC;
        }
    }

    public static NativeTemplateType valueOf(String str) {
        return (NativeTemplateType) Enum.valueOf(NativeTemplateType.class, str);
    }

    public static NativeTemplateType[] values() {
        return (NativeTemplateType[]) $VALUES.clone();
    }

    public int getAdChoicesPlacement() {
        return this.mAdChoicesPlacement;
    }

    public int getLayoutId() {
        return this.mLayoutId;
    }

    public int getMediaAspectRatio() {
        return this.mMediaAspectRatio;
    }

    public boolean shouldHideCallToAction() {
        return this.mHideCallToAction;
    }

    public boolean shouldHideVideoContent() {
        return this.mHideVideoContent;
    }
}
