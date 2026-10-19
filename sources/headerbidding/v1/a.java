package headerbidding.v1;

import headerbidding.v1.HeaderBiddingAdMarkupOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: HeaderBiddingAdMarkupKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0001J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010\u001a\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000b¨\u0006\u001c"}, d2 = {"Lheaderbidding/v1/HeaderBiddingAdMarkupKt$Dsl;", "", "_builder", "Lheaderbidding/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup$Builder;", "(Lheaderbidding/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "adData", "getAdData", "()Lcom/google/protobuf/ByteString;", "setAdData", "(Lcom/google/protobuf/ByteString;)V", "", "adDataVersion", "getAdDataVersion", "()I", "setAdDataVersion", "(I)V", "configurationToken", "getConfigurationToken", "setConfigurationToken", "_build", "Lheaderbidding/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup;", "clearAdData", "", "clearAdDataVersion", "clearConfigurationToken", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class a {
    public static final C0470a a = new C0470a(null);
    private final HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.a b;

    /* JADX INFO: renamed from: headerbidding.v1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HeaderBiddingAdMarkupKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lheaderbidding/v1/HeaderBiddingAdMarkupKt$Dsl$Companion;", "", "()V", "_create", "Lheaderbidding/v1/HeaderBiddingAdMarkupKt$Dsl;", "builder", "Lheaderbidding/v1/HeaderBiddingAdMarkupOuterClass$HeaderBiddingAdMarkup$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class C0470a {
        private C0470a() {
        }

        public /* synthetic */ C0470a(n nVar) {
            this();
        }

        public final /* synthetic */ a a(HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new a(builder, null);
        }
    }

    private a(HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ a(HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.a aVar, n nVar) {
        this(aVar);
    }

    public final /* synthetic */ HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup a() {
        HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkupBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(headerBiddingAdMarkupBuild, "_builder.build()");
        return headerBiddingAdMarkupBuild;
    }
}
