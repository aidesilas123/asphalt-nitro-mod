package com.applovin.impl.mediation.debugger.ui.c;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.mediation.debugger.ui.d.d;
import com.applovin.impl.mediation.debugger.ui.d.e;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.g;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends d {
    private final com.applovin.impl.mediation.debugger.b.c.b arV;
    private List<c> asc;
    private final List<c> asd;
    private final List<c> ase;
    private final List<c> asf;
    private final List<c> asg;
    private SpannedString ash;

    public enum a {
        INTEGRATIONS,
        PERMISSIONS,
        CONFIGURATION,
        DEPENDENCIES,
        TEST_ADS,
        COUNT
    }

    b(com.applovin.impl.mediation.debugger.b.c.b bVar, Context context) {
        super(context);
        this.arV = bVar;
        if (bVar.vl() == b.a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.ash = new SpannedString(spannableString);
        } else {
            this.ash = new SpannedString("");
        }
        this.asc = wJ();
        this.asd = x(bVar.vB());
        this.ase = wN();
        this.asf = y(bVar.vC());
        this.asg = wO();
        notifyDataSetChanged();
    }

    private c a(b.EnumC0066b enumC0066b) {
        c.a aVarWW = c.wW();
        if (enumC0066b == b.EnumC0066b.READY) {
            aVarWW.y(this.E);
        }
        return aVarWW.bO("Test Mode").bP(enumC0066b.vO()).gm(enumC0066b.vP()).bQ("Restart Required").bR(enumC0066b.vQ()).aF(true).wX();
    }

    private c a(String str, String str2, boolean z, boolean z2) {
        return c.a(z ? c.b.RIGHT_DETAIL : c.b.DETAIL).bO(str).b(z ? null : this.ash).bQ("Instructions").bR(str2).gk(z ? R.drawable.applovin_ic_check_mark_bordered : aC(z2)).gn(z ? g.a(R.color.applovin_sdk_checkmarkColor, this.E) : aE(z2)).aF(!z).wX();
    }

    private int aB(boolean z) {
        return z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark;
    }

    private int aC(boolean z) {
        return z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning;
    }

    private int aD(boolean z) {
        return g.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.E);
    }

    private int aE(boolean z) {
        return g.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.E);
    }

    private String gj(int i) {
        return (MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.getCode() == i || MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode() == i || MaxAdapter.InitializationStatus.DOES_NOT_APPLY.getCode() == i) ? "Initialized" : MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() == i ? "Failure" : MaxAdapter.InitializationStatus.INITIALIZING.getCode() == i ? "Initializing..." : "Not Initialized";
    }

    private List<c> wJ() {
        ArrayList arrayList = new ArrayList(3);
        CollectionUtils.addObjectIfExists(wK(), arrayList);
        CollectionUtils.addObjectIfExists(wL(), arrayList);
        CollectionUtils.addObjectIfExists(wM(), arrayList);
        return arrayList;
    }

    private c wK() {
        c.a aVarBP = c.wW().bO("SDK").bP(this.arV.getSdkVersion());
        if (TextUtils.isEmpty(this.arV.getSdkVersion())) {
            aVarBP.gk(aB(this.arV.vo())).gn(aD(this.arV.vo()));
        }
        return aVarBP.wX();
    }

    private c wL() {
        c.a aVarBP = c.wW().bO("Adapter").bP(this.arV.getAdapterVersion());
        if (TextUtils.isEmpty(this.arV.getAdapterVersion())) {
            aVarBP.gk(aB(this.arV.vp())).gn(aD(this.arV.vp()));
        }
        return aVarBP.wX();
    }

    @Nullable
    private c wM() {
        if (this.arV.vE()) {
            return null;
        }
        return c.wW().bO("Initialization Status").bP(gj(this.arV.vm())).aF(false).wX();
    }

    private List<c> wN() {
        ArrayList arrayList = new ArrayList(1);
        if (this.arV.vD()) {
            arrayList.add(a("Java 8", "For optimal performance, please enable Java 8 support. See: https://dash.applovin.com/documentation/mediation/android/getting-started/integration", n.CI(), true));
        }
        return arrayList;
    }

    private List<c> wO() {
        ArrayList arrayList = new ArrayList(3);
        if (StringUtils.isValidString(this.arV.vG())) {
            arrayList.add(c.a(c.b.DETAIL).bO(this.arV.vG()).wX());
        }
        if (this.arV.vn() == b.EnumC0066b.NOT_SUPPORTED) {
            return arrayList;
        }
        if (this.arV.vw() != null) {
            arrayList.add(z(this.arV.vw()));
        }
        if (this.arV.vH()) {
            arrayList.add(a("Not an Age Restricted User", "Test mode requires Age Restricted User (COPPA) to be set to false.", !AppLovinPrivacySettings.isAgeRestrictedUser(this.E) && AppLovinPrivacySettings.isAgeRestrictedUserSet(this.E), false));
        }
        arrayList.add(a(this.arV.vn()));
        return arrayList;
    }

    private List<c> x(List<com.applovin.impl.mediation.debugger.b.c.c> list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            for (com.applovin.impl.mediation.debugger.b.c.c cVar : list) {
                arrayList.add(a(cVar.getName(), cVar.vj(), cVar.vk(), true));
            }
        }
        return arrayList;
    }

    private List<c> y(List<com.applovin.impl.mediation.debugger.b.c.a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            for (com.applovin.impl.mediation.debugger.b.c.a aVar : list) {
                arrayList.add(a(aVar.getName(), aVar.vj(), aVar.vk(), true));
            }
        }
        return arrayList;
    }

    private c z(List<String> list) {
        return c.wW().bO("Region/VPN Required").bP(CollectionUtils.implode(list, ", ", list.size())).wX();
    }

    public boolean a(com.applovin.impl.mediation.debugger.ui.d.a aVar) {
        return aVar.wP() == a.TEST_ADS.ordinal() && aVar.wQ() == this.asg.size() - 1;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int gg(int i) {
        return i == a.INTEGRATIONS.ordinal() ? this.asc.size() : i == a.PERMISSIONS.ordinal() ? this.asd.size() : i == a.CONFIGURATION.ordinal() ? this.ase.size() : i == a.DEPENDENCIES.ordinal() ? this.asf.size() : this.asg.size();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected c gh(int i) {
        return i == a.INTEGRATIONS.ordinal() ? new e("INTEGRATIONS") : i == a.PERMISSIONS.ordinal() ? new e("PERMISSIONS") : i == a.CONFIGURATION.ordinal() ? new e("CONFIGURATION") : i == a.DEPENDENCIES.ordinal() ? new e("DEPENDENCIES") : new e("TEST ADS");
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected List<c> gi(int i) {
        return i == a.INTEGRATIONS.ordinal() ? this.asc : i == a.PERMISSIONS.ordinal() ? this.asd : i == a.CONFIGURATION.ordinal() ? this.ase : i == a.DEPENDENCIES.ordinal() ? this.asf : this.asg;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.d
    protected int tM() {
        return a.COUNT.ordinal();
    }

    public String toString() {
        return "MediatedNetworkListAdapter{}";
    }

    public com.applovin.impl.mediation.debugger.b.c.b wA() {
        return this.arV;
    }

    public void wI() {
        this.asc = wJ();
    }
}
