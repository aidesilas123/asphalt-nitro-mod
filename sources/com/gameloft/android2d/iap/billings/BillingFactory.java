package com.gameloft.android2d.iap.billings;

import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling;
import com.gameloft.android2d.iap.utils.SUtils;

/* JADX INFO: loaded from: classes2.dex */
public class BillingFactory {
    public static a CreateBilling(String str) {
        if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_GoogleBilling))) {
            return new GoogleBilling();
        }
        return null;
    }
}
