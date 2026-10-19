package gateway.v1;

import com.google.protobuf.Timestamp;
import gateway.v1.AdDataRefreshRequestOuterClass;
import gateway.v1.AdPlayerConfigRequestOuterClass;
import gateway.v1.AdRequestOuterClass;
import gateway.v1.DeveloperConsentOuterClass;
import gateway.v1.DiagnosticEventRequestOuterClass;
import gateway.v1.GetTokenEventRequestOuterClass;
import gateway.v1.InitializationCompletedEventRequestOuterClass;
import gateway.v1.InitializationRequestOuterClass;
import gateway.v1.OperativeEventRequestOuterClass;
import gateway.v1.PiiOuterClass;
import gateway.v1.PrivacyUpdateRequestOuterClass;
import gateway.v1.TestDataOuterClass;
import gateway.v1.TimestampsOuterClass;
import gateway.v1.UniversalRequestKt;
import gateway.v1.UniversalRequestOuterClass;
import gateway.v1.t0;
import gateway.v1.u0;
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
/* JADX INFO: compiled from: UniversalRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a*\u0010E\u001a\u00020F2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0H¢\u0006\u0002\bKH\u0087\bø\u0001\u0000¢\u0006\u0002\bL\u001a)\u0010M\u001a\u00020F*\u00020F2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0H¢\u0006\u0002\bKH\u0086\bø\u0001\u0000\u001a)\u0010M\u001a\u00020+*\u00020+2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020J0H¢\u0006\u0002\bKH\u0086\bø\u0001\u0000\u001a)\u0010M\u001a\u00020:*\u00020:2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020O\u0012\u0004\u0012\u00020J0H¢\u0006\u0002\bKH\u0086\bø\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\"\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d\"\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001f*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b \u0010!\"\u0017\u0010\"\u001a\u0004\u0018\u00010#*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b$\u0010%\"\u0017\u0010&\u001a\u0004\u0018\u00010'*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b(\u0010)\"\u0017\u0010*\u001a\u0004\u0018\u00010+*\u00020,8F¢\u0006\u0006\u001a\u0004\b-\u0010.\"\u0017\u0010/\u001a\u0004\u0018\u000100*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b1\u00102\"\u0017\u00103\u001a\u0004\u0018\u000104*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b5\u00106\"\u0017\u00107\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b8\u0010\u0011\"\u0017\u00109\u001a\u0004\u0018\u00010:*\u00020,8F¢\u0006\u0006\u001a\u0004\b;\u0010<\"\u0017\u0010=\u001a\u0004\u0018\u00010>*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b?\u0010@\"\u0017\u0010A\u001a\u0004\u0018\u00010B*\u00020\u000f8F¢\u0006\u0006\u001a\u0004\bC\u0010D\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006P"}, d2 = {"adDataRefreshRequestOrNull", "Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;", "getAdDataRefreshRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;", "adPlayerConfigRequestOrNull", "Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "getAdPlayerConfigRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;", "adRequestOrNull", "Lgateway/v1/AdRequestOuterClass$AdRequest;", "getAdRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/AdRequestOuterClass$AdRequest;", "appStartTimeOrNull", "Lcom/google/protobuf/Timestamp;", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;", "getAppStartTimeOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lcom/google/protobuf/Timestamp;", "developerConsentOrNull", "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;", "getDeveloperConsentOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;", "diagnosticEventRequestOrNull", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "getDiagnosticEventRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;", "getTokenEventRequestOrNull", "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "getGetTokenEventRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;", "initializationCompletedEventRequestOrNull", "Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "getInitializationCompletedEventRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;", "initializationRequestOrNull", "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;", "getInitializationRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;", "operativeEventOrNull", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "getOperativeEventOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;", "payloadOrNull", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;", "getPayloadOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "piiOrNull", "Lgateway/v1/PiiOuterClass$Pii;", "getPiiOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/PiiOuterClass$Pii;", "privacyUpdateRequestOrNull", "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "getPrivacyUpdateRequestOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "sdkStartTimeOrNull", "getSdkStartTimeOrNull", "sharedDataOrNull", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "getSharedDataOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "testDataOrNull", "Lgateway/v1/TestDataOuterClass$TestData;", "getTestDataOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/TestDataOuterClass$TestData;", "timestampsOrNull", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "getTimestampsOrNull", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/TimestampsOuterClass$Timestamps;", "universalRequest", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;", "block", "Lkotlin/Function1;", "Lgateway/v1/UniversalRequestKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeuniversalRequest", "copy", "Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;", "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class UniversalRequestKtKt {
    /* JADX INFO: renamed from: -initializeuniversalRequest, reason: not valid java name */
    public static final UniversalRequestOuterClass.UniversalRequest m1224initializeuniversalRequest(Function1<? super UniversalRequestKt.a, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalRequestKt.a.C0469a c0469a = UniversalRequestKt.a.a;
        UniversalRequestOuterClass.UniversalRequest.a aVarNewBuilder = UniversalRequestOuterClass.UniversalRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        UniversalRequestKt.a aVarA = c0469a.a(aVarNewBuilder);
        block.invoke(aVarA);
        return aVarA.a();
    }

    public static final UniversalRequestOuterClass.UniversalRequest.Payload copy(UniversalRequestOuterClass.UniversalRequest.Payload payload, Function1<? super t0, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(payload, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        t0.a aVar = t0.a;
        UniversalRequestOuterClass.UniversalRequest.Payload.a builder = payload.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        t0 t0VarA = aVar.a(builder);
        block.invoke(t0VarA);
        return t0VarA.a();
    }

    public static final UniversalRequestOuterClass.UniversalRequest.SharedData copy(UniversalRequestOuterClass.UniversalRequest.SharedData sharedData, Function1<? super u0, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(sharedData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        u0.a aVar = u0.a;
        UniversalRequestOuterClass.UniversalRequest.SharedData.a builder = sharedData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        u0 u0VarA = aVar.a(builder);
        block.invoke(u0VarA);
        return u0VarA.a();
    }

    public static final UniversalRequestOuterClass.UniversalRequest copy(UniversalRequestOuterClass.UniversalRequest universalRequest, Function1<? super UniversalRequestKt.a, kotlin.v> block) {
        Intrinsics.checkNotNullParameter(universalRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        UniversalRequestKt.a.C0469a c0469a = UniversalRequestKt.a.a;
        UniversalRequestOuterClass.UniversalRequest.a builder = universalRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        UniversalRequestKt.a aVarA = c0469a.a(builder);
        block.invoke(aVarA);
        return aVarA.a();
    }

    public static final AdDataRefreshRequestOuterClass.AdDataRefreshRequest getAdDataRefreshRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasAdDataRefreshRequest()) {
            return bVar.getAdDataRefreshRequest();
        }
        return null;
    }

    public static final AdPlayerConfigRequestOuterClass.AdPlayerConfigRequest getAdPlayerConfigRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasAdPlayerConfigRequest()) {
            return bVar.getAdPlayerConfigRequest();
        }
        return null;
    }

    public static final AdRequestOuterClass.AdRequest getAdRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasAdRequest()) {
            return bVar.getAdRequest();
        }
        return null;
    }

    public static final Timestamp getAppStartTimeOrNull(UniversalRequestOuterClass.UniversalRequest.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.hasAppStartTime()) {
            return cVar.getAppStartTime();
        }
        return null;
    }

    public static final DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsentOrNull(UniversalRequestOuterClass.UniversalRequest.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.hasDeveloperConsent()) {
            return cVar.getDeveloperConsent();
        }
        return null;
    }

    public static final DiagnosticEventRequestOuterClass.DiagnosticEventRequest getDiagnosticEventRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasDiagnosticEventRequest()) {
            return bVar.getDiagnosticEventRequest();
        }
        return null;
    }

    public static final GetTokenEventRequestOuterClass.GetTokenEventRequest getGetTokenEventRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasGetTokenEventRequest()) {
            return bVar.getGetTokenEventRequest();
        }
        return null;
    }

    public static final InitializationCompletedEventRequestOuterClass.InitializationCompletedEventRequest getInitializationCompletedEventRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasInitializationCompletedEventRequest()) {
            return bVar.getInitializationCompletedEventRequest();
        }
        return null;
    }

    public static final InitializationRequestOuterClass.InitializationRequest getInitializationRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasInitializationRequest()) {
            return bVar.getInitializationRequest();
        }
        return null;
    }

    public static final OperativeEventRequestOuterClass.OperativeEventRequest getOperativeEventOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasOperativeEvent()) {
            return bVar.getOperativeEvent();
        }
        return null;
    }

    public static final UniversalRequestOuterClass.UniversalRequest.Payload getPayloadOrNull(UniversalRequestOuterClass.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasPayload()) {
            return bVar.getPayload();
        }
        return null;
    }

    public static final PiiOuterClass.Pii getPiiOrNull(UniversalRequestOuterClass.UniversalRequest.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.hasPii()) {
            return cVar.getPii();
        }
        return null;
    }

    public static final PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest getPrivacyUpdateRequestOrNull(UniversalRequestOuterClass.UniversalRequest.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasPrivacyUpdateRequest()) {
            return bVar.getPrivacyUpdateRequest();
        }
        return null;
    }

    public static final Timestamp getSdkStartTimeOrNull(UniversalRequestOuterClass.UniversalRequest.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.hasSdkStartTime()) {
            return cVar.getSdkStartTime();
        }
        return null;
    }

    public static final UniversalRequestOuterClass.UniversalRequest.SharedData getSharedDataOrNull(UniversalRequestOuterClass.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        if (bVar.hasSharedData()) {
            return bVar.getSharedData();
        }
        return null;
    }

    public static final TestDataOuterClass.TestData getTestDataOrNull(UniversalRequestOuterClass.UniversalRequest.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.hasTestData()) {
            return cVar.getTestData();
        }
        return null;
    }

    public static final TimestampsOuterClass.Timestamps getTimestampsOrNull(UniversalRequestOuterClass.UniversalRequest.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        if (cVar.hasTimestamps()) {
            return cVar.getTimestamps();
        }
        return null;
    }
}
