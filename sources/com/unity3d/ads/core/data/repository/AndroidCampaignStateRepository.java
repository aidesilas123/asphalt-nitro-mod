package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.CampaignState;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt___MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
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
/* JADX INFO: compiled from: AndroidCampaignStateRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\t\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u001b\u0010\f\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00110\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ!\u0010\u0016\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0018R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;", "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;", "getSharedDataTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V", "campaignStates", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/google/protobuf/ByteString;", "Lcom/unity3d/ads/core/data/model/CampaignState;", "getCampaignState", "Lgateway/v1/CampaignStateOuterClass$CampaignState;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getState", "opportunityId", "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getStates", "", "Lkotlin/Pair;", "removeState", "", "setLoadTimestamp", "setShowTimestamp", "updateState", "campaignState", "(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/CampaignState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class AndroidCampaignStateRepository implements CampaignStateRepository {
    private final ConcurrentHashMap<ByteString, CampaignState> campaignStates;
    private final GetSharedDataTimestamps getSharedDataTimestamps;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$getCampaignState$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidCampaignStateRepository.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository", f = "AndroidCampaignStateRepository.kt", i = {}, l = {52}, m = "getCampaignState", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidCampaignStateRepository.this.getCampaignState(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setLoadTimestamp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCampaignStateRepository.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository", f = "AndroidCampaignStateRepository.kt", i = {0, 0, 1, 1, 1}, l = {43, 46, 47}, m = "setLoadTimestamp", n = {"this", "opportunityId", "this", "opportunityId", "campaignState"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C16741 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C16741(Continuation<? super C16741> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidCampaignStateRepository.this.setLoadTimestamp(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setShowTimestamp$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCampaignStateRepository.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository", f = "AndroidCampaignStateRepository.kt", i = {0, 0, 1, 1, 1}, l = {22, 25, 26}, m = "setShowTimestamp", n = {"this", "opportunityId", "this", "opportunityId", "campaignState"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    static final class C16751 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C16751(Continuation<? super C16751> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidCampaignStateRepository.this.setShowTimestamp(null, this);
        }
    }

    public AndroidCampaignStateRepository(GetSharedDataTimestamps getSharedDataTimestamps) {
        Intrinsics.checkNotNullParameter(getSharedDataTimestamps, "getSharedDataTimestamps");
        this.getSharedDataTimestamps = getSharedDataTimestamps;
        this.campaignStates = new ConcurrentHashMap<>();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object getCampaignState(kotlin.coroutines.Continuation<? super gateway.v1.CampaignStateOuterClass.CampaignState> r7) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.getCampaignState(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    public Object getState(ByteString byteString, Continuation<? super CampaignState> continuation) {
        return this.campaignStates.get(byteString);
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    public Object getStates(Continuation<? super List<? extends Pair<? extends ByteString, CampaignState>>> continuation) {
        return MapsKt___MapsKt.toList(this.campaignStates);
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    public Object removeState(ByteString byteString, Continuation<? super v> continuation) {
        this.campaignStates.remove(byteString);
        return v.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object setLoadTimestamp(com.google.protobuf.ByteString r14, kotlin.coroutines.Continuation<? super kotlin.v> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.C16741
            if (r0 == 0) goto L13
            r0 = r15
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setLoadTimestamp$1 r0 = (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.C16741) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setLoadTimestamp$1 r0 = new com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setLoadTimestamp$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L55
            if (r2 == r5) goto L49
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r15)
            goto L9d
        L30:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L38:
            java.lang.Object r14 = r0.L$2
            com.unity3d.ads.core.data.model.CampaignState r14 = (com.unity3d.ads.core.data.model.CampaignState) r14
            java.lang.Object r2 = r0.L$1
            com.google.protobuf.ByteString r2 = (com.google.protobuf.ByteString) r2
            java.lang.Object r4 = r0.L$0
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository r4 = (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository) r4
            kotlin.ResultKt.throwOnFailure(r15)
            r5 = r14
            goto L7f
        L49:
            java.lang.Object r14 = r0.L$1
            com.google.protobuf.ByteString r14 = (com.google.protobuf.ByteString) r14
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository r2 = (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository) r2
            kotlin.ResultKt.throwOnFailure(r15)
            goto L66
        L55:
            kotlin.ResultKt.throwOnFailure(r15)
            r0.L$0 = r13
            r0.L$1 = r14
            r0.label = r5
            java.lang.Object r15 = r13.getState(r14, r0)
            if (r15 != r1) goto L65
            return r1
        L65:
            r2 = r13
        L66:
            com.unity3d.ads.core.data.model.CampaignState r15 = (com.unity3d.ads.core.data.model.CampaignState) r15
            if (r15 == 0) goto La0
            com.unity3d.ads.core.domain.GetSharedDataTimestamps r5 = r2.getSharedDataTimestamps
            r0.L$0 = r2
            r0.L$1 = r14
            r0.L$2 = r15
            r0.label = r4
            java.lang.Object r4 = r5.invoke(r0)
            if (r4 != r1) goto L7b
            return r1
        L7b:
            r5 = r15
            r15 = r4
            r4 = r2
            r2 = r14
        L7f:
            r9 = r15
            gateway.v1.TimestampsOuterClass$Timestamps r9 = (gateway.v1.TimestampsOuterClass.Timestamps) r9
            r6 = 0
            r7 = 0
            r8 = 0
            r10 = 0
            r11 = 23
            r12 = 0
            com.unity3d.ads.core.data.model.CampaignState r14 = com.unity3d.ads.core.data.model.CampaignState.copy$default(r5, r6, r7, r8, r9, r10, r11, r12)
            r15 = 0
            r0.L$0 = r15
            r0.L$1 = r15
            r0.L$2 = r15
            r0.label = r3
            java.lang.Object r14 = r4.updateState(r2, r14, r0)
            if (r14 != r1) goto L9d
            return r1
        L9d:
            kotlin.v r14 = kotlin.v.a
            return r14
        La0:
            kotlin.v r14 = kotlin.v.a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.setLoadTimestamp(com.google.protobuf.ByteString, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object setShowTimestamp(com.google.protobuf.ByteString r14, kotlin.coroutines.Continuation<? super kotlin.v> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.C16751
            if (r0 == 0) goto L13
            r0 = r15
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setShowTimestamp$1 r0 = (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.C16751) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setShowTimestamp$1 r0 = new com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository$setShowTimestamp$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L55
            if (r2 == r5) goto L49
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r15)
            goto L9d
        L30:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L38:
            java.lang.Object r14 = r0.L$2
            com.unity3d.ads.core.data.model.CampaignState r14 = (com.unity3d.ads.core.data.model.CampaignState) r14
            java.lang.Object r2 = r0.L$1
            com.google.protobuf.ByteString r2 = (com.google.protobuf.ByteString) r2
            java.lang.Object r4 = r0.L$0
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository r4 = (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository) r4
            kotlin.ResultKt.throwOnFailure(r15)
            r5 = r14
            goto L7f
        L49:
            java.lang.Object r14 = r0.L$1
            com.google.protobuf.ByteString r14 = (com.google.protobuf.ByteString) r14
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository r2 = (com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository) r2
            kotlin.ResultKt.throwOnFailure(r15)
            goto L66
        L55:
            kotlin.ResultKt.throwOnFailure(r15)
            r0.L$0 = r13
            r0.L$1 = r14
            r0.label = r5
            java.lang.Object r15 = r13.getState(r14, r0)
            if (r15 != r1) goto L65
            return r1
        L65:
            r2 = r13
        L66:
            com.unity3d.ads.core.data.model.CampaignState r15 = (com.unity3d.ads.core.data.model.CampaignState) r15
            if (r15 == 0) goto La0
            com.unity3d.ads.core.domain.GetSharedDataTimestamps r5 = r2.getSharedDataTimestamps
            r0.L$0 = r2
            r0.L$1 = r14
            r0.L$2 = r15
            r0.label = r4
            java.lang.Object r4 = r5.invoke(r0)
            if (r4 != r1) goto L7b
            return r1
        L7b:
            r5 = r15
            r15 = r4
            r4 = r2
            r2 = r14
        L7f:
            r10 = r15
            gateway.v1.TimestampsOuterClass$Timestamps r10 = (gateway.v1.TimestampsOuterClass.Timestamps) r10
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r11 = 15
            r12 = 0
            com.unity3d.ads.core.data.model.CampaignState r14 = com.unity3d.ads.core.data.model.CampaignState.copy$default(r5, r6, r7, r8, r9, r10, r11, r12)
            r15 = 0
            r0.L$0 = r15
            r0.L$1 = r15
            r0.L$2 = r15
            r0.label = r3
            java.lang.Object r14 = r4.updateState(r2, r14, r0)
            if (r14 != r1) goto L9d
            return r1
        L9d:
            kotlin.v r14 = kotlin.v.a
            return r14
        La0:
            kotlin.v r14 = kotlin.v.a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository.setShowTimestamp(com.google.protobuf.ByteString, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignStateRepository
    public Object updateState(ByteString byteString, CampaignState campaignState, Continuation<? super v> continuation) {
        this.campaignStates.put(byteString, campaignState);
        return v.a;
    }
}
