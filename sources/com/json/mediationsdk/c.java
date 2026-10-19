package com.json.mediationsdk;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.json.a4;
import com.json.environment.StringUtils;
import com.json.m2;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.AdapterDebugInterface;
import com.json.mediationsdk.adunit.adapter.BaseAdapter;
import com.json.mediationsdk.adunit.adapter.internal.AdapterAPSDataInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseWrapper;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.q7;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {
    private static final c a = new c();
    private static final Object b = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Boolean f6249g;
    private final AtomicBoolean j = new AtomicBoolean(false);
    private m2 k = new m2();
    private final ConcurrentHashMap<String, AbstractAdapter> c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<String, AdapterBaseWrapper> f6246d = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, List<String>> h = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<IronSource.AD_UNIT, JSONObject> i = new ConcurrentHashMap<>();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IronSource.AD_UNIT.values().length];
            a = iArr;
            try {
                iArr[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[IronSource.AD_UNIT.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[IronSource.AD_UNIT.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static c b() {
        return a;
    }

    private AbstractAdapter c(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.ironsource.adapters." + StringUtils.toLowerCase(str2) + "." + str2 + "Adapter");
            return (AbstractAdapter) cls.getMethod(IronSourceConstants.START_ADAPTER, String.class).invoke(cls, str);
        } catch (Exception e2) {
            String str3 = "Error while loading adapter - exception = " + e2.getLocalizedMessage();
            f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str3);
            j(str3);
            return null;
        }
    }

    private AdapterBaseInterface d(String str, String str2, NetworkSettings networkSettings) {
        if (networkSettings.isCustomNetwork() && TextUtils.isEmpty(networkSettings.getCustomNetworkPackage())) {
            IronLog.INTERNAL.error("missing package definition for " + str);
            return null;
        }
        String str3 = (networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkPackage() : "com.ironsource.adapters") + "." + str2;
        try {
            BaseAdapter baseAdapter = (BaseAdapter) Class.forName(str3).newInstance();
            IronLog.INTERNAL.info(str3 + " was allocated (adapter version: " + baseAdapter.getAdapterVersion() + ", sdk version: " + baseAdapter.getNetworkSDKVersion() + ")");
            i(baseAdapter);
            this.k.a(baseAdapter, networkSettings);
            this.f6246d.put(str, new AdapterBaseWrapper(baseAdapter, networkSettings));
            return baseAdapter;
        } catch (Exception unused) {
            if (networkSettings.isCustomNetwork()) {
                String str4 = "failed to load " + str3;
                IronLog.INTERNAL.error(str4);
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str4);
            }
            return null;
        }
    }

    private BaseAdAdapter<?, ?> e(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        if (networkSettings.isCustomNetwork() && TextUtils.isEmpty(networkSettings.getCustomNetworkPackage())) {
            IronLog.INTERNAL.error("missing package definition for " + networkSettings.getProviderTypeForReflection());
            return null;
        }
        String str = (networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkPackage() : "com.ironsource.adapters") + "." + (networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkAdapterName(ad_unit) : networkSettings.getProviderTypeForReflection());
        try {
            return (BaseAdAdapter) Class.forName(str).getConstructor(NetworkSettings.class).newInstance(networkSettings);
        } catch (Exception unused) {
            if (networkSettings.isCustomNetwork()) {
                String str2 = "failed to load " + str;
                IronLog.INTERNAL.error(str2);
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
            }
            return null;
        }
    }

    private void f(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("reason", str);
            }
            q7.i().a(new a4(i, jSONObject));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void g(AbstractAdapter abstractAdapter) {
        if (!StringUtils.toLowerCase(abstractAdapter.getProviderName()).equals("aps") || this.i.size() == 0) {
            return;
        }
        for (IronSource.AD_UNIT ad_unit : this.i.keySet()) {
            try {
                JSONObject jSONObject = this.i.get(ad_unit);
                if (jSONObject != null && jSONObject.length() > 0 && (abstractAdapter instanceof SetAPSInterface)) {
                    ((SetAPSInterface) abstractAdapter).setAPSData(ad_unit, jSONObject);
                }
            } catch (Exception e2) {
                String str = "error while setting aps data: " + e2.getLocalizedMessage();
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str);
                o(str);
                e2.printStackTrace();
            }
        }
        this.i.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void h(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, "APSData is empty");
            j("APSData is empty");
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            if (!this.c.isEmpty()) {
                for (AbstractAdapter abstractAdapter : this.c.values()) {
                    if (StringUtils.toLowerCase(abstractAdapter.getProviderName()).equals("aps") && (abstractAdapter instanceof SetAPSInterface)) {
                        ((SetAPSInterface) abstractAdapter).setAPSData(ad_unit, jSONObject2);
                        return;
                    }
                }
            }
            for (AdapterBaseWrapper adapterBaseWrapper : this.f6246d.values()) {
                if (StringUtils.toLowerCase(adapterBaseWrapper.getSettings().getProviderTypeForReflection()).equals("aps")) {
                    AdapterBaseInterface adapterBaseInterface = adapterBaseWrapper.getAdapterBaseInterface();
                    if (adapterBaseInterface != null) {
                        ((AdapterAPSDataInterface) adapterBaseInterface).setAPSData(ad_unit, jSONObject2);
                        return;
                    }
                    return;
                }
            }
            synchronized (b) {
                this.i.put(ad_unit, jSONObject2);
            }
        } catch (Exception e2) {
            String str = "error while setting APSData: " + e2.getLocalizedMessage();
            f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str);
            j(str);
            e2.printStackTrace();
        }
    }

    private void i(AdapterBaseInterface adapterBaseInterface) {
        Boolean bool = this.f6249g;
        if (bool == null || !(adapterBaseInterface instanceof AdapterDebugInterface)) {
            return;
        }
        try {
            ((AdapterDebugInterface) adapterBaseInterface).setAdapterDebug(bool.booleanValue());
        } catch (Exception e2) {
            String str = "error while setting adapterDebug of " + adapterBaseInterface.getClass().getSimpleName() + ": " + e2.getLocalizedMessage();
            f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
            o(str);
            e2.printStackTrace();
        }
    }

    private void j(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "AdapterRepository: " + str, 3);
    }

    private void k(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
            if (!next.equalsIgnoreCase(ad_unit.toString())) {
                ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
                if (!next.equalsIgnoreCase(ad_unit.toString())) {
                    ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
                    if (next.equalsIgnoreCase(ad_unit.toString())) {
                    }
                }
            }
            h(ad_unit, jSONObjectOptJSONObject);
        }
    }

    private void l(JSONObject jSONObject, AbstractAdapter abstractAdapter, String str) {
        if ((str.equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) || str.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) && this.j.compareAndSet(false, true)) {
            o("SDK5 earlyInit  <" + str + ">");
            try {
                abstractAdapter.earlyInit(this.f6247e, this.f6248f, jSONObject);
            } catch (Exception e2) {
                String str2 = "error while calling early init for " + abstractAdapter.getProviderName() + ": " + e2.getLocalizedMessage();
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
                IronLog.INTERNAL.error(str2);
            }
        }
    }

    private String m(NetworkSettings networkSettings) {
        return networkSettings.isMultipleInstances() ? networkSettings.getProviderDefaultInstance() : networkSettings.getProviderName();
    }

    private void n(AbstractAdapter abstractAdapter) {
        Boolean bool = this.f6249g;
        if (bool != null) {
            try {
                abstractAdapter.setAdapterDebug(bool);
            } catch (Throwable th) {
                String str = "error while setting adapterDebug of " + abstractAdapter.getProviderName() + ": " + th.getLocalizedMessage();
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
                o(str);
                th.printStackTrace();
            }
        }
    }

    private void o(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "AdapterRepository: " + str, 0);
    }

    private String p(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        return ((uuid == null || ad_unit != IronSource.AD_UNIT.NATIVE_AD) ? "" : uuid.toString()) + "-" + ad_unit.toString() + "-" + networkSettings.getProviderName();
    }

    private void q(AbstractAdapter abstractAdapter) {
        for (String str : this.h.keySet()) {
            try {
                List<String> list = this.h.get(str);
                IronSourceUtils.sendAutomationLog(abstractAdapter.getProviderName() + "Adapter setMetaData key = " + str + ", values = " + list);
                if (list != null) {
                    abstractAdapter.setMetaData(str, list);
                }
            } catch (Throwable th) {
                String str2 = "error while setting metadata of " + abstractAdapter.getProviderName() + ": " + th.getLocalizedMessage();
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
                o(str2);
                th.printStackTrace();
            }
        }
    }

    public AbstractAdapter a(NetworkSettings networkSettings) {
        String strM = m(networkSettings);
        return networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) ? this.c.get(strM) : c(strM, networkSettings.getProviderTypeForReflection());
    }

    public AbstractAdapter a(NetworkSettings networkSettings, JSONObject jSONObject, boolean z) {
        String coreSDKVersion;
        String strM = m(networkSettings);
        String providerTypeForReflection = z ? IronSourceConstants.IRONSOURCE_CONFIG_NAME : networkSettings.getProviderTypeForReflection();
        synchronized (b) {
            if (this.c.containsKey(strM)) {
                return this.c.get(strM);
            }
            AbstractAdapter abstractAdapterC = c(strM, providerTypeForReflection);
            if (abstractAdapterC == null) {
                j(strM + " adapter was not loaded");
                return null;
            }
            try {
                coreSDKVersion = abstractAdapterC.getCoreSDKVersion();
            } catch (Throwable th) {
                String str = "error while retrieving coreSDKVersion " + abstractAdapterC.getProviderName() + ": " + th.getLocalizedMessage();
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
                IronLog.INTERNAL.error(str);
                coreSDKVersion = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            o(strM + " was allocated (adapter version: " + abstractAdapterC.getVersion() + ", sdk version: " + coreSDKVersion + ")");
            q(abstractAdapterC);
            g(abstractAdapterC);
            this.k.a(abstractAdapterC, networkSettings);
            n(abstractAdapterC);
            l(jSONObject, abstractAdapterC, providerTypeForReflection);
            this.c.put(strM, abstractAdapterC);
            return abstractAdapterC;
        }
    }

    public BaseAdAdapter<?, ?> a(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        BaseAdAdapter<?, ?> baseAdAdapterE = e(networkSettings, ad_unit);
        if (baseAdAdapterE != null || networkSettings.isCustomNetwork()) {
            return baseAdAdapterE;
        }
        AbstractAdapter abstractAdapterA = a(networkSettings);
        if (abstractAdapterA != null) {
            return com.json.mediationsdk.a.a(abstractAdapterA, networkSettings, ad_unit, uuid);
        }
        String str = "error creating ad adapter " + networkSettings.getProviderName();
        f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
        IronLog.INTERNAL.error(str);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0085 A[Catch: all -> 0x00d6, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0013, B:7:0x0039, B:9:0x003f, B:13:0x004a, B:14:0x0075, B:15:0x007f, B:17:0x0085, B:19:0x0099, B:21:0x009d, B:24:0x00a5, B:25:0x00d4, B:10:0x0045), top: B:30:0x0003, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.lang.String r8, java.util.List<java.lang.String> r9) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.c.a(java.lang.String, java.util.List):void");
    }

    public void a(String str, JSONObject jSONObject) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "Calling setNetworkData on an empty network";
        } else {
            if (jSONObject != null && jSONObject.length() != 0) {
                if (StringUtils.toLowerCase(str).equals("aps")) {
                    k(jSONObject);
                    return;
                }
                String str3 = "Calling setNetworkData on an unsupported network: " + str;
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str3);
                j(str3);
                return;
            }
            str2 = "Calling setNetworkData with empty networkData";
        }
        f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str2);
        j(str2);
    }

    public void a(boolean z) {
        synchronized (b) {
            this.f6249g = Boolean.valueOf(z);
            Iterator<AbstractAdapter> it = this.c.values().iterator();
            while (it.hasNext()) {
                n(it.next());
            }
        }
    }

    public AdapterBaseInterface b(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        ConcurrentHashMap<String, AdapterBaseWrapper> concurrentHashMap;
        AdapterBaseWrapper adapterBaseWrapper;
        String strM = networkSettings.isCustomNetwork() ? m(networkSettings) : p(networkSettings, ad_unit, uuid);
        if (this.f6246d.containsKey(strM)) {
            return this.f6246d.get(strM).getAdapterBaseInterface();
        }
        AdapterBaseInterface adapterBaseInterfaceD = d(strM, networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkAdapterName(null) : networkSettings.getProviderTypeForReflection(), networkSettings);
        if (adapterBaseInterfaceD != null || networkSettings.isCustomNetwork()) {
            concurrentHashMap = this.f6246d;
            adapterBaseWrapper = new AdapterBaseWrapper(adapterBaseInterfaceD, networkSettings);
        } else {
            int i = a.a[ad_unit.ordinal()];
            AbstractAdapter abstractAdapterA = a(networkSettings, i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : networkSettings.getNativeAdSettings() : networkSettings.getBannerSettings() : networkSettings.getInterstitialSettings() : networkSettings.getRewardedVideoSettings(), false);
            if (abstractAdapterA == null) {
                String str = "error creating network adapter " + networkSettings.getProviderName();
                f(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
                IronLog.INTERNAL.error(str);
                return null;
            }
            adapterBaseInterfaceD = new u(abstractAdapterA);
            concurrentHashMap = this.f6246d;
            adapterBaseWrapper = new AdapterBaseWrapper(adapterBaseInterfaceD, networkSettings);
        }
        concurrentHashMap.put(strM, adapterBaseWrapper);
        return adapterBaseInterfaceD;
    }

    public void b(String str, String str2) {
        this.f6247e = str;
        this.f6248f = str2;
    }

    public void b(boolean z) {
        synchronized (b) {
            this.k.a(z);
            this.k.a(this.c, this.f6246d);
        }
    }

    public ConcurrentHashMap<String, List<String>> c() {
        return this.h;
    }

    public ConcurrentHashMap<String, AdapterBaseWrapper> d() {
        return this.f6246d;
    }

    public void e() {
        this.c.clear();
        this.f6246d.clear();
    }
}
