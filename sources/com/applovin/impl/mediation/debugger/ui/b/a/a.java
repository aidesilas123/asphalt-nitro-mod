package com.applovin.impl.mediation.debugger.ui.b.a;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.mediation.debugger.b.c.b;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.g;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {
    private final Context E;
    private final com.applovin.impl.mediation.debugger.b.c.b arV;

    public a(com.applovin.impl.mediation.debugger.b.c.b bVar, Context context) {
        super(c.b.DETAIL);
        this.arV = bVar;
        this.E = context;
        this.asv = wC();
        this.asw = wD();
    }

    private SpannedString wC() {
        return StringUtils.createSpannedString(this.arV.getDisplayName(), isEnabled() ? ViewCompat.MEASURED_STATE_MASK : -7829368, 18, 1);
    }

    private SpannedString wD() {
        if (!isEnabled()) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) wE());
        spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
        spannableStringBuilder.append((CharSequence) wF());
        if (this.arV.vl() == b.a.INVALID_INTEGRATION) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Invalid Integration", SupportMenu.CATEGORY_MASK));
        }
        return new SpannedString(spannableStringBuilder);
    }

    private SpannedString wE() {
        if (!this.arV.vo()) {
            return StringUtils.createListItemDetailSpannedString("SDK Missing", SupportMenu.CATEGORY_MASK);
        }
        if (TextUtils.isEmpty(this.arV.getSdkVersion())) {
            return StringUtils.createListItemDetailSpannedString(this.arV.vp() ? "Retrieving SDK Version..." : "SDK Found", ViewCompat.MEASURED_STATE_MASK);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("SDK\t\t\t\t\t  ", -7829368));
        spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.arV.getSdkVersion(), ViewCompat.MEASURED_STATE_MASK));
        return new SpannedString(spannableStringBuilder);
    }

    private SpannedString wF() {
        if (!this.arV.vp()) {
            return StringUtils.createListItemDetailSpannedString("Adapter Missing", SupportMenu.CATEGORY_MASK);
        }
        if (TextUtils.isEmpty(this.arV.getAdapterVersion())) {
            return StringUtils.createListItemDetailSpannedString("Adapter Found", ViewCompat.MEASURED_STATE_MASK);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ADAPTER  ", -7829368));
        spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.arV.getAdapterVersion(), ViewCompat.MEASURED_STATE_MASK));
        if (this.arV.vq()) {
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("  LATEST  ", Color.rgb(255, 127, 0)));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.arV.vs(), ViewCompat.MEASURED_STATE_MASK));
        }
        return new SpannedString(spannableStringBuilder);
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public boolean isEnabled() {
        return this.arV.vl() != b.a.MISSING;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public int tO() {
        return isEnabled() ? R.drawable.applovin_ic_disclosure_arrow : super.wB();
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public int tP() {
        return g.a(R.color.applovin_sdk_disclosureButtonColor, this.E);
    }

    public String toString() {
        return "MediatedNetworkListItemViewModel{text=" + ((Object) this.asv) + ", detailText=" + ((Object) this.asw) + ", network=" + this.arV + "}";
    }

    public com.applovin.impl.mediation.debugger.b.c.b wA() {
        return this.arV;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public int wB() {
        int iVx = this.arV.vx();
        return iVx > 0 ? iVx : R.drawable.applovin_ic_mediation_placeholder;
    }
}
