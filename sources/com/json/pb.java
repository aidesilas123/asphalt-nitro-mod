package com.json;

import com.json.mediationsdk.utils.IronSourceUtils;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/ironsource/pb;", "", "", "a", "Lcom/ironsource/r4;", "Lcom/ironsource/r4;", "calculator", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class pb {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private r4 calculator;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/ironsource/pb$a;", "Lcom/ironsource/ob;", "", "run", "<init>", "(Lcom/ironsource/pb;)V", "mediationsdk_release"}, mv = {1, 8, 0})
    private final class a extends ob {
        public a() {
        }

        @Override // com.json.ob, java.lang.Runnable
        public void run() {
            JSONObject mediationAdditionalData = IronSourceUtils.getMediationAdditionalData(false);
            try {
                mediationAdditionalData.put("duration", getTimeInForeground());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            ka.P.a(new a4(44, mediationAdditionalData));
        }
    }

    public final void a() {
        this.calculator = new r4(new a());
    }
}
