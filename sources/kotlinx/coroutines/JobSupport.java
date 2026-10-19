package kotlinx.coroutines;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlinx.coroutines.InternalCompletionHandler;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.selects.SelectInstance;

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
/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000è\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\nµ\u0001¶\u0001·\u0001¸\u0001¹\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010A\u001a\u00020\u00052\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0002J\u001e\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00112\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00110KH\u0002J\u0012\u0010L\u001a\u00020H2\b\u00108\u001a\u0004\u0018\u00010\u000bH\u0014J\u000e\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u0002J\u0010\u0010O\u001a\u0004\u0018\u00010\u000bH\u0084@¢\u0006\u0002\u0010PJ\u0010\u0010Q\u001a\u0004\u0018\u00010\u000bH\u0082@¢\u0006\u0002\u0010PJ\u0012\u0010R\u001a\u00020\u00052\b\u0010S\u001a\u0004\u0018\u00010\u0011H\u0017J\u0018\u0010R\u001a\u00020H2\u000e\u0010S\u001a\n\u0018\u00010Tj\u0004\u0018\u0001`UH\u0016J\u0010\u0010V\u001a\u00020\u00052\b\u0010S\u001a\u0004\u0018\u00010\u0011J\u0017\u0010W\u001a\u00020\u00052\b\u0010S\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0002\bXJ\u0010\u0010Y\u001a\u00020H2\u0006\u0010S\u001a\u00020\u0011H\u0016J\u0014\u0010Z\u001a\u0004\u0018\u00010\u000b2\b\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010[\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0011H\u0002J\b\u0010\\\u001a\u00020]H\u0014J\u0010\u0010^\u001a\u00020\u00052\u0006\u0010S\u001a\u00020\u0011H\u0016J\u001a\u0010_\u001a\u00020H2\u0006\u00108\u001a\u00020?2\b\u0010`\u001a\u0004\u0018\u00010\u000bH\u0002J\"\u0010a\u001a\u00020H2\u0006\u00108\u001a\u00020b2\u0006\u0010c\u001a\u00020d2\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010f\u001a\u00020\u00112\b\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J&\u0010g\u001a\u00020h2\n\b\u0002\u0010i\u001a\u0004\u0018\u00010]2\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u0011H\u0080\b¢\u0006\u0002\bjJ\u001c\u0010k\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020b2\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010l\u001a\u0004\u0018\u00010d2\u0006\u00108\u001a\u00020?H\u0002J\n\u0010m\u001a\u00060Tj\u0002`UJ\f\u0010n\u001a\u00060Tj\u0002`UH\u0016J\u000f\u0010o\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0002\bpJ\b\u0010q\u001a\u0004\u0018\u00010\u0011J \u0010r\u001a\u0004\u0018\u00010\u00112\u0006\u00108\u001a\u00020b2\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00110KH\u0002J\u0012\u0010s\u001a\u0004\u0018\u00010D2\u0006\u00108\u001a\u00020?H\u0002J\u0010\u0010t\u001a\u00020\u00052\u0006\u0010u\u001a\u00020\u0011H\u0014J\u0015\u0010v\u001a\u00020H2\u0006\u0010u\u001a\u00020\u0011H\u0010¢\u0006\u0002\bwJ\u0012\u0010x\u001a\u00020H2\b\u0010/\u001a\u0004\u0018\u00010\u0001H\u0004JA\u0010y\u001a\u00020z2\u0006\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020\u00052)\u0010}\u001a%\u0012\u0016\u0012\u0014\u0018\u00010\u0011¢\u0006\r\b\u007f\u0012\t\b\u0080\u0001\u0012\u0004\b\b(S\u0012\u0004\u0012\u00020H0~j\u0003`\u0081\u0001J1\u0010y\u001a\u00020z2)\u0010}\u001a%\u0012\u0016\u0012\u0014\u0018\u00010\u0011¢\u0006\r\b\u007f\u0012\t\b\u0080\u0001\u0012\u0004\b\b(S\u0012\u0004\u0012\u00020H0~j\u0003`\u0081\u0001J(\u0010\u0082\u0001\u001a\u00020z2\u0006\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020\u00052\u0007\u0010}\u001a\u00030\u0083\u0001H\u0000¢\u0006\u0003\b\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020HH\u0086@¢\u0006\u0002\u0010PJ\t\u0010\u0086\u0001\u001a\u00020\u0005H\u0002J\u000f\u0010\u0087\u0001\u001a\u00020HH\u0082@¢\u0006\u0002\u0010PJ\"\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0015\u0010\u008a\u0001\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020H0~H\u0082\bJ\u0015\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010S\u001a\u0004\u0018\u00010\u000bH\u0002J\u0019\u0010\u008c\u0001\u001a\u00020\u00052\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0003\b\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000b2\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0003\b\u008f\u0001J\u001a\u0010\u0090\u0001\u001a\u00020F2\u0007\u0010}\u001a\u00030\u0083\u00012\u0006\u0010{\u001a\u00020\u0005H\u0002J\u000f\u0010\u0091\u0001\u001a\u00020]H\u0010¢\u0006\u0003\b\u0092\u0001J\u0019\u0010\u0093\u0001\u001a\u00020H2\u0006\u0010C\u001a\u00020D2\u0006\u0010S\u001a\u00020\u0011H\u0002J)\u0010\u0094\u0001\u001a\u00020H\"\u000b\b\u0000\u0010\u0095\u0001\u0018\u0001*\u00020F2\u0006\u0010C\u001a\u00020D2\b\u0010S\u001a\u0004\u0018\u00010\u0011H\u0082\bJ!\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\"\u0010\u0099\u0001\u001a\u00020H2\f\u0010\u009a\u0001\u001a\u0007\u0012\u0002\b\u00030\u009b\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010{\u001a\u00020H2\b\u0010S\u001a\u0004\u0018\u00010\u0011H\u0014J\u0013\u0010\u009c\u0001\u001a\u00020H2\b\u00108\u001a\u0004\u0018\u00010\u000bH\u0014J\t\u0010\u009d\u0001\u001a\u00020HH\u0014J\u0010\u0010\u009e\u0001\u001a\u00020H2\u0007\u0010\u009f\u0001\u001a\u00020\u0003J\u0012\u0010 \u0001\u001a\u00020H2\u0007\u00108\u001a\u00030¡\u0001H\u0002J\u0011\u0010¢\u0001\u001a\u00020H2\u0006\u00108\u001a\u00020FH\u0002J\"\u0010£\u0001\u001a\u00020H2\f\u0010\u009a\u0001\u001a\u0007\u0012\u0002\b\u00030\u009b\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u000bH\u0002J\u0017\u0010¤\u0001\u001a\u00020H2\u0006\u0010E\u001a\u00020FH\u0000¢\u0006\u0003\b¥\u0001J\u0007\u0010¦\u0001\u001a\u00020\u0005J\u0014\u0010§\u0001\u001a\u00030¨\u00012\b\u00108\u001a\u0004\u0018\u00010\u000bH\u0002J\u0013\u0010©\u0001\u001a\u00020]2\b\u00108\u001a\u0004\u0018\u00010\u000bH\u0002J\t\u0010ª\u0001\u001a\u00020]H\u0007J\t\u0010«\u0001\u001a\u00020]H\u0016J\u001b\u0010¬\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020?2\b\u0010`\u001a\u0004\u0018\u00010\u000bH\u0002J\u0019\u0010\u00ad\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020?2\u0006\u0010I\u001a\u00020\u0011H\u0002J\u001f\u0010®\u0001\u001a\u0004\u0018\u00010\u000b2\b\u00108\u001a\u0004\u0018\u00010\u000b2\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J\u001d\u0010¯\u0001\u001a\u0004\u0018\u00010\u000b2\u0006\u00108\u001a\u00020?2\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0002J$\u0010°\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u00020b2\u0006\u0010N\u001a\u00020d2\b\u0010e\u001a\u0004\u0018\u00010\u000bH\u0082\u0010J\u0010\u0010±\u0001\u001a\u0004\u0018\u00010d*\u00030²\u0001H\u0002J\u0017\u0010³\u0001\u001a\u00020H*\u00020D2\b\u0010S\u001a\u0004\u0018\u00010\u0011H\u0002J\u001d\u0010´\u0001\u001a\u00060Tj\u0002`U*\u00020\u00112\n\b\u0002\u0010i\u001a\u0004\u0018\u00010]H\u0004R\u0011\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\bX\u0082\u0004R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00058DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0016R\u0011\u0010\u001a\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0016R\u0011\u0010\u001b\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0016R\u0011\u0010\u001c\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0016R\u0014\u0010\u001d\u001a\u00020\u00058TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0016R\u0015\u0010\u001e\u001a\u0006\u0012\u0002\b\u00030\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u001e\u0010\"\u001a\u0006\u0012\u0002\b\u00030#8DX\u0084\u0004¢\u0006\f\u0012\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020\u00058PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u0016R\u0017\u0010*\u001a\u00020+8F¢\u0006\f\u0012\u0004\b,\u0010%\u001a\u0004\b-\u0010.R\u0016\u0010/\u001a\u0004\u0018\u00010\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R(\u00103\u001a\u0004\u0018\u00010\t2\b\u00102\u001a\u0004\u0018\u00010\t8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0016\u00108\u001a\u0004\u0018\u00010\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R\u001c\u0010;\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0018\u0010>\u001a\u00020\u0005*\u00020?8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010@¨\u0006º\u0001"}, d2 = {"Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/ChildJob;", "Lkotlinx/coroutines/ParentJob;", AppMeasurementSdk.ConditionalUserProperty.ACTIVE, "", "(Z)V", "_parentHandle", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/ChildHandle;", "_state", "", "children", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", "completionCause", "", "getCompletionCause", "()Ljava/lang/Throwable;", "completionCauseHandled", "getCompletionCauseHandled", "()Z", "handlesException", "getHandlesException$kotlinx_coroutines_core", "isActive", "isCancelled", "isCompleted", "isCompletedExceptionally", "isScopedCoroutine", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "onAwaitInternal", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnAwaitInternal$annotations", "()V", "getOnAwaitInternal", "()Lkotlinx/coroutines/selects/SelectClause1;", "onCancelComplete", "getOnCancelComplete$kotlinx_coroutines_core", "onJoin", "Lkotlinx/coroutines/selects/SelectClause0;", "getOnJoin$annotations", "getOnJoin", "()Lkotlinx/coroutines/selects/SelectClause0;", "parent", "getParent", "()Lkotlinx/coroutines/Job;", "value", "parentHandle", "getParentHandle$kotlinx_coroutines_core", "()Lkotlinx/coroutines/ChildHandle;", "setParentHandle$kotlinx_coroutines_core", "(Lkotlinx/coroutines/ChildHandle;)V", "state", "getState$kotlinx_coroutines_core", "()Ljava/lang/Object;", "exceptionOrNull", "getExceptionOrNull", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "isCancelling", "Lkotlinx/coroutines/Incomplete;", "(Lkotlinx/coroutines/Incomplete;)Z", "addLastAtomic", "expect", "list", "Lkotlinx/coroutines/NodeList;", "node", "Lkotlinx/coroutines/JobNode;", "addSuppressedExceptions", "", "rootCause", "exceptions", "", "afterCompletion", "attachChild", "child", "awaitInternal", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitSuspend", "cancel", "cause", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cancelCoroutine", "cancelImpl", "cancelImpl$kotlinx_coroutines_core", "cancelInternal", "cancelMakeCompleting", "cancelParent", "cancellationExceptionMessage", "", "childCancelled", "completeStateFinalization", "update", "continueCompleting", "Lkotlinx/coroutines/JobSupport$Finishing;", "lastChild", "Lkotlinx/coroutines/ChildHandleNode;", "proposedUpdate", "createCauseException", "defaultCancellationException", "Lkotlinx/coroutines/JobCancellationException;", "message", "defaultCancellationException$kotlinx_coroutines_core", "finalizeFinishingState", "firstChild", "getCancellationException", "getChildJobCancellationCause", "getCompletedInternal", "getCompletedInternal$kotlinx_coroutines_core", "getCompletionExceptionOrNull", "getFinalRootCause", "getOrPromoteCancellingList", "handleJobException", "exception", "handleOnCompletionException", "handleOnCompletionException$kotlinx_coroutines_core", "initParentJob", "invokeOnCompletion", "Lkotlinx/coroutines/DisposableHandle;", "onCancelling", "invokeImmediately", "handler", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "invokeOnCompletionInternal", "Lkotlinx/coroutines/InternalCompletionHandler;", "invokeOnCompletionInternal$kotlinx_coroutines_core", "join", "joinInternal", "joinSuspend", "loopOnState", "", "block", "makeCancelling", "makeCompleting", "makeCompleting$kotlinx_coroutines_core", "makeCompletingOnce", "makeCompletingOnce$kotlinx_coroutines_core", "makeNode", "nameString", "nameString$kotlinx_coroutines_core", "notifyCancelling", "notifyHandlers", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "onAwaitInternalProcessResFunc", "ignoredParam", "result", "onAwaitInternalRegFunc", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "onCompletionInternal", "onStart", "parentCancelled", "parentJob", "promoteEmptyToNodeList", "Lkotlinx/coroutines/Empty;", "promoteSingleToNodeList", "registerSelectForOnJoin", "removeNode", "removeNode$kotlinx_coroutines_core", "start", "startInternal", "", "stateString", "toDebugString", "toString", "tryFinalizeSimpleState", "tryMakeCancelling", "tryMakeCompleting", "tryMakeCompletingSlowPath", "tryWaitForChild", "nextChild", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "notifyCompletion", "toCancellationException", "AwaitContinuation", "ChildCompletion", "Finishing", "SelectOnAwaitCompletionHandler", "SelectOnJoinCompletionHandler", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public class JobSupport implements Job, ChildJob, ParentJob {
    private static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/JobSupport$AwaitContinuation;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CancellableContinuationImpl;", "delegate", "Lkotlin/coroutines/Continuation;", "job", "Lkotlinx/coroutines/JobSupport;", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V", "getContinuationCancellationCause", "", "parent", "Lkotlinx/coroutines/Job;", "nameString", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private static final class a<T> extends CancellableContinuationImpl<T> {
        private final JobSupport i;

        public a(Continuation<? super T> continuation, JobSupport jobSupport) {
            super(continuation, 1);
            this.i = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        protected String M() {
            return "AwaitContinuation";
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public Throwable w(Job job) {
            Throwable thE;
            Object objO0 = this.i.o0();
            return (!(objO0 instanceof c) || (thE = ((c) objO0).e()) == null) ? objO0 instanceof CompletedExceptionally ? ((CompletedExceptionally) objO0).b : job.i() : thE;
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/JobSupport$ChildCompletion;", "Lkotlinx/coroutines/JobNode;", "parent", "Lkotlinx/coroutines/JobSupport;", "state", "Lkotlinx/coroutines/JobSupport$Finishing;", "child", "Lkotlinx/coroutines/ChildHandleNode;", "proposedUpdate", "", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private static final class b extends JobNode {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final JobSupport f9999e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final c f10000f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ChildHandleNode f10001g;
        private final Object h;

        public b(JobSupport jobSupport, c cVar, ChildHandleNode childHandleNode, Object obj) {
            this.f9999e = jobSupport;
            this.f10000f = cVar;
            this.f10001g = childHandleNode;
            this.h = obj;
        }

        @Override // kotlinx.coroutines.InternalCompletionHandler
        public void a(Throwable th) {
            this.f9999e.c0(this.f10000f, this.f10001g, this.h);
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\tJ\u0018\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\t0&j\b\u0012\u0004\u0012\u00020\t`'H\u0002J\u0016\u0010(\u001a\b\u0012\u0004\u0012\u00020\t0)2\b\u0010*\u001a\u0004\u0018\u00010\tJ\b\u0010+\u001a\u00020,H\u0016R\u0011\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\fX\u0082\u0004R\t\u0010\r\u001a\u00020\u000eX\u0082\u0004R\u0011\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\fX\u0082\u0004R(\u0010\u0011\u001a\u0004\u0018\u00010\u00012\b\u0010\u0010\u001a\u0004\u0018\u00010\u00018B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0017R$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00078F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0017\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR(\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006-"}, d2 = {"Lkotlinx/coroutines/JobSupport$Finishing;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "Lkotlinx/coroutines/Incomplete;", "list", "Lkotlinx/coroutines/NodeList;", "isCompleting", "", "rootCause", "", "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V", "_exceptionsHolder", "Lkotlinx/atomicfu/AtomicRef;", "_isCompleting", "Lkotlinx/atomicfu/AtomicBoolean;", "_rootCause", "value", "exceptionsHolder", "getExceptionsHolder", "()Ljava/lang/Object;", "setExceptionsHolder", "(Ljava/lang/Object;)V", "isActive", "()Z", "isCancelling", "setCompleting", "(Z)V", "isSealed", "getList", "()Lkotlinx/coroutines/NodeList;", "getRootCause", "()Ljava/lang/Throwable;", "setRootCause", "(Ljava/lang/Throwable;)V", "addExceptionLocked", "", "exception", "allocateList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "sealLocked", "", "proposedException", "toString", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private static final class c implements Incomplete {
        private static final /* synthetic */ AtomicIntegerFieldUpdater a = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isCompleting$volatile");
        private static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_rootCause$volatile");
        private static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_exceptionsHolder$volatile");
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile;
        private volatile /* synthetic */ Object _rootCause$volatile;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final NodeList f10002d;

        public c(NodeList nodeList, boolean z, Throwable th) {
            this.f10002d = nodeList;
            this._isCompleting$volatile = z ? 1 : 0;
            this._rootCause$volatile = th;
        }

        private final ArrayList<Throwable> b() {
            return new ArrayList<>(4);
        }

        private final Object d() {
            return c.get(this);
        }

        private final void n(Object obj) {
            c.set(this, obj);
        }

        public final void a(Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                o(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                n(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList<Throwable> arrayListB = b();
                arrayListB.add(objD);
                arrayListB.add(th);
                n(arrayListB);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        @Override // kotlinx.coroutines.Incomplete
        /* JADX INFO: renamed from: c, reason: from getter */
        public NodeList getA() {
            return this.f10002d;
        }

        public final Throwable e() {
            return (Throwable) b.get(this);
        }

        public final boolean i() {
            return e() != null;
        }

        @Override // kotlinx.coroutines.Incomplete
        /* JADX INFO: renamed from: isActive */
        public boolean getA() {
            return e() == null;
        }

        public final boolean j() {
            return a.get(this) != 0;
        }

        public final boolean k() {
            return d() == JobSupportKt.f10012e;
        }

        public final List<Throwable> l(Throwable th) {
            ArrayList<Throwable> arrayListB;
            Object objD = d();
            if (objD == null) {
                arrayListB = b();
            } else if (objD instanceof Throwable) {
                ArrayList<Throwable> arrayListB2 = b();
                arrayListB2.add(objD);
                arrayListB = arrayListB2;
            } else {
                if (!(objD instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objD).toString());
                }
                arrayListB = (ArrayList) objD;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListB.add(0, thE);
            }
            if (th != null && !Intrinsics.areEqual(th, thE)) {
                arrayListB.add(th);
            }
            n(JobSupportKt.f10012e);
            return arrayListB;
        }

        public final void m(boolean z) {
            a.set(this, z ? 1 : 0);
        }

        public final void o(Throwable th) {
            b.set(this, th);
        }

        public String toString() {
            return "Finishing[cancelling=" + i() + ", completing=" + j() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + getA() + ']';
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnAwaitCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private final class d extends JobNode {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SelectInstance<?> f10003e;

        public d(SelectInstance<?> selectInstance) {
            this.f10003e = selectInstance;
        }

        @Override // kotlinx.coroutines.InternalCompletionHandler
        public void a(Throwable th) {
            Object objO0 = JobSupport.this.o0();
            if (!(objO0 instanceof CompletedExceptionally)) {
                objO0 = JobSupportKt.unboxState(objO0);
            }
            this.f10003e.g(JobSupport.this, objO0);
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u0012\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/JobSupport$SelectOnJoinCompletionHandler;", "Lkotlinx/coroutines/JobNode;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private final class e extends JobNode {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final SelectInstance<?> f10005e;

        public e(SelectInstance<?> selectInstance) {
            this.f10005e = selectInstance;
        }

        @Override // kotlinx.coroutines.InternalCompletionHandler
        public void a(Throwable th) {
            this.f10005e.g(JobSupport.this, kotlin.v.a);
        }
    }

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;", "prepare", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/internal/Node;", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    public static final class f extends LockFreeLinkedListNode.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ JobSupport f10007d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f10008e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(LockFreeLinkedListNode lockFreeLinkedListNode, JobSupport jobSupport, Object obj) {
            super(lockFreeLinkedListNode);
            this.f10007d = jobSupport;
            this.f10008e = obj;
        }

        @Override // kotlinx.coroutines.internal.AtomicOp
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Object e(LockFreeLinkedListNode lockFreeLinkedListNode) {
            if (this.f10007d.o0() == this.f10008e) {
                return null;
            }
            return LockFreeLinkedListKt.getCONDITION_FALSE();
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/Job;"}, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1, 1}, l = {963, 965}, m = "invokeSuspend", n = {"$this$sequence", "this_$iv", "cur$iv"}, s = {"L$0", "L$1", "L$2"})
    static final class g extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Job>, Continuation<? super kotlin.v>, Object> {
        Object a;
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Object f10009d;

        g(Continuation<? super g> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            g gVar = JobSupport.this.new g(continuation);
            gVar.f10009d = obj;
            return gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Job> sequenceScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(sequenceScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006d -> B:27:0x0083). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0080 -> B:27:0x0083). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r7.c
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L27
                if (r1 != r2) goto L1f
                java.lang.Object r1 = r7.b
                kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
                java.lang.Object r3 = r7.a
                kotlinx.coroutines.internal.i r3 = (kotlinx.coroutines.internal.LockFreeLinkedListHead) r3
                java.lang.Object r4 = r7.f10009d
                kotlin.sequences.h r4 = (kotlin.sequences.SequenceScope) r4
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r7
                goto L83
            L1f:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L27:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L88
            L2b:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f10009d
                kotlin.sequences.h r8 = (kotlin.sequences.SequenceScope) r8
                kotlinx.coroutines.JobSupport r1 = kotlinx.coroutines.JobSupport.this
                java.lang.Object r1 = r1.o0()
                boolean r4 = r1 instanceof kotlinx.coroutines.ChildHandleNode
                if (r4 == 0) goto L49
                kotlinx.coroutines.m r1 = (kotlinx.coroutines.ChildHandleNode) r1
                kotlinx.coroutines.ChildJob r1 = r1.f10381e
                r7.c = r3
                java.lang.Object r8 = r8.c(r1, r7)
                if (r8 != r0) goto L88
                return r0
            L49:
                boolean r3 = r1 instanceof kotlinx.coroutines.Incomplete
                if (r3 == 0) goto L88
                kotlinx.coroutines.i0 r1 = (kotlinx.coroutines.Incomplete) r1
                kotlinx.coroutines.u0 r1 = r1.getA()
                if (r1 == 0) goto L88
                java.lang.Object r3 = r1.h()
                java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)
                kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
                r4 = r8
                r8 = r7
                r6 = r3
                r3 = r1
                r1 = r6
            L65:
                boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
                if (r5 != 0) goto L88
                boolean r5 = r1 instanceof kotlinx.coroutines.ChildHandleNode
                if (r5 == 0) goto L83
                r5 = r1
                kotlinx.coroutines.m r5 = (kotlinx.coroutines.ChildHandleNode) r5
                kotlinx.coroutines.ChildJob r5 = r5.f10381e
                r8.f10009d = r4
                r8.a = r3
                r8.b = r1
                r8.c = r2
                java.lang.Object r5 = r4.c(r5, r8)
                if (r5 != r0) goto L83
                return r0
            L83:
                kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r1.i()
                goto L65
            L88:
                kotlin.v r8 = kotlin.v.a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public JobSupport(boolean z) {
        this._state$volatile = z ? JobSupportKt.f10014g : JobSupportKt.f10013f;
    }

    private final JobNode B0(InternalCompletionHandler internalCompletionHandler, boolean z) {
        JobNode invokeOnCompletion;
        if (z) {
            invokeOnCompletion = internalCompletionHandler instanceof JobCancellingNode ? (JobCancellingNode) internalCompletionHandler : null;
            if (invokeOnCompletion == null) {
                invokeOnCompletion = new InvokeOnCancelling(internalCompletionHandler);
            }
        } else {
            invokeOnCompletion = internalCompletionHandler instanceof JobNode ? (JobNode) internalCompletionHandler : null;
            if (invokeOnCompletion == null) {
                invokeOnCompletion = new InvokeOnCompletion(internalCompletionHandler);
            } else if (DebugKt.getASSERTIONS_ENABLED() && !(!(invokeOnCompletion instanceof JobCancellingNode))) {
                throw new AssertionError();
            }
        }
        invokeOnCompletion.t(this);
        return invokeOnCompletion;
    }

    private final ChildHandleNode D0(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.n()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.j();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.i();
            if (!lockFreeLinkedListNode.n()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    private final void E0(NodeList nodeList, Throwable th) throws Throwable {
        I0(th);
        Object objH = nodeList.h();
        Intrinsics.checkNotNull(objH, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeI = (LockFreeLinkedListNode) objH; !Intrinsics.areEqual(lockFreeLinkedListNodeI, nodeList); lockFreeLinkedListNodeI = lockFreeLinkedListNodeI.i()) {
            if (lockFreeLinkedListNodeI instanceof JobCancellingNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNodeI;
                try {
                    jobNode.a(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                        kotlin.v vVar = kotlin.v.a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            s0(completionHandlerException);
        }
        Y(th);
    }

    private final void F0(NodeList nodeList, Throwable th) throws Throwable {
        Object objH = nodeList.h();
        Intrinsics.checkNotNull(objH, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeI = (LockFreeLinkedListNode) objH; !Intrinsics.areEqual(lockFreeLinkedListNodeI, nodeList); lockFreeLinkedListNodeI = lockFreeLinkedListNodeI.i()) {
            if (lockFreeLinkedListNodeI instanceof JobNode) {
                JobNode jobNode = (JobNode) lockFreeLinkedListNodeI;
                try {
                    jobNode.a(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        ExceptionsKt__ExceptionsKt.addSuppressed(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                        kotlin.v vVar = kotlin.v.a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            s0(completionHandlerException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object G0(Object obj, Object obj2) throws Throwable {
        if (obj2 instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) obj2).b;
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0(SelectInstance<?> selectInstance, Object obj) {
        Object objO0;
        do {
            objO0 = o0();
            if (!(objO0 instanceof Incomplete)) {
                if (!(objO0 instanceof CompletedExceptionally)) {
                    objO0 = JobSupportKt.unboxState(objO0);
                }
                selectInstance.e(objO0);
                return;
            }
        } while (Q0(objO0) < 0);
        selectInstance.f(JobKt__JobKt.invokeOnCompletion$default(this, false, false, new d(selectInstance), 3, null));
    }

    private final void L0(Empty empty) {
        NodeList nodeList = new NodeList();
        Object inactiveNodeList = nodeList;
        if (!empty.getA()) {
            inactiveNodeList = new InactiveNodeList(nodeList);
        }
        a.compareAndSet(this, empty, inactiveNodeList);
    }

    private final void M0(JobNode jobNode) {
        jobNode.d(new NodeList());
        a.compareAndSet(this, jobNode, jobNode.i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N0(SelectInstance<?> selectInstance, Object obj) {
        if (w0()) {
            selectInstance.f(JobKt__JobKt.invokeOnCompletion$default(this, false, false, new e(selectInstance), 3, null));
        } else {
            selectInstance.e(kotlin.v.a);
        }
    }

    private final boolean P(Object obj, NodeList nodeList, JobNode jobNode) {
        int iR;
        f fVar = new f(jobNode, this, obj);
        do {
            iR = nodeList.j().r(jobNode, nodeList, fVar);
            if (iR == 1) {
                return true;
            }
        } while (iR != 2);
        return false;
    }

    private final void Q(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Throwable thUnwrapImpl = !DebugKt.getRECOVER_STACK_TRACES() ? th : StackTraceRecoveryKt.unwrapImpl(th);
        for (Throwable thUnwrapImpl2 : list) {
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                thUnwrapImpl2 = StackTraceRecoveryKt.unwrapImpl(thUnwrapImpl2);
            }
            if (thUnwrapImpl2 != th && thUnwrapImpl2 != thUnwrapImpl && !(thUnwrapImpl2 instanceof CancellationException) && setNewSetFromMap.add(thUnwrapImpl2)) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, thUnwrapImpl2);
            }
        }
    }

    private final int Q0(Object obj) {
        if (obj instanceof Empty) {
            if (((Empty) obj).getA()) {
                return 0;
            }
            if (!a.compareAndSet(this, obj, JobSupportKt.f10014g)) {
                return -1;
            }
            K0();
            return 1;
        }
        if (!(obj instanceof InactiveNodeList)) {
            return 0;
        }
        if (!a.compareAndSet(this, obj, ((InactiveNodeList) obj).getA())) {
            return -1;
        }
        K0();
        return 1;
    }

    private final String R0(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof Incomplete ? ((Incomplete) obj).getA() ? "Active" : "New" : obj instanceof CompletedExceptionally ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED;
        }
        c cVar = (c) obj;
        return cVar.i() ? "Cancelling" : cVar.j() ? "Completing" : "Active";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object T(Continuation<Object> continuation) {
        a aVar = new a(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), this);
        aVar.E();
        CancellableContinuationKt.disposeOnCancellation(aVar, JobKt__JobKt.invokeOnCompletion$default(this, false, false, new ResumeAwaitOnCompletion(aVar), 3, null));
        Object objY = aVar.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY;
    }

    private final boolean U0(Incomplete incomplete, Object obj) throws Throwable {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!((incomplete instanceof Empty) || (incomplete instanceof JobNode))) {
                throw new AssertionError();
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED() && !(!(obj instanceof CompletedExceptionally))) {
            throw new AssertionError();
        }
        if (!a.compareAndSet(this, incomplete, JobSupportKt.boxIncomplete(obj))) {
            return false;
        }
        I0(null);
        J0(obj);
        b0(incomplete, obj);
        return true;
    }

    private final boolean V0(Incomplete incomplete, Throwable th) throws Throwable {
        if (DebugKt.getASSERTIONS_ENABLED() && !(!(incomplete instanceof c))) {
            throw new AssertionError();
        }
        if (DebugKt.getASSERTIONS_ENABLED() && !incomplete.getA()) {
            throw new AssertionError();
        }
        NodeList nodeListM0 = m0(incomplete);
        if (nodeListM0 == null) {
            return false;
        }
        if (!a.compareAndSet(this, incomplete, new c(nodeListM0, false, th))) {
            return false;
        }
        E0(nodeListM0, th);
        return true;
    }

    private final Object W0(Object obj, Object obj2) {
        return !(obj instanceof Incomplete) ? JobSupportKt.a : ((!(obj instanceof Empty) && !(obj instanceof JobNode)) || (obj instanceof ChildHandleNode) || (obj2 instanceof CompletedExceptionally)) ? X0((Incomplete) obj, obj2) : U0((Incomplete) obj, obj2) ? obj2 : JobSupportKt.c;
    }

    private final Object X(Object obj) {
        Object objW0;
        do {
            Object objO0 = o0();
            if (!(objO0 instanceof Incomplete) || ((objO0 instanceof c) && ((c) objO0).j())) {
                return JobSupportKt.a;
            }
            objW0 = W0(objO0, new CompletedExceptionally(d0(obj), false, 2, null));
        } while (objW0 == JobSupportKt.c);
        return objW0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object X0(Incomplete incomplete, Object obj) throws Throwable {
        NodeList nodeListM0 = m0(incomplete);
        if (nodeListM0 == null) {
            return JobSupportKt.c;
        }
        c cVar = incomplete instanceof c ? (c) incomplete : null;
        if (cVar == null) {
            cVar = new c(nodeListM0, false, null);
        }
        kotlin.jvm.internal.l0 l0Var = new kotlin.jvm.internal.l0();
        synchronized (cVar) {
            if (cVar.j()) {
                return JobSupportKt.a;
            }
            cVar.m(true);
            if (cVar != incomplete && !a.compareAndSet(this, incomplete, cVar)) {
                return JobSupportKt.c;
            }
            if (DebugKt.getASSERTIONS_ENABLED() && !(!cVar.k())) {
                throw new AssertionError();
            }
            boolean zI = cVar.i();
            CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
            if (completedExceptionally != null) {
                cVar.a(completedExceptionally.b);
            }
            T tE = Boolean.valueOf(zI ? false : true).booleanValue() ? cVar.e() : 0;
            l0Var.a = tE;
            kotlin.v vVar = kotlin.v.a;
            Throwable th = (Throwable) tE;
            if (th != null) {
                E0(nodeListM0, th);
            }
            ChildHandleNode childHandleNodeF0 = f0(incomplete);
            return (childHandleNodeF0 == null || !Y0(cVar, childHandleNodeF0, obj)) ? e0(cVar, obj) : JobSupportKt.b;
        }
    }

    private final boolean Y(Throwable th) {
        if (v0()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle childHandleN0 = n0();
        return (childHandleN0 == null || childHandleN0 == NonDisposableHandle.a) ? z : childHandleN0.b(th) || z;
    }

    private final boolean Y0(c cVar, ChildHandleNode childHandleNode, Object obj) {
        while (JobKt__JobKt.invokeOnCompletion$default(childHandleNode.f10381e, false, false, new b(this, cVar, childHandleNode, obj), 1, null) == NonDisposableHandle.a) {
            childHandleNode = D0(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    private final void b0(Incomplete incomplete, Object obj) throws Throwable {
        ChildHandle childHandleN0 = n0();
        if (childHandleN0 != null) {
            childHandleN0.dispose();
            P0(NonDisposableHandle.a);
        }
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.b : null;
        if (!(incomplete instanceof JobNode)) {
            NodeList f10002d = incomplete.getA();
            if (f10002d != null) {
                F0(f10002d, th);
                return;
            }
            return;
        }
        try {
            ((JobNode) incomplete).a(th);
        } catch (Throwable th2) {
            s0(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(c cVar, ChildHandleNode childHandleNode, Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(o0() == cVar)) {
                throw new AssertionError();
            }
        }
        ChildHandleNode childHandleNodeD0 = D0(childHandleNode);
        if (childHandleNodeD0 == null || !Y0(cVar, childHandleNodeD0, obj)) {
            R(e0(cVar, obj));
        }
    }

    private final Throwable d0(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(Z(), null, this) : th;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ParentJob) obj).x();
    }

    public static /* synthetic */ JobCancellationException defaultCancellationException$kotlinx_coroutines_core$default(JobSupport jobSupport, String str, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: defaultCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            th = null;
        }
        if (str == null) {
            str = jobSupport.Z();
        }
        return new JobCancellationException(str, th, jobSupport);
    }

    private final Object e0(c cVar, Object obj) throws Throwable {
        boolean zI;
        Throwable thI0;
        boolean z = true;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(o0() == cVar)) {
                throw new AssertionError();
            }
        }
        if (DebugKt.getASSERTIONS_ENABLED() && !(!cVar.k())) {
            throw new AssertionError();
        }
        if (DebugKt.getASSERTIONS_ENABLED() && !cVar.j()) {
            throw new AssertionError();
        }
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.b : null;
        synchronized (cVar) {
            zI = cVar.i();
            List<Throwable> listL = cVar.l(th);
            thI0 = i0(cVar, listL);
            if (thI0 != null) {
                Q(thI0, listL);
            }
        }
        if (thI0 != null && thI0 != th) {
            obj = new CompletedExceptionally(thI0, false, 2, null);
        }
        if (thI0 != null) {
            if (!Y(thI0) && !r0(thI0)) {
                z = false;
            }
            if (z) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((CompletedExceptionally) obj).c();
            }
        }
        if (!zI) {
            I0(thI0);
        }
        J0(obj);
        boolean zCompareAndSet = a.compareAndSet(this, cVar, JobSupportKt.boxIncomplete(obj));
        if (DebugKt.getASSERTIONS_ENABLED() && !zCompareAndSet) {
            throw new AssertionError();
        }
        b0(cVar, obj);
        return obj;
    }

    private final ChildHandleNode f0(Incomplete incomplete) {
        ChildHandleNode childHandleNode = incomplete instanceof ChildHandleNode ? (ChildHandleNode) incomplete : null;
        if (childHandleNode != null) {
            return childHandleNode;
        }
        NodeList f10002d = incomplete.getA();
        if (f10002d != null) {
            return D0(f10002d);
        }
        return null;
    }

    public static /* synthetic */ void getOnJoin$annotations() {
    }

    private final Throwable h0(Object obj) {
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        if (completedExceptionally != null) {
            return completedExceptionally.b;
        }
        return null;
    }

    private final Throwable i0(c cVar, List<? extends Throwable> list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (cVar.i()) {
                return new JobCancellationException(Z(), null, this);
            }
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next2 = it2.next();
                Throwable th3 = (Throwable) next2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = next2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final NodeList m0(Incomplete incomplete) {
        NodeList f10002d = incomplete.getA();
        if (f10002d != null) {
            return f10002d;
        }
        if (incomplete instanceof Empty) {
            return new NodeList();
        }
        if (incomplete instanceof JobNode) {
            M0((JobNode) incomplete);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + incomplete).toString());
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return jobSupport.S0(th, str);
    }

    private final boolean w0() {
        Object objO0;
        do {
            objO0 = o0();
            if (!(objO0 instanceof Incomplete)) {
                return false;
            }
        } while (Q0(objO0) < 0);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object x0(Continuation<? super kotlin.v> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.E();
        CancellableContinuationKt.disposeOnCancellation(cancellableContinuationImpl, JobKt__JobKt.invokeOnCompletion$default(this, false, false, new ResumeOnCompletion(cancellableContinuationImpl), 3, null));
        Object objY = cancellableContinuationImpl.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objY : kotlin.v.a;
    }

    private final Object y0(Object obj) throws Throwable {
        Throwable thD0 = null;
        while (true) {
            Object objO0 = o0();
            if (objO0 instanceof c) {
                synchronized (objO0) {
                    if (((c) objO0).k()) {
                        return JobSupportKt.f10011d;
                    }
                    boolean zI = ((c) objO0).i();
                    if (obj != null || !zI) {
                        if (thD0 == null) {
                            thD0 = d0(obj);
                        }
                        ((c) objO0).a(thD0);
                    }
                    Throwable thE = zI ^ true ? ((c) objO0).e() : null;
                    if (thE != null) {
                        E0(((c) objO0).getA(), thE);
                    }
                    return JobSupportKt.a;
                }
            }
            if (!(objO0 instanceof Incomplete)) {
                return JobSupportKt.f10011d;
            }
            if (thD0 == null) {
                thD0 = d0(obj);
            }
            Incomplete incomplete = (Incomplete) objO0;
            if (!incomplete.getA()) {
                Object objW0 = W0(objO0, new CompletedExceptionally(thD0, false, 2, null));
                if (objW0 == JobSupportKt.a) {
                    throw new IllegalStateException(("Cannot happen in " + objO0).toString());
                }
                if (objW0 != JobSupportKt.c) {
                    return objW0;
                }
            } else if (V0(incomplete, thD0)) {
                return JobSupportKt.a;
            }
        }
    }

    public final Object A0(Object obj) {
        Object objW0;
        do {
            objW0 = W0(o0(), obj);
            if (objW0 == JobSupportKt.a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, h0(obj));
            }
        } while (objW0 == JobSupportKt.c);
        return objW0;
    }

    public String C0() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    @Override // kotlinx.coroutines.Job
    public final Object I(Continuation<? super kotlin.v> continuation) {
        if (w0()) {
            Object objX0 = x0(continuation);
            return objX0 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objX0 : kotlin.v.a;
        }
        JobKt.ensureActive(continuation.getB());
        return kotlin.v.a;
    }

    protected void I0(Throwable th) {
    }

    protected void J0(Object obj) {
    }

    protected void K0() {
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle N(ChildJob childJob) {
        DisposableHandle disposableHandleInvokeOnCompletion$default = JobKt__JobKt.invokeOnCompletion$default(this, true, false, new ChildHandleNode(childJob), 2, null);
        Intrinsics.checkNotNull(disposableHandleInvokeOnCompletion$default, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (ChildHandle) disposableHandleInvokeOnCompletion$default;
    }

    public final void O0(JobNode jobNode) {
        Object objO0;
        do {
            objO0 = o0();
            if (!(objO0 instanceof JobNode)) {
                if (!(objO0 instanceof Incomplete) || ((Incomplete) objO0).getA() == null) {
                    return;
                }
                jobNode.o();
                return;
            }
            if (objO0 != jobNode) {
                return;
            }
        } while (!a.compareAndSet(this, objO0, JobSupportKt.f10014g));
    }

    public final void P0(ChildHandle childHandle) {
        b.set(this, childHandle);
    }

    protected void R(Object obj) {
    }

    protected final Object S(Continuation<Object> continuation) throws Throwable {
        Object objO0;
        do {
            objO0 = o0();
            if (!(objO0 instanceof Incomplete)) {
                if (!(objO0 instanceof CompletedExceptionally)) {
                    return JobSupportKt.unboxState(objO0);
                }
                Throwable th = ((CompletedExceptionally) objO0).b;
                if (DebugKt.getRECOVER_STACK_TRACES() && (continuation instanceof CoroutineStackFrame)) {
                    throw StackTraceRecoveryKt.g(th, (CoroutineStackFrame) continuation);
                }
                throw th;
            }
        } while (Q0(objO0) < 0);
        return T(continuation);
    }

    protected final CancellationException S0(Throwable th, String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = Z();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    public final String T0() {
        return C0() + '{' + R0(o0()) + '}';
    }

    public final boolean U(Throwable th) {
        return V(th);
    }

    public final boolean V(Object obj) throws Throwable {
        Object objY0 = JobSupportKt.a;
        if (l0() && (objY0 = X(obj)) == JobSupportKt.b) {
            return true;
        }
        if (objY0 == JobSupportKt.a) {
            objY0 = y0(obj);
        }
        if (objY0 == JobSupportKt.a || objY0 == JobSupportKt.b) {
            return true;
        }
        if (objY0 == JobSupportKt.f10011d) {
            return false;
        }
        R(objY0);
        return true;
    }

    public void W(Throwable th) {
        V(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String Z() {
        return "Job was cancelled";
    }

    @Override // kotlinx.coroutines.Job
    public /* synthetic */ boolean a(Throwable th) {
        Throwable jobCancellationException;
        if (th == null || (jobCancellationException = toCancellationException$default(this, th, null, 1, null)) == null) {
            jobCancellationException = new JobCancellationException(Z(), null, this);
        }
        W(jobCancellationException);
        return true;
    }

    public boolean a0(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return V(th) && getC();
    }

    @Override // kotlinx.coroutines.Job
    public void b(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(Z(), null, this);
        }
        W(cancellationException);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean d() {
        return !(o0() instanceof Incomplete);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) Job.DefaultImpls.fold(this, r, function2);
    }

    @Override // kotlinx.coroutines.Job
    public final Sequence<Job> g() {
        return SequencesKt__SequenceBuilderKt.sequence(new g(null));
    }

    public final Object g0() throws Throwable {
        Object objO0 = o0();
        if (!(!(objO0 instanceof Incomplete))) {
            throw new IllegalStateException("This job has not completed yet".toString());
        }
        if (objO0 instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) objO0).b;
        }
        return JobSupportKt.unboxState(objO0);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.Element> E get(CoroutineContext.a<E> aVar) {
        return (E) Job.DefaultImpls.get(this, aVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.a<?> getKey() {
        return Job.g0;
    }

    @Override // kotlinx.coroutines.Job
    public Job getParent() {
        ChildHandle childHandleN0 = n0();
        if (childHandleN0 != null) {
            return childHandleN0.getParent();
        }
        return null;
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle h(boolean z, boolean z2, Function1<? super Throwable, kotlin.v> function1) {
        return u0(z, z2, new InternalCompletionHandler.a(function1));
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException i() {
        Object objO0 = o0();
        if (!(objO0 instanceof c)) {
            if (objO0 instanceof Incomplete) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objO0 instanceof CompletedExceptionally) {
                return toCancellationException$default(this, ((CompletedExceptionally) objO0).b, null, 1, null);
            }
            return new JobCancellationException(DebugStringsKt.getClassSimpleName(this) + " has completed normally", null, this);
        }
        Throwable thE = ((c) objO0).e();
        if (thE != null) {
            CancellationException cancellationExceptionS0 = S0(thE, DebugStringsKt.getClassSimpleName(this) + " is cancelling");
            if (cancellationExceptionS0 != null) {
                return cancellationExceptionS0;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object objO0 = o0();
        return (objO0 instanceof Incomplete) && ((Incomplete) objO0).getA();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object objO0 = o0();
        return (objO0 instanceof CompletedExceptionally) || ((objO0 instanceof c) && ((c) objO0).i());
    }

    /* JADX INFO: renamed from: j0 */
    public boolean getC() {
        return true;
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void k(ParentJob parentJob) throws Throwable {
        V(parentJob);
    }

    public boolean l0() {
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.a<?> aVar) {
        return Job.DefaultImpls.minusKey(this, aVar);
    }

    public final ChildHandle n0() {
        return (ChildHandle) b.get(this);
    }

    public final Object o0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).a(this);
        }
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return Job.DefaultImpls.plus(this, coroutineContext);
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle q(Function1<? super Throwable, kotlin.v> function1) {
        return u0(false, true, new InternalCompletionHandler.a(function1));
    }

    protected boolean r0(Throwable th) {
        return false;
    }

    public void s0(Throwable th) throws Throwable {
        throw th;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int iQ0;
        do {
            iQ0 = Q0(o0());
            if (iQ0 == 0) {
                return false;
            }
        } while (iQ0 != 1);
        return true;
    }

    protected final void t0(Job job) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(n0() == null)) {
                throw new AssertionError();
            }
        }
        if (job == null) {
            P0(NonDisposableHandle.a);
            return;
        }
        job.start();
        ChildHandle childHandleN = job.N(this);
        P0(childHandleN);
        if (d()) {
            childHandleN.dispose();
            P0(NonDisposableHandle.a);
        }
    }

    public String toString() {
        return T0() + '@' + DebugStringsKt.getHexAddress(this);
    }

    public final DisposableHandle u0(boolean z, boolean z2, InternalCompletionHandler internalCompletionHandler) {
        JobNode jobNodeB0 = B0(internalCompletionHandler, z);
        while (true) {
            Object objO0 = o0();
            if (objO0 instanceof Empty) {
                Empty empty = (Empty) objO0;
                if (!empty.getA()) {
                    L0(empty);
                } else if (a.compareAndSet(this, objO0, jobNodeB0)) {
                    return jobNodeB0;
                }
            } else {
                if (!(objO0 instanceof Incomplete)) {
                    if (z2) {
                        CompletedExceptionally completedExceptionally = objO0 instanceof CompletedExceptionally ? (CompletedExceptionally) objO0 : null;
                        internalCompletionHandler.a(completedExceptionally != null ? completedExceptionally.b : null);
                    }
                    return NonDisposableHandle.a;
                }
                NodeList f10002d = ((Incomplete) objO0).getA();
                if (f10002d == null) {
                    Intrinsics.checkNotNull(objO0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    M0((JobNode) objO0);
                } else {
                    DisposableHandle disposableHandle = NonDisposableHandle.a;
                    if (z && (objO0 instanceof c)) {
                        synchronized (objO0) {
                            thE = ((c) objO0).e();
                            if (thE == null || ((internalCompletionHandler instanceof ChildHandleNode) && !((c) objO0).j())) {
                                if (P(objO0, f10002d, jobNodeB0)) {
                                    if (thE == null) {
                                        return jobNodeB0;
                                    }
                                    disposableHandle = jobNodeB0;
                                }
                            }
                            kotlin.v vVar = kotlin.v.a;
                        }
                    }
                    if (thE != null) {
                        if (z2) {
                            internalCompletionHandler.a(thE);
                        }
                        return disposableHandle;
                    }
                    if (P(objO0, f10002d, jobNodeB0)) {
                        return jobNodeB0;
                    }
                }
            }
        }
    }

    protected boolean v0() {
        return false;
    }

    @Override // kotlinx.coroutines.ParentJob
    public CancellationException x() {
        Throwable thE;
        Object objO0 = o0();
        if (objO0 instanceof c) {
            thE = ((c) objO0).e();
        } else if (objO0 instanceof CompletedExceptionally) {
            thE = ((CompletedExceptionally) objO0).b;
        } else {
            if (objO0 instanceof Incomplete) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objO0).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new JobCancellationException("Parent job is " + R0(objO0), thE, this);
    }

    public final boolean z0(Object obj) {
        Object objW0;
        do {
            objW0 = W0(o0(), obj);
            if (objW0 == JobSupportKt.a) {
                return false;
            }
            if (objW0 == JobSupportKt.b) {
                return true;
            }
        } while (objW0 == JobSupportKt.c);
        R(objW0);
        return true;
    }
}
