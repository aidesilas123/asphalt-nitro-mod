package com.json.mediationsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import com.json.m1;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.model.InterstitialPlacement;
import com.json.mediationsdk.model.Placement;
import com.json.n9;
import com.json.na;
import com.json.oa;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[oa.values().length];
            a = iArr;
            try {
                iArr[oa.PER_DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[oa.PER_HOUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.mediationsdk.utils.b$b, reason: collision with other inner class name */
    public enum EnumC0360b {
        CAPPED_PER_DELIVERY,
        CAPPED_PER_COUNT,
        CAPPED_PER_PACE,
        NOT_CAPPED
    }

    private static long a(oa oaVar) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        int i = a.a[oaVar.ordinal()];
        if (i == 1) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.set(11, 0);
            calendar.add(6, 1);
        } else if (i == 2) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.add(11, 1);
        }
        return calendar.getTimeInMillis();
    }

    public static synchronized void a(Context context, m1 m1Var) {
        if (context == null || m1Var == null) {
            return;
        }
        na placementAvailabilitySettings = m1Var.getPlacementAvailabilitySettings();
        if (placementAvailabilitySettings == null) {
            return;
        }
        e(context, "Banner", m1Var.getPlacementName(), placementAvailabilitySettings);
    }

    public static synchronized void a(Context context, InterstitialPlacement interstitialPlacement) {
        if (context == null || interstitialPlacement == null) {
            return;
        }
        na placementAvailabilitySettings = interstitialPlacement.getPlacementAvailabilitySettings();
        if (placementAvailabilitySettings == null) {
            return;
        }
        e(context, "Interstitial", interstitialPlacement.getPlacementName(), placementAvailabilitySettings);
    }

    public static synchronized void a(Context context, Placement placement) {
        if (context == null || placement == null) {
            return;
        }
        na placementAvailabilitySettings = placement.getPlacementAvailabilitySettings();
        if (placementAvailabilitySettings == null) {
            return;
        }
        e(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName(), placementAvailabilitySettings);
    }

    public static synchronized void a(Context context, n9 n9Var) {
        if (context == null || n9Var == null) {
            return;
        }
        na placementAvailabilitySettings = n9Var.getPlacementAvailabilitySettings();
        if (placementAvailabilitySettings == null) {
            return;
        }
        e(context, IronSourceConstants.NATIVE_AD_UNIT, n9Var.getPlacementName(), placementAvailabilitySettings);
    }

    public static synchronized void a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            d(context, "Banner", str);
        }
    }

    public static synchronized void a(Context context, String str, IronSource.AD_UNIT ad_unit) {
        d(context, b(ad_unit), str);
    }

    private static String b(IronSource.AD_UNIT ad_unit) {
        return ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO ? IronSourceConstants.REWARDED_VIDEO_AD_UNIT : ad_unit == IronSource.AD_UNIT.INTERSTITIAL ? "Interstitial" : ad_unit == IronSource.AD_UNIT.BANNER ? "Banner" : ad_unit == IronSource.AD_UNIT.NATIVE_AD ? IronSourceConstants.NATIVE_AD_UNIT : ad_unit.toString();
    }

    public static synchronized void b(Context context, InterstitialPlacement interstitialPlacement) {
        if (interstitialPlacement != null) {
            d(context, "Interstitial", interstitialPlacement.getPlacementName());
        }
    }

    public static synchronized void b(Context context, Placement placement) {
        if (placement != null) {
            d(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName());
        }
    }

    public static synchronized void b(Context context, String str) {
        d(context, "Interstitial", str);
    }

    public static synchronized boolean b(Context context, String str, IronSource.AD_UNIT ad_unit) {
        return f(context, b(ad_unit), str) != EnumC0360b.NOT_CAPPED;
    }

    public static synchronized EnumC0360b c(Context context, InterstitialPlacement interstitialPlacement) {
        if (context != null && interstitialPlacement != null) {
            if (interstitialPlacement.getPlacementAvailabilitySettings() != null) {
                return f(context, "Interstitial", interstitialPlacement.getPlacementName());
            }
        }
        return EnumC0360b.NOT_CAPPED;
    }

    public static synchronized EnumC0360b c(Context context, Placement placement) {
        if (context != null && placement != null) {
            if (placement.getPlacementAvailabilitySettings() != null) {
                return f(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, placement.getPlacementName());
            }
        }
        return EnumC0360b.NOT_CAPPED;
    }

    private static String c(String str, String str2, String str3) {
        return str + "_" + str2 + "_" + str3;
    }

    public static synchronized void c(Context context, String str) {
        d(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, str);
    }

    private static void d(Context context, String str, String str2) {
        int i = 0;
        if (IronSourceUtils.a(context, c(str, "CappingManager.IS_PACING_ENABLED", str2), false)) {
            IronSourceUtils.n(context, c(str, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW", str2), System.currentTimeMillis());
        }
        if (IronSourceUtils.a(context, c(str, "CappingManager.IS_CAPPING_ENABLED", str2), false)) {
            IronSourceUtils.i(context, c(str, "CappingManager.MAX_NUMBER_OF_SHOWS", str2), 0);
            String strC = c(str, "CappingManager.CURRENT_NUMBER_OF_SHOWS", str2);
            int i2 = IronSourceUtils.i(context, strC, 0);
            if (i2 == 0) {
                String strK = IronSourceUtils.k(context, c(str, "CappingManager.CAPPING_TYPE", str2), oa.PER_DAY.toString());
                oa oaVar = null;
                oa[] oaVarArrValues = oa.values();
                int length = oaVarArrValues.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    oa oaVar2 = oaVarArrValues[i];
                    if (oaVar2.a.equals(strK)) {
                        oaVar = oaVar2;
                        break;
                    }
                    i++;
                }
                IronSourceUtils.n(context, c(str, "CappingManager.CAPPING_TIME_THRESHOLD", str2), a(oaVar));
            }
            IronSourceUtils.m(context, strC, i2 + 1);
        }
    }

    public static synchronized boolean d(Context context, String str) {
        return f(context, "Banner", str) != EnumC0360b.NOT_CAPPED;
    }

    private static void e(Context context, String str, String str2, na naVar) {
        boolean zE = naVar.e();
        IronSourceUtils.l(context, c(str, "CappingManager.IS_DELIVERY_ENABLED", str2), zE);
        if (zE) {
            boolean zD = naVar.d();
            IronSourceUtils.l(context, c(str, "CappingManager.IS_CAPPING_ENABLED", str2), zD);
            if (zD) {
                IronSourceUtils.m(context, c(str, "CappingManager.MAX_NUMBER_OF_SHOWS", str2), naVar.b());
                IronSourceUtils.o(context, c(str, "CappingManager.CAPPING_TYPE", str2), naVar.a().toString());
            }
            boolean zF = naVar.f();
            IronSourceUtils.l(context, c(str, "CappingManager.IS_PACING_ENABLED", str2), zF);
            if (zF) {
                IronSourceUtils.m(context, c(str, "CappingManager.SECONDS_BETWEEN_SHOWS", str2), naVar.c());
            }
        }
    }

    public static synchronized boolean e(Context context, String str) {
        return f(context, "Interstitial", str) != EnumC0360b.NOT_CAPPED;
    }

    private static EnumC0360b f(Context context, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!IronSourceUtils.a(context, c(str, "CappingManager.IS_DELIVERY_ENABLED", str2), true)) {
            return EnumC0360b.CAPPED_PER_DELIVERY;
        }
        if (IronSourceUtils.a(context, c(str, "CappingManager.IS_PACING_ENABLED", str2), false)) {
            if (jCurrentTimeMillis - IronSourceUtils.j(context, c(str, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW", str2), 0L) < IronSourceUtils.i(context, c(str, "CappingManager.SECONDS_BETWEEN_SHOWS", str2), 0) * 1000) {
                return EnumC0360b.CAPPED_PER_PACE;
            }
        }
        if (IronSourceUtils.a(context, c(str, "CappingManager.IS_CAPPING_ENABLED", str2), false)) {
            int i = IronSourceUtils.i(context, c(str, "CappingManager.MAX_NUMBER_OF_SHOWS", str2), 0);
            String strC = c(str, "CappingManager.CURRENT_NUMBER_OF_SHOWS", str2);
            int i2 = IronSourceUtils.i(context, strC, 0);
            String strC2 = c(str, "CappingManager.CAPPING_TIME_THRESHOLD", str2);
            if (jCurrentTimeMillis >= IronSourceUtils.j(context, strC2, 0L)) {
                IronSourceUtils.m(context, strC, 0);
                IronSourceUtils.n(context, strC2, 0L);
            } else if (i2 >= i) {
                return EnumC0360b.CAPPED_PER_COUNT;
            }
        }
        return EnumC0360b.NOT_CAPPED;
    }

    public static synchronized boolean f(Context context, String str) {
        return f(context, IronSourceConstants.REWARDED_VIDEO_AD_UNIT, str) != EnumC0360b.NOT_CAPPED;
    }
}
