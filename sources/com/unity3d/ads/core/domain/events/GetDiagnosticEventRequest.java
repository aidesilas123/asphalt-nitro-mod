package com.unity3d.ads.core.domain.events;

import com.json.o2;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

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
/* JADX INFO: compiled from: GetDiagnosticEventRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JO\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\f\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0086Bø\u0001\u0000¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;", "", "getSharedDataTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V", "invoke", "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;", o2.h.k0, "", "tags", "", "intTags", "", "value", "", "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class GetDiagnosticEventRequest {
    private final GetSharedDataTimestamps getSharedDataTimestamps;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetDiagnosticEventRequest.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest", f = "GetDiagnosticEventRequest.kt", i = {0, 0, 0, 0, 0}, l = {14}, m = "invoke", n = {o2.h.k0, "tags", "intTags", "value", "$this$invoke_u24lambda_u243"}, s = {"L$0", "L$1", "L$2", "L$3", "L$5"})
    static final class AnonymousClass1 extends ContinuationImpl {
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
            return GetDiagnosticEventRequest.this.invoke(null, null, null, null, this);
        }
    }

    public GetDiagnosticEventRequest(GetSharedDataTimestamps getSharedDataTimestamps) {
        Intrinsics.checkNotNullParameter(getSharedDataTimestamps, "getSharedDataTimestamps");
        this.getSharedDataTimestamps = getSharedDataTimestamps;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, java.util.Map<java.lang.String, java.lang.Integer> r9, java.lang.Double r10, kotlin.coroutines.Continuation<? super gateway.v1.DiagnosticEventRequestOuterClass.DiagnosticEvent> r11) {
        /*
            r6 = this;
            boolean r0 = r11 instanceof com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r11
            com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest$invoke$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L51
            if (r2 != r3) goto L49
            java.lang.Object r7 = r0.L$6
            gateway.v1.n r7 = (gateway.v1.n) r7
            java.lang.Object r8 = r0.L$5
            gateway.v1.n r8 = (gateway.v1.n) r8
            java.lang.Object r9 = r0.L$4
            gateway.v1.n r9 = (gateway.v1.n) r9
            java.lang.Object r10 = r0.L$3
            java.lang.Double r10 = (java.lang.Double) r10
            java.lang.Object r1 = r0.L$2
            java.util.Map r1 = (java.util.Map) r1
            java.lang.Object r2 = r0.L$1
            java.util.Map r2 = (java.util.Map) r2
            java.lang.Object r0 = r0.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.ResultKt.throwOnFailure(r11)
            r5 = r11
            r11 = r9
            r9 = r1
            r1 = r5
            goto L86
        L49:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L51:
            kotlin.ResultKt.throwOnFailure(r11)
            gateway.v1.n$a r11 = gateway.v1.n.a
            gateway.v1.DiagnosticEventRequestOuterClass$DiagnosticEvent$a r2 = gateway.v1.DiagnosticEventRequestOuterClass.DiagnosticEvent.newBuilder()
            java.lang.String r4 = "newBuilder()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            gateway.v1.n r11 = r11.a(r2)
            gateway.v1.DiagnosticEventRequestOuterClass$DiagnosticEventType r2 = gateway.v1.DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_CUSTOM
            r11.g(r2)
            com.unity3d.ads.core.domain.GetSharedDataTimestamps r2 = r6.getSharedDataTimestamps
            r0.L$0 = r7
            r0.L$1 = r8
            r0.L$2 = r9
            r0.L$3 = r10
            r0.L$4 = r11
            r0.L$5 = r11
            r0.L$6 = r11
            r0.label = r3
            java.lang.Object r0 = r2.invoke(r0)
            if (r0 != r1) goto L81
            return r1
        L81:
            r2 = r8
            r8 = r11
            r1 = r0
            r0 = r7
            r7 = r8
        L86:
            gateway.v1.TimestampsOuterClass$Timestamps r1 = (gateway.v1.TimestampsOuterClass.Timestamps) r1
            r7.i(r1)
            r8.f(r0)
            if (r2 == 0) goto L97
            com.google.protobuf.kotlin.b r7 = r8.c()
            r8.e(r7, r2)
        L97:
            if (r9 == 0) goto La0
            com.google.protobuf.kotlin.b r7 = r8.b()
            r8.d(r7, r9)
        La0:
            if (r10 == 0) goto La9
            double r9 = r10.doubleValue()
            r8.h(r9)
        La9:
            gateway.v1.DiagnosticEventRequestOuterClass$DiagnosticEvent r7 = r11.a()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest.invoke(java.lang.String, java.util.Map, java.util.Map, java.lang.Double, kotlin.coroutines.d):java.lang.Object");
    }
}
