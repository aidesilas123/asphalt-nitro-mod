package com.unity3d.ads.gatewayclient;

import com.google.protobuf.ByteString;
import com.google.protobuf.d0;
import com.json.mediationsdk.utils.c;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.UnityAdsNetworkException;
import com.unity3d.ads.core.domain.HandleGatewayUniversalResponse;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpResponse;
import gateway.v1.ErrorOuterClass;
import gateway.v1.UniversalResponseOuterClass;
import gateway.v1.u;
import gateway.v1.v0;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.random.Random;
import kotlin.v;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: CommonGatewayClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 ,2\u00020\u0001:\u0001,B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J1\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ1\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010%J1\u0010&\u001a\u00020!2\u0006\u0010'\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u000eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "httpClient", "Lcom/unity3d/services/core/network/core/HttpClient;", "handleGatewayUniversalResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "calculateDelayTime", "", "requestPolicy", "Lcom/unity3d/ads/gatewayclient/RequestPolicy;", "retryCount", "", "calculateExponentialBackoff", "retryWaitBase", "calculateJitter", "retryWaitTime", "retryJitterPct", "", "getUniversalResponse", "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;", c.Y1, "Lcom/unity3d/services/core/network/model/HttpResponse;", "request", "url", "", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;", "operationType", "Lcom/unity3d/ads/core/data/model/OperationType;", "(Ljava/lang/String;Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lcom/unity3d/ads/gatewayclient/RequestPolicy;Lcom/unity3d/ads/core/data/model/OperationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendNetworkErrorDiagnosticEvent", "", "e", "Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;", "duration", "(Lcom/unity3d/ads/core/data/model/UnityAdsNetworkException;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendNetworkSuccessDiagnosticEvent", "httpResponse", "(Lcom/unity3d/services/core/network/model/HttpResponse;ILcom/unity3d/ads/core/data/model/OperationType;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldRetry", "", "responseCode", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class CommonGatewayClient implements GatewayClient {
    public static final int CODE_400 = 400;
    public static final int CODE_599 = 599;
    public static final Companion Companion = new Companion(null);
    public static final String RETRY_ATTEMPT_HEADER = "X-RETRY-ATTEMPT";
    private final HandleGatewayUniversalResponse handleGatewayUniversalResponse;
    private final HttpClient httpClient;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/gatewayclient/CommonGatewayClient$Companion;", "", "()V", "CODE_400", "", "CODE_599", "RETRY_ATTEMPT_HEADER", "", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonGatewayClient.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient", f = "CommonGatewayClient.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4}, l = {75, 76, 78, 85, 92}, m = "request", n = {"this", "url", "request", "requestPolicy", "operationType", "retryCount", "retryDuration", "startTime", "this", "url", "request", "requestPolicy", "operationType", "retryCount", "httpResponse", "retryDuration", "startTime", "this", "url", "request", "requestPolicy", "operationType", "retryCount", "e", "retryDuration", "this", "url", "request", "requestPolicy", "operationType", "retryCount", "retryDuration"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "J$0", "J$1", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        long J$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonGatewayClient.this.request(null, null, null, null, this);
        }
    }

    public CommonGatewayClient(HttpClient httpClient, HandleGatewayUniversalResponse handleGatewayUniversalResponse, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(handleGatewayUniversalResponse, "handleGatewayUniversalResponse");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.httpClient = httpClient;
        this.handleGatewayUniversalResponse = handleGatewayUniversalResponse;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    private final long calculateDelayTime(RequestPolicy requestPolicy, int i) {
        long jCalculateExponentialBackoff = calculateExponentialBackoff(requestPolicy.getRetryWaitBase(), i);
        return jCalculateExponentialBackoff + calculateJitter(jCalculateExponentialBackoff, requestPolicy.getRetryJitterPct());
    }

    private final long calculateExponentialBackoff(int i, int i2) {
        return ((long) i) * ((long) Math.pow(2.0d, i2));
    }

    private final long calculateJitter(long j, float f2) {
        long j2 = (long) (j * f2);
        return Random.a.n(-j2, j2 + 1);
    }

    private final UniversalResponseOuterClass.UniversalResponse getUniversalResponse(HttpResponse httpResponse) {
        try {
            Object body = httpResponse.getBody();
            if (body instanceof byte[]) {
                UniversalResponseOuterClass.UniversalResponse from = UniversalResponseOuterClass.UniversalResponse.parseFrom((byte[]) body);
                Intrinsics.checkNotNullExpressionValue(from, "parseFrom(responseBody)");
                return from;
            }
            if (!(body instanceof String)) {
                throw new d0("Could not parse response from gateway service");
            }
            UniversalResponseOuterClass.UniversalResponse from2 = UniversalResponseOuterClass.UniversalResponse.parseFrom(ByteString.copyFromUtf8(httpResponse.getBody().toString()));
            Intrinsics.checkNotNullExpressionValue(from2, "parseFrom(\n             …ring())\n                )");
            return from2;
        } catch (d0 e2) {
            DeviceLog.debug("Failed to parse response from gateway service with exception: %s", e2.getLocalizedMessage());
            v0.a aVar = v0.a;
            UniversalResponseOuterClass.UniversalResponse.a aVarNewBuilder = UniversalResponseOuterClass.UniversalResponse.newBuilder();
            Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
            v0 v0VarA = aVar.a(aVarNewBuilder);
            u.a aVar2 = u.a;
            ErrorOuterClass.Error.a aVarNewBuilder2 = ErrorOuterClass.Error.newBuilder();
            Intrinsics.checkNotNullExpressionValue(aVarNewBuilder2, "newBuilder()");
            u uVarA = aVar2.a(aVarNewBuilder2);
            uVarA.b("ERROR: Could not parse response from gateway service");
            v0VarA.b(uVarA.a());
            return v0VarA.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendNetworkErrorDiagnosticEvent(UnityAdsNetworkException unityAdsNetworkException, int i, OperationType operationType, long j, Continuation<? super v> continuation) {
        Object objInvoke$default;
        return (operationType != OperationType.UNIVERSAL_EVENT && (objInvoke$default = SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_failure_time", Boxing.boxLong(j), MapsKt__MapsKt.mutableMapOf(TuplesKt.to("operation", operationType.toString()), TuplesKt.to("retries", String.valueOf(i)), TuplesKt.to("protocol", String.valueOf(unityAdsNetworkException.getProtocol())), TuplesKt.to("network_client", String.valueOf(unityAdsNetworkException.getClient()))), null, continuation, 8, null)) == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objInvoke$default : v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendNetworkSuccessDiagnosticEvent(HttpResponse httpResponse, int i, OperationType operationType, long j, Continuation<? super v> continuation) {
        Object objInvoke$default;
        return (operationType != OperationType.UNIVERSAL_EVENT && (objInvoke$default = SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_success_time", Boxing.boxLong(j), MapsKt__MapsKt.mutableMapOf(TuplesKt.to("operation", operationType.toString()), TuplesKt.to("retries", String.valueOf(i)), TuplesKt.to("protocol", httpResponse.getProtocol()), TuplesKt.to("network_client", httpResponse.getClient())), null, continuation, 8, null)) == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objInvoke$default : v.a;
    }

    private final boolean shouldRetry(int i) {
        return 400 <= i && i < 600;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:40|(1:97)|41|42|89|43|44|99|45|(1:47)(4:48|49|67|(2:69|(2:71|(1:73)(2:74|75))(2:76|77))(2:78|(1:80)(3:81|82|(2:85|86)(0))))) */
    /* JADX WARN: Can't wrap try/catch for region: R(10:40|97|41|42|89|43|44|99|45|(1:47)(4:48|49|67|(2:69|(2:71|(1:73)(2:74|75))(2:76|77))(2:78|(1:80)(3:81|82|(2:85|86)(0))))) */
    /* JADX WARN: Can't wrap try/catch for region: R(10:84|31|(1:33)|34|95|35|36|93|37|(1:39)(10:40|97|41|42|89|43|44|99|45|(1:47)(4:48|49|67|(2:69|(2:71|(1:73)(2:74|75))(2:76|77))(2:78|(1:80)(3:81|82|(2:85|86)(0)))))) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0206, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0208, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0209, code lost:
    
        r23 = r9;
        r24 = r10;
        r17 = r11;
        r25 = r12;
        r20 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0222, code lost:
    
        r10 = r5;
        r13 = r17;
        r8 = r20;
        r5 = r22;
        r15 = r23;
        r14 = r24;
        r11 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0230, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0232, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0233, code lost:
    
        r41 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0235, code lost:
    
        r5 = r41;
        r14 = r3;
        r15 = r2;
        r1 = r9;
        r2 = r13;
        r13 = r4;
        r4 = r10;
        r10 = r8;
        r8 = r14;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x026c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0322  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x02fb -> B:82:0x030a). Please report as a decompilation issue!!! */
    @Override // com.unity3d.ads.gatewayclient.GatewayClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object request(java.lang.String r41, gateway.v1.UniversalRequestOuterClass.UniversalRequest r42, com.unity3d.ads.gatewayclient.RequestPolicy r43, com.unity3d.ads.core.data.model.OperationType r44, kotlin.coroutines.Continuation<? super gateway.v1.UniversalResponseOuterClass.UniversalResponse> r45) throws com.unity3d.ads.core.data.model.UnityAdsNetworkException {
        /*
            Method dump skipped, instruction units count: 852
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.gatewayclient.CommonGatewayClient.request(java.lang.String, gateway.v1.UniversalRequestOuterClass$UniversalRequest, com.unity3d.ads.gatewayclient.RequestPolicy, com.unity3d.ads.core.data.model.OperationType, kotlin.coroutines.d):java.lang.Object");
    }
}
