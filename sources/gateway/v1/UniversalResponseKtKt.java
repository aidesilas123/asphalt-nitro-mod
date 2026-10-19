package gateway.v1;

import gateway.v1.AdDataRefreshResponseOuterClass;
import gateway.v1.AdPlayerConfigResponseOuterClass;
import gateway.v1.AdResponseOuterClass;
import gateway.v1.ErrorOuterClass;
import gateway.v1.InitializationResponseOuterClass;
import gateway.v1.MutableDataOuterClass;
import gateway.v1.PrivacyUpdateResponseOuterClass;
import gateway.v1.UniversalResponseOuterClass;
import gateway.v1.v0;
import gateway.v1.w0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 4 more
    */
/* JADX INFO: compiled from: UniversalResponseKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\"\u001a\u00020#2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%¢\u0006\u0002\b(H\u0087\bø\u0001\u0000¢\u0006\u0002\b)\u001a)\u0010*\u001a\u00020#*\u00020#2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%¢\u0006\u0002\b(H\u0086\bø\u0001\u0000\u001a)\u0010*\u001a\u00020\u001b*\u00020\u001b2\u0017\u0010$\u001a\u0013\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020'0%¢\u0006\u0002\b(H\u0086\bø\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\"\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d\"\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001f*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b \u0010!\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006,"}, d2 = {"adDataRefreshResponseOrNull", "Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;", "getAdDataRefreshResponseOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;)Lgateway/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;", "adPlayerConfigResponseOrNull", "Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "getAdPlayerConfigResponseOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;)Lgateway/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;", "adResponseOrNull", "Lgateway/v1/AdResponseOuterClass$AdResponse;", "getAdResponseOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;)Lgateway/v1/AdResponseOuterClass$AdResponse;", "errorOrNull", "Lgateway/v1/ErrorOuterClass$Error;", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponseOrBuilder;", "getErrorOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponseOrBuilder;)Lgateway/v1/ErrorOuterClass$Error;", "initializationResponseOrNull", "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;", "getInitializationResponseOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;)Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;", "mutableDataOrNull", "Lgateway/v1/MutableDataOuterClass$MutableData;", "getMutableDataOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponseOrBuilder;)Lgateway/v1/MutableDataOuterClass$MutableData;", "payloadOrNull", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "getPayloadOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponseOrBuilder;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;", "privacyUpdateResponseOrNull", "Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "getPrivacyUpdateResponseOrNull", "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;)Lgateway/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;", "universalResponse", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;", "block", "Lkotlin/Function1;", "Lgateway/v1/UniversalResponseKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeuniversalResponse", "copy", "Lgateway/v1/UniversalResponseKt$PayloadKt$Dsl;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class UniversalResponseKtKt {
    /* JADX INFO: renamed from: -initializeuniversalResponse, reason: not valid java name */
    public static final UniversalResponseOuterClass.UniversalResponse m1225initializeuniversalResponse(Function1<? super v0, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        v0.a aVar = v0.a;
        UniversalResponseOuterClass.UniversalResponse.a aVarNewBuilder = UniversalResponseOuterClass.UniversalResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        v0 v0VarA = aVar.a(aVarNewBuilder);
        block.invoke(v0VarA);
        return v0VarA.a();
    }

    public static final UniversalResponseOuterClass.UniversalResponse.Payload copy(UniversalResponseOuterClass.UniversalResponse.Payload payload, Function1<? super w0, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(payload, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        w0.a aVar = w0.a;
        UniversalResponseOuterClass.UniversalResponse.Payload.a builder = payload.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        w0 w0VarA = aVar.a(builder);
        block.invoke(w0VarA);
        return w0VarA.a();
    }

    public static final UniversalResponseOuterClass.UniversalResponse copy(UniversalResponseOuterClass.UniversalResponse universalResponse, Function1<? super v0, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(universalResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        v0.a aVar = v0.a;
        UniversalResponseOuterClass.UniversalResponse.a builder = universalResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        v0 v0VarA = aVar.a(builder);
        block.invoke(v0VarA);
        return v0VarA.a();
    }

    public static final AdDataRefreshResponseOuterClass.AdDataRefreshResponse getAdDataRefreshResponseOrNull(UniversalResponseOuterClass.UniversalResponse.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasAdDataRefreshResponse()) {
            return bVar.getAdDataRefreshResponse();
        }
        return null;
    }

    public static final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse getAdPlayerConfigResponseOrNull(UniversalResponseOuterClass.UniversalResponse.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasAdPlayerConfigResponse()) {
            return bVar.getAdPlayerConfigResponse();
        }
        return null;
    }

    public static final AdResponseOuterClass.AdResponse getAdResponseOrNull(UniversalResponseOuterClass.UniversalResponse.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasAdResponse()) {
            return bVar.getAdResponse();
        }
        return null;
    }

    public static final ErrorOuterClass.Error getErrorOrNull(UniversalResponseOuterClass.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasError()) {
            return bVar.getError();
        }
        return null;
    }

    public static final InitializationResponseOuterClass.InitializationResponse getInitializationResponseOrNull(UniversalResponseOuterClass.UniversalResponse.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasInitializationResponse()) {
            return bVar.getInitializationResponse();
        }
        return null;
    }

    public static final MutableDataOuterClass.MutableData getMutableDataOrNull(UniversalResponseOuterClass.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasMutableData()) {
            return bVar.getMutableData();
        }
        return null;
    }

    public static final UniversalResponseOuterClass.UniversalResponse.Payload getPayloadOrNull(UniversalResponseOuterClass.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasPayload()) {
            return bVar.getPayload();
        }
        return null;
    }

    public static final PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse getPrivacyUpdateResponseOrNull(UniversalResponseOuterClass.UniversalResponse.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasPrivacyUpdateResponse()) {
            return bVar.getPrivacyUpdateResponse();
        }
        return null;
    }
}
