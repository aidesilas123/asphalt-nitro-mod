package io.didomi.drawable.apiEvents;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.Gson;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.C1756f;
import io.didomi.drawable.InterfaceC1710a3;
import io.didomi.drawable.InterfaceC1746e;
import io.didomi.drawable.J;
import io.didomi.drawable.K;
import io.didomi.drawable.Log;
import io.didomi.drawable.RequiredIds;
import io.didomi.drawable.Z;
import io.didomi.drawable.Z2;
import io.didomi.drawable.apiEvents.ConsentGivenApiEventParameters;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.json.JSONObject;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
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
    	... 5 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002BE\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0017\u001a\u00020\u00162\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ\r\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b\u001e\u0010\u001bJ\r\u0010\u001f\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010\u001bJ÷\u0001\u0010\u0017\u001a\u00020\u00192\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\r0 2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\r0 2\b\u00101\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0017\u00102J\r\u00103\u001a\u00020\u0016¢\u0006\u0004\b3\u00104J\r\u00105\u001a\u00020\u0019¢\u0006\u0004\b5\u0010\u001bJ\r\u00106\u001a\u00020\u0019¢\u0006\u0004\b6\u0010\u001bJ\r\u00107\u001a\u00020\u0019¢\u0006\u0004\b7\u0010\u001bJ\r\u00108\u001a\u00020\u0019¢\u0006\u0004\b8\u0010\u001bJ\r\u00109\u001a\u00020\u0019¢\u0006\u0004\b9\u0010\u001bJ\r\u0010:\u001a\u00020\u0019¢\u0006\u0004\b:\u0010\u001bJ'\u0010\u001d\u001a\u00020\u00192\u0016\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00140\u0013\"\u0004\u0018\u00010\u0014H\u0000¢\u0006\u0004\b\u001d\u0010;J\u0017\u0010\u001d\u001a\u00020\u00192\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b\u001d\u0010>J\u0019\u0010\u0017\u001a\u00020\u00192\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\b\u0017\u0010>J\u000f\u0010\u0017\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u0017\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010?R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010@R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010AR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010BR\u001a\u0010\f\u001a\u00020\u000b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001f\u0010C\u001a\u0004\bD\u0010ER\u001a\u0010\u000e\u001a\u00020\r8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001e\u0010F\u001a\u0004\bG\u0010HR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010IR'\u0010O\u001a\u0012\u0012\u0004\u0012\u00020\u00140Jj\b\u0012\u0004\u0012\u00020\u0014`K8\u0006¢\u0006\f\n\u0004\b8\u0010L\u001a\u0004\bM\u0010NR$\u0010P\u001a\u0012\u0012\u0004\u0012\u00020\u00140Jj\b\u0012\u0004\u0012\u00020\u0014`K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010LR\u0016\u0010R\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010QR\u0014\u0010U\u001a\u00020S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010TR\u001d\u0010[\u001a\b\u0012\u0004\u0012\u00020W0V8\u0006¢\u0006\f\n\u0004\b7\u0010X\u001a\u0004\bY\u0010Z¨\u0006\\"}, d2 = {"Lio/didomi/sdk/apiEvents/b;", "Lio/didomi/sdk/a3;", "Lio/didomi/sdk/K;", "Lio/didomi/sdk/apiEvents/a;", "apiEventsFactory", "Lio/didomi/sdk/J;", "connectivityHelper", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/Z2;", "httpRequestHelper", "Lio/didomi/sdk/r5;", "requiredIds", "", "noticePosition", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lio/didomi/sdk/r5;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;)V", "", "Lio/didomi/sdk/e;", "apiEvents", "", "a", "([Lio/didomi/sdk/e;)Z", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, InneractiveMediationDefs.GENDER_FEMALE, "e", "", "enabledPurposeIds", "disabledPurposeIds", "enabledLegitimatePurposeIds", "disabledLegitimatePurposeIds", "enabledVendorIds", "disabledVendorIds", "enabledLegIntVendorIds", "disabledLegIntVendorIds", "previousEnabledPurposeIds", "previousDisabledPurposeIds", "previousEnabledLegitimatePurposeIds", "previousDisabledLegitimatePurposeIds", "previousEnabledVendorIds", "previousDisabledVendorIds", "previousEnabledLegIntVendorIds", "previousDisabledLegIntVendorIds", "action", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V", "g", "()Z", "j", CampaignEx.JSON_KEY_AD_K, "l", "h", InneractiveMediationDefs.GENDER_MALE, "i", "([Lio/didomi/sdk/e;)V", "Lorg/json/JSONObject;", "jsonObject", "(Lorg/json/JSONObject;)V", "Lio/didomi/sdk/apiEvents/a;", "Lio/didomi/sdk/J;", "Lio/didomi/sdk/Z;", "Lio/didomi/sdk/Z2;", "Lio/didomi/sdk/r5;", "getRequiredIds$android_release", "()Lio/didomi/sdk/r5;", "Ljava/lang/String;", "getNoticePosition$android_release", "()Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "getEventsArray", "()Ljava/util/ArrayList;", "eventsArray", "queuedEvents", "Z", "isSending", "Lcom/google/gson/Gson;", "Lcom/google/gson/Gson;", "gson", "", "Lio/didomi/sdk/apiEvents/ApiEventType;", "Ljava/util/Set;", "getTriggeredEvents", "()Ljava/util/Set;", "triggeredEvents", "android_release"}, mv = {1, 8, 0})
public final class b implements InterfaceC1710a3, K {
    private final io.didomi.drawable.apiEvents.a a;
    private final J b;
    private final Z c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Z2 f8500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RequiredIds f8501e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8502f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CoroutineDispatcher f8503g;
    private final ArrayList<InterfaceC1746e> h;
    private final ArrayList<InterfaceC1746e> i;
    private boolean j;
    private final Gson k;
    private final Set<ApiEventType> l;

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.apiEvents.ApiEventsRepository$sendEvents$1", f = "ApiEventsRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;
        final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new a(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Z2 z2 = b.this.f8500d;
            String str = b.this.c.a() + b4.M;
            String content = this.c;
            Intrinsics.checkNotNullExpressionValue(content, "content");
            Z2.a(z2, str, content, b.this, 0, 8, null);
            return v.a;
        }
    }

    public b(io.didomi.drawable.apiEvents.a apiEventsFactory, J connectivityHelper, Z contextHelper, Z2 httpRequestHelper, RequiredIds requiredIds, String noticePosition, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(apiEventsFactory, "apiEventsFactory");
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(httpRequestHelper, "httpRequestHelper");
        Intrinsics.checkNotNullParameter(requiredIds, "requiredIds");
        Intrinsics.checkNotNullParameter(noticePosition, "noticePosition");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.a = apiEventsFactory;
        this.b = connectivityHelper;
        this.c = contextHelper;
        this.f8500d = httpRequestHelper;
        this.f8501e = requiredIds;
        this.f8502f = noticePosition;
        this.f8503g = coroutineDispatcher;
        this.h = new ArrayList<>();
        this.i = new ArrayList<>();
        this.k = new Gson();
        this.l = new LinkedHashSet();
    }

    private final synchronized boolean a(InterfaceC1746e... interfaceC1746eArr) {
        ArrayList arrayList = new ArrayList();
        for (InterfaceC1746e interfaceC1746e : interfaceC1746eArr) {
            if (true ^ C1756f.a(interfaceC1746e)) {
                arrayList.add(interfaceC1746e);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        if (this.j) {
            this.i.addAll(arrayList);
            return false;
        }
        this.h.addAll(arrayList);
        if (!this.b.c()) {
            a((JSONObject) null);
            return false;
        }
        this.j = true;
        InterfaceC1746e[] interfaceC1746eArr2 = (InterfaceC1746e[]) this.h.toArray(new InterfaceC1746e[0]);
        b((InterfaceC1746e[]) Arrays.copyOf(interfaceC1746eArr2, interfaceC1746eArr2.length));
        return true;
    }

    private final void b() {
        if (!this.i.isEmpty()) {
            this.h.addAll(this.i);
            this.i.clear();
        }
    }

    private final void c() {
        if (!this.h.isEmpty()) {
            this.h.clear();
        }
    }

    private final void d() {
        List list = CollectionsKt___CollectionsKt.toList(this.h);
        if (!list.isEmpty()) {
            this.j = true;
            InterfaceC1746e[] interfaceC1746eArr = (InterfaceC1746e[]) list.toArray(new InterfaceC1746e[0]);
            b((InterfaceC1746e[]) Arrays.copyOf(interfaceC1746eArr, interfaceC1746eArr.length));
        }
    }

    @Override // io.didomi.drawable.K
    public synchronized void a() {
        if (!this.j) {
            b();
            d();
        }
    }

    public final void a(Set<String> enabledPurposeIds, Set<String> disabledPurposeIds, Set<String> enabledLegitimatePurposeIds, Set<String> disabledLegitimatePurposeIds, Set<String> enabledVendorIds, Set<String> disabledVendorIds, Set<String> enabledLegIntVendorIds, Set<String> disabledLegIntVendorIds, Set<String> previousEnabledPurposeIds, Set<String> previousDisabledPurposeIds, Set<String> previousEnabledLegitimatePurposeIds, Set<String> previousDisabledLegitimatePurposeIds, Set<String> previousEnabledVendorIds, Set<String> previousDisabledVendorIds, Set<String> previousEnabledLegIntVendorIds, Set<String> previousDisabledLegIntVendorIds, String str) {
        Intrinsics.checkNotNullParameter(enabledPurposeIds, "enabledPurposeIds");
        Intrinsics.checkNotNullParameter(disabledPurposeIds, "disabledPurposeIds");
        Intrinsics.checkNotNullParameter(enabledLegitimatePurposeIds, "enabledLegitimatePurposeIds");
        Intrinsics.checkNotNullParameter(disabledLegitimatePurposeIds, "disabledLegitimatePurposeIds");
        Intrinsics.checkNotNullParameter(enabledVendorIds, "enabledVendorIds");
        Intrinsics.checkNotNullParameter(disabledVendorIds, "disabledVendorIds");
        Intrinsics.checkNotNullParameter(enabledLegIntVendorIds, "enabledLegIntVendorIds");
        Intrinsics.checkNotNullParameter(disabledLegIntVendorIds, "disabledLegIntVendorIds");
        Intrinsics.checkNotNullParameter(previousEnabledPurposeIds, "previousEnabledPurposeIds");
        Intrinsics.checkNotNullParameter(previousDisabledPurposeIds, "previousDisabledPurposeIds");
        Intrinsics.checkNotNullParameter(previousEnabledLegitimatePurposeIds, "previousEnabledLegitimatePurposeIds");
        Intrinsics.checkNotNullParameter(previousDisabledLegitimatePurposeIds, "previousDisabledLegitimatePurposeIds");
        Intrinsics.checkNotNullParameter(previousEnabledVendorIds, "previousEnabledVendorIds");
        Intrinsics.checkNotNullParameter(previousDisabledVendorIds, "previousDisabledVendorIds");
        Intrinsics.checkNotNullParameter(previousEnabledLegIntVendorIds, "previousEnabledLegIntVendorIds");
        Intrinsics.checkNotNullParameter(previousDisabledLegIntVendorIds, "previousDisabledLegIntVendorIds");
        InterfaceC1746e[] interfaceC1746eArr = (InterfaceC1746e[]) this.a.a(new ConsentGivenApiEventParameters(new ConsentGivenApiEventParameters.ConsentStatus(disabledPurposeIds, enabledPurposeIds), new ConsentGivenApiEventParameters.ConsentStatus(disabledLegitimatePurposeIds, enabledLegitimatePurposeIds), new ConsentGivenApiEventParameters.ConsentStatus(previousDisabledPurposeIds, previousEnabledPurposeIds), new ConsentGivenApiEventParameters.ConsentStatus(previousDisabledLegitimatePurposeIds, previousEnabledLegitimatePurposeIds), new ConsentGivenApiEventParameters.ConsentStatus(disabledVendorIds, enabledVendorIds), new ConsentGivenApiEventParameters.ConsentStatus(disabledLegIntVendorIds, enabledLegIntVendorIds), new ConsentGivenApiEventParameters.ConsentStatus(previousDisabledVendorIds, previousEnabledVendorIds), new ConsentGivenApiEventParameters.ConsentStatus(previousDisabledLegIntVendorIds, previousEnabledLegIntVendorIds), str)).toArray(new InterfaceC1746e[0]);
        a((InterfaceC1746e[]) Arrays.copyOf(interfaceC1746eArr, interfaceC1746eArr.length));
    }

    @Override // io.didomi.drawable.InterfaceC1710a3
    public synchronized void a(JSONObject jSONObject) {
        this.j = false;
        Log.i$default("API events queued because previous sending failed", null, 2, null);
        b();
    }

    @Override // io.didomi.drawable.InterfaceC1710a3
    public synchronized void b(JSONObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        this.j = false;
        Log.i$default("API events sent", null, 2, null);
        c();
        b();
        d();
    }

    public final void b(InterfaceC1746e... apiEvents) {
        Intrinsics.checkNotNullParameter(apiEvents, "apiEvents");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.f8503g), null, null, new a(apiEvents.length == 1 ? this.k.toJson(apiEvents[0]) : this.k.toJson(apiEvents), null), 3, null);
    }

    public final void e() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.CONSENT_ASKED;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, new ConsentAskedApiEventParameters(this.f8501e.a(), this.f8501e.c(), this.f8501e.b(), this.f8501e.d(), this.f8502f), null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final void f() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.PAGE_VIEW;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final boolean g() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.SYNC_ACKNOWLEDGED;
        if (set.contains(apiEventType)) {
            return false;
        }
        InterfaceC1746e interfaceC1746eA = io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null);
        this.l.add(apiEventType);
        return a(interfaceC1746eA);
    }

    public final void h() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.UI_ACTION_PURPOSE_CHANGED;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final void i() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final void j() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.UI_ACTION_SHOWN_PERSONAL_DATA_TYPES;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final void k() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.UI_ACTION_SHOWN_PURPOSES;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final void l() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.UI_ACTION_SHOWN_VENDORS;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }

    public final void m() {
        Set<ApiEventType> set = this.l;
        ApiEventType apiEventType = ApiEventType.UI_ACTION_VENDOR_CHANGED;
        if (set.contains(apiEventType)) {
            return;
        }
        a(io.didomi.drawable.apiEvents.a.a(this.a, apiEventType, null, null, false, 12, null));
        this.l.add(apiEventType);
    }
}
