package com.json;

import androidx.core.app.NotificationCompat;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\n\u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\tH\u0014J\b\u0010\b\u001a\u00020\u000bH\u0014J\u0018\u0010\u0012\u001a\u00020\u000b2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0010H\u0014J\u0012\u0010\u0013\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\u0014\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¨\u0006\u0017"}, d2 = {"Lcom/ironsource/ka;", "Lcom/ironsource/u1;", "Lcom/ironsource/a4;", NotificationCompat.CATEGORY_EVENT, "", "j", CampaignEx.JSON_KEY_AD_K, "currentEvent", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "c", "", InneractiveMediationDefs.GENDER_FEMALE, "eventId", "", "e", "Ljava/util/ArrayList;", "combinedEventList", "a", "g", "h", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class ka extends u1 {
    public static final ka P;

    static {
        ka kaVar = new ka();
        P = kaVar;
        kaVar.H = "outcome";
        kaVar.G = 0;
        kaVar.I = IronSourceConstants.PIXEL_EVENT_TYPE;
        kaVar.F();
    }

    private ka() {
    }

    @Override // com.json.u1
    protected void C() {
    }

    @Override // com.json.u1
    protected boolean D(a4 a4Var) {
        return true;
    }

    @Override // com.json.u1
    protected String E(int i) {
        return "";
    }

    @Override // com.json.u1
    protected void K(a4 a4Var) {
    }

    @Override // com.json.u1
    protected boolean O(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected boolean P(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected boolean U(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected boolean W(a4 a4Var) {
        return false;
    }

    @Override // com.json.u1
    protected void j(ArrayList<a4> arrayList) {
    }

    @Override // com.json.u1
    protected int y(a4 a4Var) {
        return 1;
    }
}
