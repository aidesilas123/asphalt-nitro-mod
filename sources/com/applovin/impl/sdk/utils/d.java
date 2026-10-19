package com.applovin.impl.sdk.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static boolean aVj = true;
    private static final Object aVk = new Object();
    private static final Collection<CountDownLatch> aVl = new HashSet();
    private static boolean aVm = false;
    private static a aVn = null;

    public static class a {
        private boolean aVo;
        private String aVp = "";
        private EnumC0083a aVq = EnumC0083a.NOT_SET;

        /* JADX INFO: renamed from: com.applovin.impl.sdk.utils.d$a$a, reason: collision with other inner class name */
        public enum EnumC0083a {
            NOT_SET("dnt_not_set"),
            ON("dnt_on"),
            OFF("dnt_off");

            private final String aVu;

            EnumC0083a(String str) {
                this.aVu = str;
            }

            public String KT() {
                return this.aVu;
            }
        }

        public boolean KQ() {
            return this.aVo;
        }

        public String KR() {
            return this.aVp;
        }

        public EnumC0083a KS() {
            return this.aVq;
        }

        public void a(EnumC0083a enumC0083a) {
            this.aVq = enumC0083a;
        }

        public void bi(boolean z) {
            this.aVo = z;
        }

        protected boolean canEqual(Object obj) {
            return obj instanceof a;
        }

        public void dx(String str) {
            this.aVp = str;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.canEqual(this) || KQ() != aVar.KQ()) {
                return false;
            }
            String strKR = KR();
            String strKR2 = aVar.KR();
            if (strKR != null ? !strKR.equals(strKR2) : strKR2 != null) {
                return false;
            }
            EnumC0083a enumC0083aKS = KS();
            EnumC0083a enumC0083aKS2 = aVar.KS();
            return enumC0083aKS != null ? enumC0083aKS.equals(enumC0083aKS2) : enumC0083aKS2 == null;
        }

        public int hashCode() {
            int i = KQ() ? 79 : 97;
            String strKR = KR();
            int iHashCode = ((i + 59) * 59) + (strKR == null ? 43 : strKR.hashCode());
            EnumC0083a enumC0083aKS = KS();
            return (iHashCode * 59) + (enumC0083aKS != null ? enumC0083aKS.hashCode() : 43);
        }

        public String toString() {
            return "AdvertisingInfoCollector.AdvertisingIdInformation(adTrackingLimited=" + KQ() + ", advertisingId=" + KR() + ", dntCode=" + KS() + ")";
        }
    }

    public static boolean KP() {
        return u.dE("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    @Nullable
    public static a U(Context context) {
        return V(context);
    }

    @Nullable
    private static a V(Context context) {
        a aVar;
        HashSet hashSet;
        u.LE();
        Object obj = aVk;
        synchronized (obj) {
            if (aVm) {
                return aVn;
            }
            Collection<CountDownLatch> collection = aVl;
            boolean zIsEmpty = collection.isEmpty();
            CountDownLatch countDownLatch = new CountDownLatch(1);
            collection.add(countDownLatch);
            if (zIsEmpty) {
                a aVarW = W(context);
                synchronized (obj) {
                    aVm = true;
                    aVn = aVarW;
                    hashSet = new HashSet(collection);
                    collection.clear();
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ((CountDownLatch) it.next()).countDown();
                }
            }
            try {
                if (!countDownLatch.await(60L, TimeUnit.SECONDS)) {
                    com.applovin.impl.sdk.x.H("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout");
                }
            } catch (InterruptedException e2) {
                com.applovin.impl.sdk.x.e("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e2);
            }
            synchronized (aVk) {
                aVar = aVn;
            }
            return aVar;
        }
    }

    private static a W(Context context) {
        a aVarCollectGoogleAdvertisingInfo = collectGoogleAdvertisingInfo(context);
        if (aVarCollectGoogleAdvertisingInfo == null) {
            aVarCollectGoogleAdvertisingInfo = collectFireOSAdvertisingInfo(context);
        }
        return aVarCollectGoogleAdvertisingInfo == null ? new a() : aVarCollectGoogleAdvertisingInfo;
    }

    @Nullable
    private static a collectFireOSAdvertisingInfo(Context context) {
        if (aVj) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                a aVar = new a();
                aVar.dx(StringUtils.emptyIfNull(Settings.Secure.getString(contentResolver, "advertising_id")));
                boolean z = Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0;
                aVar.bi(z);
                aVar.a(z ? a.EnumC0083a.ON : a.EnumC0083a.OFF);
                return aVar;
            } catch (Settings.SettingNotFoundException e2) {
                com.applovin.impl.sdk.x.e("DataCollector", "Unable to determine if Fire OS limited ad tracking is turned on", e2);
            } catch (Throwable th) {
                com.applovin.impl.sdk.x.e("DataCollector", "Unable to collect Fire OS IDFA", th);
            }
        }
        aVj = false;
        return null;
    }

    @Nullable
    private static a collectGoogleAdvertisingInfo(Context context) {
        u.LE();
        if (!KP()) {
            if (AppLovinSdkUtils.isFireOS(context)) {
                return null;
            }
            com.applovin.impl.sdk.x.H("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }");
            return null;
        }
        try {
            a aVar = new a();
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            boolean zIsLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
            aVar.bi(zIsLimitAdTrackingEnabled);
            aVar.a(zIsLimitAdTrackingEnabled ? a.EnumC0083a.ON : a.EnumC0083a.OFF);
            aVar.dx(advertisingIdInfo.getId());
            return aVar;
        } catch (Throwable th) {
            if (AppLovinSdkUtils.isFireOS(context)) {
                return null;
            }
            com.applovin.impl.sdk.x.e("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
            return null;
        }
    }
}
