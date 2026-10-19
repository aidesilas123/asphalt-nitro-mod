package com.facebook.gamingservices;

import com.facebook.FacebookSdk;
import com.facebook.GraphResponse;
import com.facebook.gamingservices.cloudgaming.CloudGameLoginHandler;
import com.facebook.gamingservices.cloudgaming.DaemonRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKMessageEnum;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import org.json.JSONObject;

/* JADX INFO: compiled from: GamingContext.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GamingContext {
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_TIMEOUT = 5;
    private static GamingContext currentContext;
    private final String contextID;

    /* JADX INFO: compiled from: GamingContext.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final GamingContext getCurrentGamingContext() {
            JSONObject jSONObject;
            if (!CloudGameLoginHandler.isRunningInCloud()) {
                return GamingContext.currentContext;
            }
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            GraphResponse graphResponseExecuteAndWait = DaemonRequest.executeAndWait(FacebookSdk.getApplicationContext(), null, SDKMessageEnum.CONTEXT_GET_ID, 5);
            String string = (graphResponseExecuteAndWait == null || (jSONObject = graphResponseExecuteAndWait.getJSONObject()) == null) ? null : jSONObject.getString("id");
            if (string == null) {
                return null;
            }
            return new GamingContext(string);
        }

        public final void setCurrentGamingContext(GamingContext ctx) {
            Intrinsics.checkNotNullParameter(ctx, "ctx");
            if (CloudGameLoginHandler.isRunningInCloud()) {
                return;
            }
            GamingContext.currentContext = ctx;
        }
    }

    public GamingContext(String contextID) {
        Intrinsics.checkNotNullParameter(contextID, "contextID");
        this.contextID = contextID;
    }

    public static /* synthetic */ GamingContext copy$default(GamingContext gamingContext, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = gamingContext.contextID;
        }
        return gamingContext.copy(str);
    }

    public static final GamingContext getCurrentGamingContext() {
        return Companion.getCurrentGamingContext();
    }

    public static final void setCurrentGamingContext(GamingContext gamingContext) {
        Companion.setCurrentGamingContext(gamingContext);
    }

    public final String component1() {
        return this.contextID;
    }

    public final GamingContext copy(String contextID) {
        Intrinsics.checkNotNullParameter(contextID, "contextID");
        return new GamingContext(contextID);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GamingContext) && Intrinsics.areEqual(this.contextID, ((GamingContext) obj).contextID);
    }

    public final String getContextID() {
        return this.contextID;
    }

    public int hashCode() {
        return this.contextID.hashCode();
    }

    public String toString() {
        return "GamingContext(contextID=" + this.contextID + ')';
    }
}
