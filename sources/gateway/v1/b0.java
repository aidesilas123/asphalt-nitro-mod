package gateway.v1;

import com.facebook.share.internal.ShareConstants;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import gateway.v1.MutableDataOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MutableDataKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u0000 <2\u00020\u0001:\u0001<B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010*\u001a\u00020+H\u0001J\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020-J\u0006\u00100\u001a\u00020-J\u0006\u00101\u001a\u00020-J\u0006\u00102\u001a\u00020-J\u0006\u00103\u001a\u00020-J\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u000205J\u0006\u00108\u001a\u000205J\u0006\u00109\u001a\u000205J\u0006\u0010:\u001a\u000205J\u0006\u0010;\u001a\u000205R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R$\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R$\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010\u0011R\u0017\u0010$\u001a\u0004\u0018\u00010\u0006*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0017\u0010'\u001a\u0004\u0018\u00010\u001b*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006="}, d2 = {"Lgateway/v1/MutableDataKt$Dsl;", "", "_builder", "Lgateway/v1/MutableDataOuterClass$MutableData$Builder;", "(Lgateway/v1/MutableDataOuterClass$MutableData$Builder;)V", "value", "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;", "allowedPii", "getAllowedPii", "()Lgateway/v1/AllowedPiiOuterClass$AllowedPii;", "setAllowedPii", "(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;)V", "Lcom/google/protobuf/ByteString;", WebPreferenceConstants.CLEAR_CACHE_EXIT, "getCache", "()Lcom/google/protobuf/ByteString;", "setCache", "(Lcom/google/protobuf/ByteString;)V", "currentState", "getCurrentState", "setCurrentState", ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "getPrivacy", "setPrivacy", "privacyFsm", "getPrivacyFsm", "setPrivacyFsm", "Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "sessionCounters", "getSessionCounters", "()Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "setSessionCounters", "(Lgateway/v1/SessionCountersOuterClass$SessionCounters;)V", "sessionToken", "getSessionToken", "setSessionToken", "allowedPiiOrNull", "getAllowedPiiOrNull", "(Lgateway/v1/MutableDataKt$Dsl;)Lgateway/v1/AllowedPiiOuterClass$AllowedPii;", "sessionCountersOrNull", "getSessionCountersOrNull", "(Lgateway/v1/MutableDataKt$Dsl;)Lgateway/v1/SessionCountersOuterClass$SessionCounters;", "_build", "Lgateway/v1/MutableDataOuterClass$MutableData;", "clearAllowedPii", "", "clearCache", "clearCurrentState", "clearPrivacy", "clearPrivacyFsm", "clearSessionCounters", "clearSessionToken", "hasAllowedPii", "", "hasCache", "hasCurrentState", "hasPrivacy", "hasPrivacyFsm", "hasSessionCounters", "hasSessionToken", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class b0 {
    public static final a a = new a(null);
    private final MutableDataOuterClass.MutableData.a b;

    /* JADX INFO: compiled from: MutableDataKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/MutableDataKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/MutableDataKt$Dsl;", "builder", "Lgateway/v1/MutableDataOuterClass$MutableData$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ b0 a(MutableDataOuterClass.MutableData.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new b0(builder, null);
        }
    }

    private b0(MutableDataOuterClass.MutableData.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ b0(MutableDataOuterClass.MutableData.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ MutableDataOuterClass.MutableData a() {
        MutableDataOuterClass.MutableData mutableDataBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(mutableDataBuild, "_builder.build()");
        return mutableDataBuild;
    }
}
