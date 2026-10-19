package com.json.mediationsdk;

import android.text.TextUtils;
import com.json.a4;
import com.json.cb;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.environment.StringUtils;
import com.json.j7;
import com.json.k5;
import com.json.k7;
import com.json.l5;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.model.NetworkSettings;
import com.json.mediationsdk.sdk.OfferwallListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.mediationsdk.utils.c;
import com.json.u9;
import com.json.x9;
import com.json.z6;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class v implements j7, k7 {
    private final String a;
    private u9 b;
    private k7 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private IronSourceLoggerManager f6407d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicBoolean f6408e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f6409f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c f6410g;
    private NetworkSettings h;
    private String i;
    private final z6 j;
    private final z6.a k;

    v() {
        this(e9.h(), e9.g());
    }

    v(l5 l5Var, k5 k5Var) {
        this.a = v.class.getName();
        this.j = l5Var.d();
        this.k = k5Var.b();
        this.f6408e = new AtomicBoolean(true);
        this.f6409f = new AtomicBoolean(false);
        this.f6407d = IronSourceLoggerManager.getLogger();
    }

    private AbstractAdapter a(String str) {
        try {
            p pVarO = p.o();
            AbstractAdapter abstractAdapterQ0 = pVarO.Q0(str);
            if (abstractAdapterQ0 == null) {
                Class<?> cls = Class.forName("com.ironsource.adapters." + StringUtils.toLowerCase(str) + "." + str + "Adapter");
                abstractAdapterQ0 = (AbstractAdapter) cls.getMethod(IronSourceConstants.START_ADAPTER, String.class).invoke(cls, str);
                if (abstractAdapterQ0 == null) {
                    return null;
                }
            }
            pVarO.Y(abstractAdapterQ0);
            return abstractAdapterQ0;
        } catch (Throwable th) {
            IronSourceLoggerManager ironSourceLoggerManager = this.f6407d;
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.API;
            ironSourceLoggerManager.log(ironSourceTag, str + " initialization failed - please verify that required dependencies are in you build path.", 2);
            this.f6407d.logException(ironSourceTag, this.a + ":startOfferwallAdapter", th);
            return null;
        }
    }

    private String b(c cVar) {
        return (cVar == null || cVar.b() == null || cVar.b().getOfferwallConfigurations() == null || cVar.b().getOfferwallConfigurations().b() == null) ? IronSourceConstants.SUPERSONIC_CONFIG_NAME : cVar.b().getOfferwallConfigurations().b();
    }

    private void c(AbstractAdapter abstractAdapter) {
        try {
            Boolean boolK0 = p.o().K0();
            if (boolK0 != null) {
                this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_API, "Offerwall | setConsent(consent:" + boolK0 + ")", 1);
                abstractAdapter.setConsent(boolK0.booleanValue());
            }
        } catch (Exception e2) {
            this.f6407d.log(IronSourceLogger.IronSourceTag.INTERNAL, ":setCustomParams():" + e2.toString(), 3);
        }
    }

    private synchronized void d(IronSourceError ironSourceError) {
        AtomicBoolean atomicBoolean = this.f6409f;
        if (atomicBoolean != null) {
            atomicBoolean.set(false);
        }
        AtomicBoolean atomicBoolean2 = this.f6408e;
        if (atomicBoolean2 != null) {
            atomicBoolean2.set(true);
        }
        k7 k7Var = this.c;
        if (k7Var != null) {
            k7Var.a(false, ironSourceError);
        }
    }

    @Override // com.json.j7, com.json.v9
    public void a(OfferwallListener offerwallListener) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.json.j7, com.json.v9
    public synchronized void a(String str, String str2) {
        this.f6407d.log(IronSourceLogger.IronSourceTag.NATIVE, this.a + ":initOfferwall(appKey: " + str + ", userId: " + str2 + ")", 1);
        c cVarK = p.o().k();
        this.f6410g = cVarK;
        if (cVarK == null) {
            d(ErrorBuilder.buildInitFailedError("Please check configurations for Offerwall adapters", IronSourceConstants.OFFERWALL_AD_UNIT));
            return;
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            d(ErrorBuilder.buildInitFailedError("Activity must be provided when initializing SDK", IronSourceConstants.OFFERWALL_AD_UNIT));
            return;
        }
        String strB = b(this.f6410g);
        NetworkSettings networkSettingsB = this.f6410g.i().b(strB);
        this.h = networkSettingsB;
        if (networkSettingsB == null) {
            d(ErrorBuilder.buildInitFailedError("Please check configurations for Offerwall adapters", IronSourceConstants.OFFERWALL_AD_UNIT));
            return;
        }
        AbstractAdapter abstractAdapterA = a(strB);
        if (abstractAdapterA == 0) {
            d(ErrorBuilder.buildInitFailedError("Please check configurations for Offerwall adapters", IronSourceConstants.OFFERWALL_AD_UNIT));
            return;
        }
        c(abstractAdapterA);
        u9 u9Var = (u9) abstractAdapterA;
        this.b = u9Var;
        u9Var.setInternalOfferwallListener(this);
        this.b.initOfferwall(str, str2, this.h.getRewardedVideoSettings());
    }

    @Override // com.json.k7
    public void a(boolean z, IronSourceError ironSourceError) {
        this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallAvailable(isAvailable: " + z + ")", 1);
        if (!z) {
            d(ironSourceError);
            return;
        }
        this.f6409f.set(true);
        k7 k7Var = this.c;
        if (k7Var != null) {
            k7Var.onOfferwallAvailable(true);
        }
    }

    @Override // com.json.j7, com.json.v9
    public void c() {
    }

    @Override // com.json.j7, com.json.v9
    public void getOfferwallCredits() {
        u9 u9Var = this.b;
        if (u9Var != null) {
            u9Var.getOfferwallCredits();
        }
    }

    @Override // com.json.j7, com.json.v9
    public synchronized boolean isOfferwallAvailable() {
        AtomicBoolean atomicBoolean;
        atomicBoolean = this.f6409f;
        return atomicBoolean != null ? atomicBoolean.get() : false;
    }

    @Override // com.json.j7, com.json.v9
    public void j(String str) {
        u9 u9Var;
        String str2 = "OWManager:showOfferwall(" + str + ")";
        try {
            if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
                this.c.onOfferwallShowFailed(ErrorBuilder.buildShowFailedError(IronSourceConstants.OFFERWALL_AD_UNIT, "Activity must be provided when initializing SDK"));
                return;
            }
            if (!IronSourceUtils.isNetworkConnected(ContextProvider.getInstance().getCurrentActiveActivity())) {
                this.c.onOfferwallShowFailed(ErrorBuilder.buildNoInternetConnectionShowFailError(IronSourceConstants.OFFERWALL_AD_UNIT));
                return;
            }
            this.i = str;
            x9 x9VarA = this.f6410g.b().getOfferwallConfigurations().a(str);
            if (x9VarA == null) {
                IronSourceLoggerManager ironSourceLoggerManager = this.f6407d;
                IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
                ironSourceLoggerManager.log(ironSourceTag, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
                x9VarA = this.f6410g.b().getOfferwallConfigurations().a();
                if (x9VarA == null) {
                    this.f6407d.log(ironSourceTag, "Default placement was not found, please make sure you are using the right placements.", 3);
                    return;
                }
            }
            this.f6407d.log(IronSourceLogger.IronSourceTag.INTERNAL, str2, 1);
            AtomicBoolean atomicBoolean = this.f6409f;
            if (atomicBoolean == null || !atomicBoolean.get() || (u9Var = this.b) == null) {
                return;
            }
            u9Var.showOfferwall(String.valueOf(x9VarA.getCom.ironsource.o2.i java.lang.String()), this.h.getRewardedVideoSettings());
        } catch (Exception e2) {
            this.f6407d.logException(IronSourceLogger.IronSourceTag.INTERNAL, str2, e2);
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onGetOfferwallCreditsFailed(IronSourceError ironSourceError) {
        this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onGetOfferwallCreditsFailed(" + ironSourceError + ")", 1);
        k7 k7Var = this.c;
        if (k7Var != null) {
            k7Var.onGetOfferwallCreditsFailed(ironSourceError);
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public boolean onOfferwallAdCredited(int i, int i2, boolean z) {
        this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallAdCredited()", 1);
        k7 k7Var = this.c;
        if (k7Var != null) {
            return k7Var.onOfferwallAdCredited(i, i2, z);
        }
        return false;
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallAvailable(boolean z) {
        a(z, (IronSourceError) null);
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallClosed() {
        this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallClosed()", 1);
        k7 k7Var = this.c;
        if (k7Var != null) {
            k7Var.onOfferwallClosed();
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallOpened() {
        this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallOpened()", 1);
        int iA = this.j.a(IronSource.AD_UNIT.OFFERWALL);
        JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            if (!TextUtils.isEmpty(this.i)) {
                mediationAdditionalData.put("placement", this.i);
            }
            mediationAdditionalData.put("sessionDepth", iA);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        cb.i().a(new a4(305, mediationAdditionalData));
        this.k.b(IronSource.AD_UNIT.OFFERWALL);
        k7 k7Var = this.c;
        if (k7Var != null) {
            k7Var.onOfferwallOpened();
        }
    }

    @Override // com.json.mediationsdk.sdk.OfferwallListener
    public void onOfferwallShowFailed(IronSourceError ironSourceError) {
        this.f6407d.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallShowFailed(" + ironSourceError + ")", 1);
        k7 k7Var = this.c;
        if (k7Var != null) {
            k7Var.onOfferwallShowFailed(ironSourceError);
        }
    }

    @Override // com.json.j7
    public void setInternalOfferwallListener(k7 k7Var) {
        this.c = k7Var;
    }
}
