package com.google.zxing.oned;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: compiled from: Code93Reader.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f extends m {
    private static final char[] a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
    static final int[] b;
    static final int c;

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, TypedValues.CycleType.TYPE_WAVE_OFFSET, TypedValues.CycleType.TYPE_EASING, 418, TTAdConstant.DEEPLINK_FALLBACK_CODE, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 278, 436, 434, 428, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, TTAdConstant.LANDING_PAGE_TYPE_CODE, TTAdConstant.IMAGE_LIST_SIZE_CODE, 364, 358, 310, 314, 302, 468, 466, FacebookRequestErrorClassification.ESC_APP_NOT_INSTALLED, 366, 374, 430, 294, 474, 470, 306, 350};
        b = iArr;
        c = iArr[47];
    }
}
