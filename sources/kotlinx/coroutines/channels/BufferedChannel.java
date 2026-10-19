package kotlinx.coroutines.channels;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

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
/* JADX INFO: compiled from: BufferedChannel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b$\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0004à\u0001á\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\"\b\u0002\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\b¢\u0006\u0002\u0010\tJ\u0010\u0010P\u001a\u00020\u001c2\u0006\u0010Q\u001a\u00020\u0010H\u0002J\u0006\u0010R\u001a\u00020\u0007J\u0010\u0010R\u001a\u00020\u001c2\b\u0010S\u001a\u0004\u0018\u00010\u0016J\u0016\u0010R\u001a\u00020\u00072\u000e\u0010S\u001a\n\u0018\u00010Tj\u0004\u0018\u0001`UJ\u0017\u0010V\u001a\u00020\u001c2\b\u0010S\u001a\u0004\u0018\u00010\u0016H\u0010¢\u0006\u0002\bWJ\u001e\u0010X\u001a\u00020\u00072\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010K\u001a\u00020\u0010H\u0002J\u0006\u0010Z\u001a\u00020\u0007J\u0012\u0010[\u001a\u00020\u001c2\b\u0010S\u001a\u0004\u0018\u00010\u0016H\u0016J\u000e\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u001a\u0010]\u001a\u00020\u001c2\b\u0010S\u001a\u0004\u0018\u00010\u00162\u0006\u0010R\u001a\u00020\u001cH\u0014J\u0010\u0010^\u001a\u00020\u00072\u0006\u0010_\u001a\u00020\u0010H\u0002J\u0016\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010_\u001a\u00020\u0010H\u0002J\b\u0010a\u001a\u00020\u0007H\u0002J\u0010\u0010b\u001a\u00020\u00072\u0006\u0010c\u001a\u00020\u0010H\u0004J\b\u0010d\u001a\u00020\u0007H\u0002J.\u0010e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\f\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010h\u001a\u00020\u0010H\u0002J&\u0010i\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\f\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J&\u0010j\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00142\u0006\u0010f\u001a\u00020\u00102\f\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\r\u0010k\u001a\u00020\u001cH\u0000¢\u0006\u0002\blJ\u0012\u0010m\u001a\u00020\u00072\b\b\u0002\u0010n\u001a\u00020\u0010H\u0002J\b\u0010o\u001a\u00020\u0007H\u0002J-\u0010p\u001a\u00020\u00072#\u0010q\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0016¢\u0006\f\b:\u0012\b\b;\u0012\u0004\b\b(S\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J&\u0010r\u001a\u00020\u001c2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\u0010H\u0002J\u0018\u0010v\u001a\u00020\u001c2\u0006\u0010w\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u000f\u0010x\u001a\b\u0012\u0004\u0012\u00028\u00000yH\u0096\u0002J\u0016\u0010z\u001a\u00020\u00102\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\b\u0010{\u001a\u00020\u0007H\u0002J\b\u0010|\u001a\u00020\u0007H\u0002J\b\u0010}\u001a\u00020\u0007H\u0002J\u001e\u0010~\u001a\u00020\u00072\u0006\u0010f\u001a\u00020\u00102\f\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\b\u0010\u007f\u001a\u00020\u0007H\u0014J\u001f\u0010\u0080\u0001\u001a\u00020\u00072\u0014\u0010\u0081\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000,0\u0082\u0001H\u0002J\u0019\u0010\u0083\u0001\u001a\u00020\u00072\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0082\u0001H\u0002J\u0015\u0010\u0084\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\b\u000309H\u0002J$\u0010\u0085\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u00002\n\u0010<\u001a\u0006\u0012\u0002\b\u000309H\u0002¢\u0006\u0003\u0010\u0087\u0001J\u0019\u0010\u0088\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0082@¢\u0006\u0003\u0010\u0089\u0001J(\u0010\u008a\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u000e\u0010\u0081\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070\u0082\u0001H\u0002¢\u0006\u0003\u0010\u008b\u0001J\t\u0010\u008c\u0001\u001a\u00020\u0007H\u0014J\t\u0010\u008d\u0001\u001a\u00020\u0007H\u0014J!\u0010\u008e\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\fH\u0002J!\u0010\u0091\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\fH\u0002J!\u0010\u0092\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\fH\u0002J!\u0010\u0093\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\f2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010\u0094\u0001\u001a\u00028\u0000H\u0096@¢\u0006\u0003\u0010\u0095\u0001J\u001f\u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000,H\u0096@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u0097\u0001\u0010\u0095\u0001J>\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000,2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u0010H\u0082@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u008c\u0002\u0010\u009c\u0001\u001a\u0003H\u009d\u0001\"\u0005\b\u0001\u0010\u009d\u00012\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\f2$\u0010\u009f\u0001\u001a\u001f\u0012\u0014\u0012\u00128\u0000¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(\u0086\u0001\u0012\u0005\u0012\u0003H\u009d\u00010\u00062V\u0010 \u0001\u001aQ\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¡\u0001\u0012\u0014\u0012\u00120\u0004¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¢\u0001\u0012\u0014\u0012\u00120\u0010¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(\u0099\u0001\u0012\u0005\u0012\u0003H\u009d\u0001082\u000f\u0010£\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010¤\u00012X\b\u0002\u0010¥\u0001\u001aQ\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¡\u0001\u0012\u0014\u0012\u00120\u0004¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¢\u0001\u0012\u0014\u0012\u00120\u0010¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(\u0099\u0001\u0012\u0005\u0012\u0003H\u009d\u000108H\u0082\b¢\u0006\u0003\u0010¦\u0001Jh\u0010§\u0001\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\b\u0010\u009e\u0001\u001a\u00030¨\u00012#\u0010\u009f\u0001\u001a\u001e\u0012\u0014\u0012\u00128\u0000¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(\u0086\u0001\u0012\u0004\u0012\u00020\u00070\u00062\u000e\u0010£\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070¤\u0001H\u0082\bJ/\u0010©\u0001\u001a\u00028\u00002\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u0010H\u0082@¢\u0006\u0003\u0010\u009b\u0001J \u0010ª\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\b\u0003092\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\fH\u0002J \u0010«\u0001\u001a\u00020\u00072\n\u0010<\u001a\u0006\u0012\u0002\b\u0003092\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\fH\u0014J\u0017\u0010¬\u0001\u001a\u00020\u00072\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0002J\u0019\u0010\u00ad\u0001\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0096@¢\u0006\u0003\u0010\u0089\u0001J\u001c\u0010®\u0001\u001a\u00020\u001c2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0090@¢\u0006\u0006\b¯\u0001\u0010\u0089\u0001J\u0082\u0002\u0010°\u0001\u001a\u0003H\u009d\u0001\"\u0005\b\u0001\u0010\u009d\u00012\u0007\u0010\u0086\u0001\u001a\u00028\u00002\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\f2\u000f\u0010±\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010¤\u00012A\u0010 \u0001\u001a<\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¡\u0001\u0012\u0014\u0012\u00120\u0004¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¢\u0001\u0012\u0005\u0012\u0003H\u009d\u00010²\u00012\u000f\u0010£\u0001\u001a\n\u0012\u0005\u0012\u0003H\u009d\u00010¤\u00012o\b\u0002\u0010¥\u0001\u001ah\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¡\u0001\u0012\u0014\u0012\u00120\u0004¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(¢\u0001\u0012\u0014\u0012\u00128\u0000¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(\u0086\u0001\u0012\u0014\u0012\u00120\u0010¢\u0006\r\b:\u0012\t\b;\u0012\u0005\b\b(´\u0001\u0012\u0005\u0012\u0003H\u009d\u00010³\u0001H\u0082\b¢\u0006\u0003\u0010µ\u0001Jb\u0010¶\u0001\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010´\u0001\u001a\u00020\u00102\b\u0010\u009e\u0001\u001a\u00030¨\u00012\u000e\u0010±\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070¤\u00012\u000e\u0010£\u0001\u001a\t\u0012\u0004\u0012\u00020\u00070¤\u0001H\u0082\b¢\u0006\u0003\u0010·\u0001J8\u0010¸\u0001\u001a\u00020\u00072\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010´\u0001\u001a\u00020\u0010H\u0082@¢\u0006\u0003\u0010¹\u0001J\u000f\u0010º\u0001\u001a\u00020\u001cH\u0010¢\u0006\u0003\b»\u0001J\u0012\u0010º\u0001\u001a\u00020\u001c2\u0007\u0010¼\u0001\u001a\u00020\u0010H\u0003J\n\u0010½\u0001\u001a\u00030¾\u0001H\u0016J\u0010\u0010¿\u0001\u001a\u00030¾\u0001H\u0000¢\u0006\u0003\bÀ\u0001J\u001e\u0010Á\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000,H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J'\u0010Ä\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070,2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bÅ\u0001\u0010Æ\u0001J'\u0010Ç\u0001\u001a\b\u0012\u0004\u0012\u00020\u00070,2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bÈ\u0001\u0010Æ\u0001J(\u0010É\u0001\u001a\u00020\u001c2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010Ê\u0001\u001a\u00020\u0010H\u0002J(\u0010Ë\u0001\u001a\u00020\u001c2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010Ê\u0001\u001a\u00020\u0010H\u0002J5\u0010Ì\u0001\u001a\u0004\u0018\u00010\f2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\fH\u0002J5\u0010Í\u0001\u001a\u0004\u0018\u00010\f2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0099\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\fH\u0002JK\u0010Î\u0001\u001a\u00020\u00042\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010´\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\f2\u0007\u0010Ï\u0001\u001a\u00020\u001cH\u0002¢\u0006\u0003\u0010Ð\u0001JK\u0010Ñ\u0001\u001a\u00020\u00042\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00028\u00002\u0007\u0010´\u0001\u001a\u00020\u00102\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\f2\u0007\u0010Ï\u0001\u001a\u00020\u001cH\u0002¢\u0006\u0003\u0010Ð\u0001J\u0012\u0010Ò\u0001\u001a\u00020\u00072\u0007\u0010Ó\u0001\u001a\u00020\u0010H\u0002J\u0012\u0010Ô\u0001\u001a\u00020\u00072\u0007\u0010Ó\u0001\u001a\u00020\u0010H\u0002J\u0017\u0010Õ\u0001\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u0010H\u0000¢\u0006\u0003\bÖ\u0001J$\u0010×\u0001\u001a\u00020\u0007*\u00030¨\u00012\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002J$\u0010Ø\u0001\u001a\u00020\u0007*\u00030¨\u00012\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002J\u000e\u0010Ù\u0001\u001a\u00020\u0007*\u00030¨\u0001H\u0002J\u000e\u0010Ú\u0001\u001a\u00020\u0007*\u00030¨\u0001H\u0002J\u0017\u0010Û\u0001\u001a\u00020\u0007*\u00030¨\u00012\u0007\u0010Ü\u0001\u001a\u00020\u001cH\u0002J\u001c\u0010Ý\u0001\u001a\u00020\u001c*\u00020\f2\u0007\u0010\u0086\u0001\u001a\u00028\u0000H\u0002¢\u0006\u0003\u0010Þ\u0001J#\u0010ß\u0001\u001a\u00020\u001c*\u00020\f2\f\u0010s\u001a\b\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010t\u001a\u00020\u0004H\u0002R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004R\t\u0010\r\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004R\t\u0010\u001a\u001a\u00020\u000eX\u0082\u0004R\u001a\u0010\u001b\u001a\u00020\u001c8VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001fR\u001a\u0010 \u001a\u00020\u001c8VX\u0097\u0004¢\u0006\f\u0012\u0004\b!\u0010\u001e\u001a\u0004\b \u0010\u001fR\u0014\u0010\"\u001a\u00020\u001c8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010\u001fR\u001a\u0010#\u001a\u00020\u001c8VX\u0097\u0004¢\u0006\f\u0012\u0004\b$\u0010\u001e\u001a\u0004\b#\u0010\u001fR\u0014\u0010%\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u001fR \u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000'8VX\u0096\u0004¢\u0006\f\u0012\u0004\b(\u0010\u001e\u001a\u0004\b)\u0010*R&\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000,0'8VX\u0096\u0004¢\u0006\f\u0012\u0004\b-\u0010\u001e\u001a\u0004\b.\u0010*R\"\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000'8VX\u0096\u0004¢\u0006\f\u0012\u0004\b0\u0010\u001e\u001a\u0004\b1\u0010*R,\u00102\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000038VX\u0096\u0004¢\u0006\f\u0012\u0004\b4\u0010\u001e\u001a\u0004\b5\u00106R*\u0010\u0005\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\b8\u0000X\u0081\u0004¢\u0006\u0002\n\u0000Ru\u00107\u001ac\u0012\u0017\u0012\u0015\u0012\u0002\b\u000309¢\u0006\f\b:\u0012\b\b;\u0012\u0004\b\b(<\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b:\u0012\b\b;\u0012\u0004\b\b(=\u0012\u0015\u0012\u0013\u0018\u00010\f¢\u0006\f\b:\u0012\b\b;\u0012\u0004\b\b(>\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u000108j\u0004\u0018\u0001`?X\u0082\u0004¢\u0006\b\n\u0000\u0012\u0004\b@\u0010\u001eR\u0014\u0010A\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bB\u0010\u0018R\u0015\u0010C\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\t\u0010D\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010E\u001a\u00020\u00108@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bF\u0010\u0012R\u0014\u0010G\u001a\u00020\u00168DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bH\u0010\u0018R\u0015\u0010I\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00140\u000bX\u0082\u0004R\t\u0010J\u001a\u00020\u000eX\u0082\u0004R\u0014\u0010K\u001a\u00020\u00108@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bL\u0010\u0012R\u0018\u0010M\u001a\u00020\u001c*\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0018\u0010O\u001a\u00020\u001c*\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bO\u0010N\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006â\u0001"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", "E", "Lkotlinx/coroutines/channels/Channel;", "capacity", "", "onUndeliveredElement", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/OnUndeliveredElement;", "(ILkotlin/jvm/functions/Function1;)V", "_closeCause", "Lkotlinx/atomicfu/AtomicRef;", "", "bufferEnd", "Lkotlinx/atomicfu/AtomicLong;", "bufferEndCounter", "", "getBufferEndCounter", "()J", "bufferEndSegment", "Lkotlinx/coroutines/channels/ChannelSegment;", "closeCause", "", "getCloseCause", "()Ljava/lang/Throwable;", "closeHandler", "completedExpandBuffersAndPauseFlag", "isClosedForReceive", "", "isClosedForReceive$annotations", "()V", "()Z", "isClosedForSend", "isClosedForSend$annotations", "isConflatedDropOldest", "isEmpty", "isEmpty$annotations", "isRendezvousOrUnlimited", "onReceive", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive$annotations", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceiveCatching", "Lkotlinx/coroutines/channels/ChannelResult;", "getOnReceiveCatching$annotations", "getOnReceiveCatching", "onReceiveOrNull", "getOnReceiveOrNull$annotations", "getOnReceiveOrNull", "onSend", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend$annotations", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onUndeliveredElementReceiveCancellationConstructor", "Lkotlin/Function3;", "Lkotlinx/coroutines/selects/SelectInstance;", "Lkotlin/ParameterName;", "name", "select", "param", "internalResult", "Lkotlinx/coroutines/selects/OnCancellationConstructor;", "getOnUndeliveredElementReceiveCancellationConstructor$annotations", "receiveException", "getReceiveException", "receiveSegment", "receivers", "receiversCounter", "getReceiversCounter$kotlinx_coroutines_core", "sendException", "getSendException", "sendSegment", "sendersAndCloseStatus", "sendersCounter", "getSendersCounter$kotlinx_coroutines_core", "isClosedForReceive0", "(J)Z", "isClosedForSend0", "bufferOrRendezvousSend", "curSenders", "cancel", "cause", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cancelImpl", "cancelImpl$kotlinx_coroutines_core", "cancelSuspendedReceiveRequests", "lastSegment", "checkSegmentStructureInvariants", "close", "closeLinkedList", "closeOrCancelImpl", "completeCancel", "sendersCur", "completeClose", "completeCloseOrCancel", "dropFirstElementUntilTheSpecifiedCellIsInTheBuffer", "globalCellIndex", "expandBuffer", "findSegmentBufferEnd", "id", "startFrom", "currentBufferEndCounter", "findSegmentReceive", "findSegmentSend", "hasElements", "hasElements$kotlinx_coroutines_core", "incCompletedExpandBufferAttempts", "nAttempts", "invokeCloseHandler", "invokeOnClose", "handler", "isCellNonEmpty", "segment", "index", "globalIndex", "isClosed", "sendersAndCloseStatusCur", "iterator", "Lkotlinx/coroutines/channels/ChannelIterator;", "markAllEmptyCellsAsClosed", "markCancellationStarted", "markCancelled", "markClosed", "moveSegmentBufferEndToSpecifiedOrLast", "onClosedIdempotent", "onClosedReceiveCatchingOnNoWaiterSuspend", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "onClosedReceiveOnNoWaiterSuspend", "onClosedSelectOnReceive", "onClosedSelectOnSend", "element", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)V", "onClosedSend", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onClosedSendOnNoWaiterSuspend", "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V", "onReceiveDequeued", "onReceiveEnqueued", "processResultSelectReceive", "ignoredParam", "selectResult", "processResultSelectReceiveCatching", "processResultSelectReceiveOrNull", "processResultSelectSend", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveCatching", "receiveCatching-JP2dKIU", "receiveCatchingOnNoWaiterSuspend", "r", "receiveCatchingOnNoWaiterSuspend-GKJJFZk", "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveImpl", "R", "waiter", "onElementRetrieved", "onSuspend", "segm", "i", "onClosed", "Lkotlin/Function0;", "onNoWaiterSuspend", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "receiveImplOnNoWaiter", "Lkotlinx/coroutines/Waiter;", "receiveOnNoWaiterSuspend", "registerSelectForReceive", "registerSelectForSend", "removeUnprocessedElements", "send", "sendBroadcast", "sendBroadcast$kotlinx_coroutines_core", "sendImpl", "onRendezvousOrBuffered", "Lkotlin/Function2;", "Lkotlin/Function4;", "s", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "sendImplOnNoWaiter", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlinx/coroutines/Waiter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "sendOnNoWaiterSuspend", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldSendSuspend", "shouldSendSuspend$kotlinx_coroutines_core", "curSendersAndCloseStatus", "toString", "", "toStringDebug", "toStringDebug$kotlinx_coroutines_core", "tryReceive", "tryReceive-PtdJZtk", "()Ljava/lang/Object;", "trySend", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySendDropOldest", "trySendDropOldest-JP2dKIU", "updateCellExpandBuffer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "updateCellExpandBufferSlow", "updateCellReceive", "updateCellReceiveSlow", "updateCellSend", "closed", "(Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I", "updateCellSendSlow", "updateReceiversCounterIfLower", "value", "updateSendersCounterIfLower", "waitExpandBufferCompletion", "waitExpandBufferCompletion$kotlinx_coroutines_core", "prepareReceiverForSuspension", "prepareSenderForSuspension", "resumeReceiverOnClosedChannel", "resumeSenderOnCancelledChannel", "resumeWaiterOnClosedChannel", "receiver", "tryResumeReceiver", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "tryResumeSender", "BufferedChannelIterator", "SendBroadcast", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public class BufferedChannel<E> implements Channel<E> {
    private static final /* synthetic */ AtomicLongFieldUpdater a = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater b = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater c = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f10026d = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f10027e = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f10028f = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f10029g = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private final int j;
    public final Function1<E, v> k;
    private final Function3<SelectInstance<?>, Object, Object, Function1<Throwable, v>> l;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\u0006H\u0096B¢\u0006\u0002\u0010\nJ,\u0010\u000b\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0082@¢\u0006\u0002\u0010\u0012J\u001c\u0010\u0013\u001a\u00020\u00142\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00152\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0016\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0006H\u0002J\b\u0010\u0019\u001a\u00020\u0014H\u0002J\u0013\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0014R\u001a\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;", "Lkotlinx/coroutines/channels/ChannelIterator;", "Lkotlinx/coroutines/Waiter;", "(Lkotlinx/coroutines/channels/BufferedChannel;)V", "continuation", "Lkotlinx/coroutines/CancellableContinuationImpl;", "", "receiveResult", "", "hasNext", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hasNextOnNoWaiterSuspend", "segment", "Lkotlinx/coroutines/channels/ChannelSegment;", "index", "", "r", "", "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invokeOnCancellation", "", "Lkotlinx/coroutines/internal/Segment;", "next", "()Ljava/lang/Object;", "onClosedHasNext", "onClosedHasNextNoWaiterSuspend", "tryResumeHasNext", "element", "(Ljava/lang/Object;)Z", "tryResumeHasNextOnClosedChannel", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private final class BufferedChannelIterator implements ChannelIterator<E>, Waiter {
        private Object a = BufferedChannelKt.p;
        private CancellableContinuationImpl<? super Boolean> b;

        public BufferedChannelIterator() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object b(ChannelSegment<E> channelSegment, int i, long j, Continuation<? super Boolean> continuation) {
            Boolean boolBoxBoolean;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
            try {
                this.b = orCreateCancellableContinuation;
                Object objT0 = bufferedChannel.T0(channelSegment, i, j, this);
                if (objT0 == BufferedChannelKt.m) {
                    bufferedChannel.s0(this, channelSegment, i);
                } else {
                    Function1<Throwable, v> function1BindCancellationFun = null;
                    if (objT0 == BufferedChannelKt.o) {
                        if (j < bufferedChannel.Q()) {
                            channelSegment.b();
                        }
                        ChannelSegment channelSegment2 = (ChannelSegment) BufferedChannel.G().get(bufferedChannel);
                        while (true) {
                            if (bufferedChannel.Y()) {
                                e();
                                break;
                            }
                            long andIncrement = BufferedChannel.I().getAndIncrement(bufferedChannel);
                            int i2 = BufferedChannelKt.b;
                            long j2 = andIncrement / ((long) i2);
                            int i3 = (int) (andIncrement % ((long) i2));
                            if (channelSegment2.f10376d != j2) {
                                ChannelSegment channelSegmentP = bufferedChannel.p(j2, channelSegment2);
                                if (channelSegmentP != null) {
                                    channelSegment2 = channelSegmentP;
                                }
                            }
                            Object objT02 = bufferedChannel.T0(channelSegment2, i3, andIncrement, this);
                            if (objT02 == BufferedChannelKt.m) {
                                if (this != null) {
                                    bufferedChannel.s0(this, channelSegment2, i3);
                                }
                            } else if (objT02 == BufferedChannelKt.o) {
                                if (andIncrement < bufferedChannel.Q()) {
                                    channelSegment2.b();
                                }
                            } else {
                                if (objT02 == BufferedChannelKt.n) {
                                    throw new IllegalStateException("unexpected".toString());
                                }
                                channelSegment2.b();
                                this.a = objT02;
                                this.b = null;
                                boolBoxBoolean = Boxing.boxBoolean(true);
                                Function1<E, v> function1 = bufferedChannel.k;
                                if (function1 != null) {
                                    function1BindCancellationFun = OnUndeliveredElementKt.bindCancellationFun(function1, objT02, orCreateCancellableContinuation.getB());
                                }
                            }
                        }
                    } else {
                        channelSegment.b();
                        this.a = objT0;
                        this.b = null;
                        boolBoxBoolean = Boxing.boxBoolean(true);
                        Function1<E, v> function12 = bufferedChannel.k;
                        if (function12 != null) {
                            function1BindCancellationFun = OnUndeliveredElementKt.bindCancellationFun(function12, objT0, orCreateCancellableContinuation.getB());
                        }
                    }
                    orCreateCancellableContinuation.u(boolBoxBoolean, function1BindCancellationFun);
                }
                Object objY = orCreateCancellableContinuation.y();
                if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return objY;
            } catch (Throwable th) {
                orCreateCancellableContinuation.P();
                throw th;
            }
        }

        private final boolean d() throws Throwable {
            this.a = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable thU = BufferedChannel.this.u();
            if (thU == null) {
                return false;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(thU);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e() {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.b;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.b = null;
            this.a = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable thU = BufferedChannel.this.u();
            if (thU == null) {
                Result.a aVar = Result.a;
                cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(Boolean.FALSE));
                return;
            }
            if (DebugKt.getRECOVER_STACK_TRACES() && (cancellableContinuationImpl instanceof CoroutineStackFrame)) {
                thU = StackTraceRecoveryKt.g(thU, cancellableContinuationImpl);
            }
            Result.a aVar2 = Result.a;
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(thU)));
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public Object a(Continuation<? super Boolean> continuation) {
            ChannelSegment<E> channelSegment;
            BufferedChannel<E> bufferedChannel = BufferedChannel.this;
            ChannelSegment<E> channelSegment2 = (ChannelSegment) BufferedChannel.G().get(bufferedChannel);
            while (!bufferedChannel.Y()) {
                long andIncrement = BufferedChannel.I().getAndIncrement(bufferedChannel);
                int i = BufferedChannelKt.b;
                long j = andIncrement / ((long) i);
                int i2 = (int) (andIncrement % ((long) i));
                if (channelSegment2.f10376d != j) {
                    ChannelSegment<E> channelSegmentP = bufferedChannel.p(j, channelSegment2);
                    if (channelSegmentP == null) {
                        continue;
                    } else {
                        channelSegment = channelSegmentP;
                    }
                } else {
                    channelSegment = channelSegment2;
                }
                Object objT0 = bufferedChannel.T0(channelSegment, i2, andIncrement, null);
                if (objT0 == BufferedChannelKt.m) {
                    throw new IllegalStateException("unreachable".toString());
                }
                if (objT0 != BufferedChannelKt.o) {
                    if (objT0 == BufferedChannelKt.n) {
                        return b(channelSegment, i2, andIncrement, continuation);
                    }
                    channelSegment.b();
                    this.a = objT0;
                    return Boxing.boxBoolean(true);
                }
                if (andIncrement < bufferedChannel.Q()) {
                    channelSegment.b();
                }
                channelSegment2 = channelSegment;
            }
            return Boxing.boxBoolean(d());
        }

        @Override // kotlinx.coroutines.Waiter
        public void c(Segment<?> segment, int i) {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.b;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.c(segment, i);
            }
        }

        public final boolean f(E e2) {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.b;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.b = null;
            this.a = e2;
            Boolean bool = Boolean.TRUE;
            Function1<E, v> function1 = BufferedChannel.this.k;
            return BufferedChannelKt.e(cancellableContinuationImpl, bool, function1 != null ? OnUndeliveredElementKt.bindCancellationFun(function1, e2, cancellableContinuationImpl.getB()) : null);
        }

        public final void g() {
            CancellableContinuationImpl<? super Boolean> cancellableContinuationImpl = this.b;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            this.b = null;
            this.a = BufferedChannelKt.getCHANNEL_CLOSED();
            Throwable thU = BufferedChannel.this.u();
            if (thU == null) {
                Result.a aVar = Result.a;
                cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(Boolean.FALSE));
                return;
            }
            if (DebugKt.getRECOVER_STACK_TRACES() && (cancellableContinuationImpl instanceof CoroutineStackFrame)) {
                thU = StackTraceRecoveryKt.g(thU, cancellableContinuationImpl);
            }
            Result.a aVar2 = Result.a;
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(thU)));
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public E next() throws Throwable {
            E e2 = (E) this.a;
            if (!(e2 != BufferedChannelKt.p)) {
                throw new IllegalStateException("`hasNext()` has not been invoked".toString());
            }
            this.a = BufferedChannelKt.p;
            if (e2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
                return e2;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(BufferedChannel.this.F());
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u001d\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u000b2\u0006\u0010\f\u001a\u00020\rH\u0096\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;", "Lkotlinx/coroutines/Waiter;", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlinx/coroutines/CancellableContinuation;)V", "getCont", "()Lkotlinx/coroutines/CancellableContinuation;", "invokeOnCancellation", "", "segment", "Lkotlinx/coroutines/internal/Segment;", "index", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    private static final class a implements Waiter {
        private final CancellableContinuation<Boolean> a;
        private final /* synthetic */ CancellableContinuationImpl<Boolean> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(CancellableContinuation<? super Boolean> cancellableContinuation) {
            this.a = cancellableContinuation;
            Intrinsics.checkNotNull(cancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.b = (CancellableContinuationImpl) cancellableContinuation;
        }

        public final CancellableContinuation<Boolean> a() {
            return this.a;
        }

        @Override // kotlinx.coroutines.Waiter
        public void c(Segment<?> segment, int i) {
            this.b.c(segment, i);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class b extends r implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, v> {
        public static final b a = new b();

        b() {
            super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void a(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            bufferedChannel.C0(selectInstance, obj);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ v invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            a(bufferedChannel, selectInstance, obj);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class c extends r implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final c a = new c();

        c() {
            super(3, BufferedChannel.class, "processResultSelectReceive", "processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return bufferedChannel.u0(obj, obj2);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class d extends r implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, v> {
        public static final d a = new d();

        d() {
            super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void a(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            bufferedChannel.C0(selectInstance, obj);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ v invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            a(bufferedChannel, selectInstance, obj);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class e extends r implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final e a = new e();

        e() {
            super(3, BufferedChannel.class, "processResultSelectReceiveCatching", "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return bufferedChannel.v0(obj, obj2);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class f extends r implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, v> {
        public static final f a = new f();

        f() {
            super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void a(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            bufferedChannel.C0(selectInstance, obj);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ v invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            a(bufferedChannel, selectInstance, obj);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class g extends r implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final g a = new g();

        g() {
            super(3, BufferedChannel.class, "processResultSelectReceiveOrNull", "processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return bufferedChannel.w0(obj, obj2);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class h extends r implements Function3<BufferedChannel<?>, SelectInstance<?>, Object, v> {
        public static final h a = new h();

        h() {
            super(3, BufferedChannel.class, "registerSelectForSend", "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
        }

        public final void a(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            bufferedChannel.D0(selectInstance, obj);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ v invoke(BufferedChannel<?> bufferedChannel, SelectInstance<?> selectInstance, Object obj) {
            a(bufferedChannel, selectInstance, obj);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class i extends r implements Function3<BufferedChannel<?>, Object, Object, Object> {
        public static final i a = new i();

        i() {
            super(3, BufferedChannel.class, "processResultSelectSend", "processResultSelectSend(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
            return bufferedChannel.x0(obj, obj2);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\n¢\u0006\u0002\b\n"}, d2 = {"<anonymous>", "Lkotlin/Function1;", "", "", "E", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "<anonymous parameter 1>", "", "element", "invoke"}, mv = {1, 9, 0}, xi = 48)
    static final class j extends Lambda implements Function3<SelectInstance<?>, Object, Object, Function1<? super Throwable, ? extends v>> {
        final /* synthetic */ BufferedChannel<E> a;

        /* JADX INFO: compiled from: BufferedChannel.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "E", "it", "", "invoke"}, mv = {1, 9, 0}, xi = 48)
        static final class a extends Lambda implements Function1<Throwable, v> {
            final /* synthetic */ Object a;
            final /* synthetic */ BufferedChannel<E> b;
            final /* synthetic */ SelectInstance<?> c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Object obj, BufferedChannel<E> bufferedChannel, SelectInstance<?> selectInstance) {
                super(1);
                this.a = obj;
                this.b = bufferedChannel;
                this.c = selectInstance;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(Throwable th) {
                invoke2(th);
                return v.a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                if (this.a != BufferedChannelKt.getCHANNEL_CLOSED()) {
                    OnUndeliveredElementKt.callUndeliveredElement(this.b.k, this.a, this.c.getContext());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(BufferedChannel<E> bufferedChannel) {
            super(3);
            this.a = bufferedChannel;
        }

        @Override // kotlin.jvm.functions.Function3
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Function1<Throwable, v> invoke(SelectInstance<?> selectInstance, Object obj, Object obj2) {
            return new a(obj2, this.a, selectInstance);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {}, l = {762}, m = "receiveCatching-JP2dKIU$suspendImpl", n = {}, s = {})
    static final class k<E> extends ContinuationImpl {
        /* synthetic */ Object a;
        final /* synthetic */ BufferedChannel<E> b;
        int c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(BufferedChannel<E> bufferedChannel, Continuation<? super k> continuation) {
            super(continuation);
            this.b = bufferedChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            Object objZ0 = BufferedChannel.z0(this.b, this);
            return objZ0 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ0 : ChannelResult.m1759boximpl(objZ0);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {0, 0, 0, 0}, l = {3087}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", n = {"this", "segment", "index", "r"}, s = {"L$0", "L$1", "I$0", "J$0"})
    static final class l extends ContinuationImpl {
        Object a;
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f10030d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        /* synthetic */ Object f10031e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ BufferedChannel<E> f10032f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f10033g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(BufferedChannel<E> bufferedChannel, Continuation<? super l> continuation) {
            super(continuation);
            this.f10032f = bufferedChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f10031e = obj;
            this.f10033g |= Integer.MIN_VALUE;
            Object objA0 = this.f10032f.A0(null, 0, 0L, this);
            return objA0 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA0 : ChannelResult.m1759boximpl(objA0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BufferedChannel(int i2, Function1<? super E, v> function1) {
        this.j = i2;
        this.k = function1;
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("Invalid channel capacity: " + i2 + ", should be >=0").toString());
        }
        this.bufferEnd$volatile = BufferedChannelKt.d(i2);
        this.completedExpandBuffersAndPauseFlag$volatile = s();
        ChannelSegment channelSegment = new ChannelSegment(0L, null, this, 3);
        this.sendSegment$volatile = channelSegment;
        this.receiveSegment$volatile = channelSegment;
        if (c0()) {
            channelSegment = BufferedChannelKt.a;
            Intrinsics.checkNotNull(channelSegment, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment$volatile = channelSegment;
        this.l = function1 != 0 ? new j(this) : null;
        this._closeCause$volatile = BufferedChannelKt.s;
    }

    public /* synthetic */ BufferedChannel(int i2, Function1 function1, int i3, n nVar) {
        this(i2, (i3 & 2) != 0 ? null : function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object A0(kotlinx.coroutines.channels.ChannelSegment<E> r11, int r12, long r13, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ChannelResult<? extends E>> r15) {
        /*
            Method dump skipped, instruction units count: 317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.A0(kotlinx.coroutines.channels.d, int, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object B0(ChannelSegment<E> channelSegment, int i2, long j2, Continuation<? super E> continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            Object objT0 = T0(channelSegment, i2, j2, orCreateCancellableContinuation);
            if (objT0 == BufferedChannelKt.m) {
                s0(orCreateCancellableContinuation, channelSegment, i2);
            } else {
                Function1<Throwable, v> function1BindCancellationFun = null;
                function1BindCancellationFun = null;
                if (objT0 == BufferedChannelKt.o) {
                    if (j2 < Q()) {
                        channelSegment.b();
                    }
                    ChannelSegment channelSegment2 = (ChannelSegment) G().get(this);
                    while (true) {
                        if (Y()) {
                            l0(orCreateCancellableContinuation);
                            break;
                        }
                        long andIncrement = I().getAndIncrement(this);
                        int i3 = BufferedChannelKt.b;
                        long j3 = andIncrement / ((long) i3);
                        int i4 = (int) (andIncrement % ((long) i3));
                        if (channelSegment2.f10376d != j3) {
                            ChannelSegment channelSegmentP = p(j3, channelSegment2);
                            if (channelSegmentP != null) {
                                channelSegment2 = channelSegmentP;
                            }
                        }
                        objT0 = T0(channelSegment2, i4, andIncrement, orCreateCancellableContinuation);
                        if (objT0 == BufferedChannelKt.m) {
                            CancellableContinuationImpl cancellableContinuationImpl = orCreateCancellableContinuation instanceof Waiter ? orCreateCancellableContinuation : null;
                            if (cancellableContinuationImpl != null) {
                                s0(cancellableContinuationImpl, channelSegment2, i4);
                            }
                        } else if (objT0 == BufferedChannelKt.o) {
                            if (andIncrement < Q()) {
                                channelSegment2.b();
                            }
                        } else {
                            if (objT0 == BufferedChannelKt.n) {
                                throw new IllegalStateException("unexpected".toString());
                            }
                            channelSegment2.b();
                            Function1<E, v> function1 = this.k;
                            if (function1 != null) {
                                function1BindCancellationFun = OnUndeliveredElementKt.bindCancellationFun(function1, objT0, orCreateCancellableContinuation.getB());
                            }
                        }
                    }
                } else {
                    channelSegment.b();
                    Function1<E, v> function12 = this.k;
                    if (function12 != null) {
                        function1BindCancellationFun = OnUndeliveredElementKt.bindCancellationFun(function12, objT0, orCreateCancellableContinuation.getB());
                    }
                }
                orCreateCancellableContinuation.u(objT0, function1BindCancellationFun);
            }
            Object objY = orCreateCancellableContinuation.y();
            if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objY;
        } catch (Throwable th) {
            orCreateCancellableContinuation.P();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0(SelectInstance<?> selectInstance, Object obj) {
        ChannelSegment channelSegment = (ChannelSegment) G().get(this);
        while (!Y()) {
            long andIncrement = I().getAndIncrement(this);
            int i2 = BufferedChannelKt.b;
            long j2 = andIncrement / ((long) i2);
            int i3 = (int) (andIncrement % ((long) i2));
            if (channelSegment.f10376d != j2) {
                ChannelSegment channelSegmentP = p(j2, channelSegment);
                if (channelSegmentP == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentP;
                }
            }
            Object objT0 = T0(channelSegment, i3, andIncrement, selectInstance);
            if (objT0 == BufferedChannelKt.m) {
                Waiter waiter = selectInstance instanceof Waiter ? (Waiter) selectInstance : null;
                if (waiter != null) {
                    s0(waiter, channelSegment, i3);
                    return;
                }
                return;
            }
            if (objT0 != BufferedChannelKt.o) {
                if (objT0 == BufferedChannelKt.n) {
                    throw new IllegalStateException("unexpected".toString());
                }
                channelSegment.b();
                selectInstance.e(objT0);
                return;
            }
            if (andIncrement < Q()) {
                channelSegment.b();
            }
        }
        m0(selectInstance);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b4, code lost:
    
        r13 = (kotlinx.coroutines.channels.ChannelSegment) r13.g();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void E0(kotlinx.coroutines.channels.ChannelSegment<E> r13) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.E0(kotlinx.coroutines.channels.d):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable F() {
        Throwable thU = u();
        return thU == null ? new ClosedReceiveChannelException("Channel was closed") : thU;
    }

    private final void F0(Waiter waiter) {
        H0(waiter, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater G() {
        return f10028f;
    }

    private final void G0(Waiter waiter) {
        H0(waiter, false);
    }

    private final void H0(Waiter waiter, boolean z) {
        if (waiter instanceof a) {
            CancellableContinuation<Boolean> cancellableContinuationA = ((a) waiter).a();
            Result.a aVar = Result.a;
            cancellableContinuationA.resumeWith(Result.m1238constructorimpl(Boolean.FALSE));
            return;
        }
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.a aVar2 = Result.a;
            continuation.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(z ? F() : N())));
        } else if (waiter instanceof ReceiveCatching) {
            CancellableContinuationImpl<ChannelResult<? extends E>> cancellableContinuationImpl = ((ReceiveCatching) waiter).a;
            Result.a aVar3 = Result.a;
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(ChannelResult.m1759boximpl(ChannelResult.a.a(u()))));
        } else if (waiter instanceof BufferedChannelIterator) {
            ((BufferedChannelIterator) waiter).g();
        } else {
            if (waiter instanceof SelectInstance) {
                ((SelectInstance) waiter).g(this, BufferedChannelKt.getCHANNEL_CLOSED());
                return;
            }
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater I() {
        return b;
    }

    static /* synthetic */ <E> Object I0(BufferedChannel<E> bufferedChannel, E e2, Continuation<? super v> continuation) {
        ChannelSegment<E> channelSegment = (ChannelSegment) O().get(bufferedChannel);
        while (true) {
            long andIncrement = P().getAndIncrement(bufferedChannel);
            long j2 = 1152921504606846975L & andIncrement;
            boolean zA0 = bufferedChannel.a0(andIncrement);
            int i2 = BufferedChannelKt.b;
            long j3 = j2 / ((long) i2);
            int i3 = (int) (j2 % ((long) i2));
            if (channelSegment.f10376d != j3) {
                ChannelSegment<E> channelSegmentQ = bufferedChannel.q(j3, channelSegment);
                if (channelSegmentQ != null) {
                    channelSegment = channelSegmentQ;
                } else if (zA0) {
                    Object objO0 = bufferedChannel.o0(e2, continuation);
                    if (objO0 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objO0;
                    }
                }
            }
            int iV0 = bufferedChannel.V0(channelSegment, i3, e2, j2, null, zA0);
            if (iV0 == 0) {
                channelSegment.b();
                break;
            }
            if (iV0 == 1) {
                break;
            }
            if (iV0 != 2) {
                if (iV0 == 3) {
                    Object objL0 = bufferedChannel.L0(channelSegment, i3, e2, j2, continuation);
                    if (objL0 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objL0;
                    }
                } else if (iV0 == 4) {
                    if (j2 < bufferedChannel.M()) {
                        channelSegment.b();
                    }
                    Object objO02 = bufferedChannel.o0(e2, continuation);
                    if (objO02 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        return objO02;
                    }
                } else if (iV0 == 5) {
                    channelSegment.b();
                }
            } else if (zA0) {
                channelSegment.s();
                Object objO03 = bufferedChannel.o0(e2, continuation);
                if (objO03 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return objO03;
                }
            } else if (DebugKt.getASSERTIONS_ENABLED()) {
                throw new AssertionError();
            }
        }
        return v.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b6, code lost:
    
        r0 = kotlin.Result.a;
        r9.resumeWith(kotlin.Result.m1238constructorimpl(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(true)));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ <E> java.lang.Object K0(kotlinx.coroutines.channels.BufferedChannel<E> r18, E r19, kotlin.coroutines.Continuation<? super java.lang.Boolean> r20) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.K0(kotlinx.coroutines.channels.BufferedChannel, java.lang.Object, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object L0(kotlinx.coroutines.channels.ChannelSegment<E> r21, int r22, E r23, long r24, kotlin.coroutines.Continuation<? super kotlin.v> r26) {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.L0(kotlinx.coroutines.channels.d, int, java.lang.Object, long, kotlin.coroutines.d):java.lang.Object");
    }

    private final boolean M0(long j2) {
        if (a0(j2)) {
            return false;
        }
        return !c(j2 & 1152921504606846975L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater O() {
        return f10027e;
    }

    private final boolean O0(Object obj, E e2) {
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).g(this, e2);
        }
        if (obj instanceof ReceiveCatching) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            ReceiveCatching receiveCatching = (ReceiveCatching) obj;
            CancellableContinuationImpl<ChannelResult<? extends E>> cancellableContinuationImpl = receiveCatching.a;
            ChannelResult channelResultM1759boximpl = ChannelResult.m1759boximpl(ChannelResult.a.c(e2));
            Function1<E, v> function1 = this.k;
            return BufferedChannelKt.e(cancellableContinuationImpl, channelResultM1759boximpl, function1 != null ? OnUndeliveredElementKt.bindCancellationFun(function1, e2, receiveCatching.a.getB()) : null);
        }
        if (obj instanceof BufferedChannelIterator) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((BufferedChannelIterator) obj).f(e2);
        }
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            Function1<E, v> function12 = this.k;
            return BufferedChannelKt.e(cancellableContinuation, e2, function12 != null ? OnUndeliveredElementKt.bindCancellationFun(function12, e2, cancellableContinuation.getB()) : null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater P() {
        return a;
    }

    private final boolean P0(Object obj, ChannelSegment<E> channelSegment, int i2) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.f((CancellableContinuation) obj, v.a, null, 2, null);
        }
        if (obj instanceof SelectInstance) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            TrySelectDetailedResult trySelectDetailedResultW = ((SelectImplementation) obj).w(this, v.a);
            if (trySelectDetailedResultW == TrySelectDetailedResult.b) {
                channelSegment.v(i2);
            }
            return trySelectDetailedResultW == TrySelectDetailedResult.a;
        }
        if (obj instanceof a) {
            return BufferedChannelKt.f(((a) obj).a(), Boolean.TRUE, null, 2, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    private final boolean R0(ChannelSegment<E> channelSegment, int i2, long j2) {
        Object objA = channelSegment.A(i2);
        if (!(objA instanceof Waiter) || j2 < b.get(this) || !channelSegment.u(i2, objA, BufferedChannelKt.f10037g)) {
            return S0(channelSegment, i2, j2);
        }
        if (P0(objA, channelSegment, i2)) {
            channelSegment.E(i2, BufferedChannelKt.f10034d);
            return true;
        }
        channelSegment.E(i2, BufferedChannelKt.j);
        channelSegment.B(i2, false);
        return false;
    }

    private final boolean S0(ChannelSegment<E> channelSegment, int i2, long j2) {
        while (true) {
            Object objA = channelSegment.A(i2);
            if (objA instanceof Waiter) {
                if (j2 < b.get(this)) {
                    if (channelSegment.u(i2, objA, new WaiterEB((Waiter) objA))) {
                        return true;
                    }
                } else if (channelSegment.u(i2, objA, BufferedChannelKt.f10037g)) {
                    if (P0(objA, channelSegment, i2)) {
                        channelSegment.E(i2, BufferedChannelKt.f10034d);
                        return true;
                    }
                    channelSegment.E(i2, BufferedChannelKt.j);
                    channelSegment.B(i2, false);
                    return false;
                }
            } else {
                if (objA == BufferedChannelKt.j) {
                    return false;
                }
                if (objA == null) {
                    if (channelSegment.u(i2, objA, BufferedChannelKt.f10035e)) {
                        return true;
                    }
                } else {
                    if (objA == BufferedChannelKt.f10034d || objA == BufferedChannelKt.h || objA == BufferedChannelKt.i || objA == BufferedChannelKt.k || objA == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        return true;
                    }
                    if (objA != BufferedChannelKt.f10036f) {
                        throw new IllegalStateException(("Unexpected cell state: " + objA).toString());
                    }
                }
            }
        }
    }

    private final void T(long j2) {
        if ((f10026d.addAndGet(this, j2) & 4611686018427387904L) != 0) {
            do {
            } while ((f10026d.get(this) & 4611686018427387904L) != 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object T0(ChannelSegment<E> channelSegment, int i2, long j2, Object obj) {
        Object objA = channelSegment.A(i2);
        if (objA == null) {
            if (j2 >= (a.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (channelSegment.u(i2, objA, obj)) {
                    m();
                    return BufferedChannelKt.m;
                }
            }
        } else if (objA == BufferedChannelKt.f10034d && channelSegment.u(i2, objA, BufferedChannelKt.i)) {
            m();
            return channelSegment.C(i2);
        }
        return U0(channelSegment, i2, j2, obj);
    }

    static /* synthetic */ void U(BufferedChannel bufferedChannel, long j2, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i2 & 1) != 0) {
            j2 = 1;
        }
        bufferedChannel.T(j2);
    }

    private final Object U0(ChannelSegment<E> channelSegment, int i2, long j2, Object obj) {
        while (true) {
            Object objA = channelSegment.A(i2);
            if (objA == null || objA == BufferedChannelKt.f10035e) {
                if (j2 < (a.get(this) & 1152921504606846975L)) {
                    if (channelSegment.u(i2, objA, BufferedChannelKt.h)) {
                        m();
                        return BufferedChannelKt.o;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.n;
                    }
                    if (channelSegment.u(i2, objA, obj)) {
                        m();
                        return BufferedChannelKt.m;
                    }
                }
            } else {
                if (objA != BufferedChannelKt.f10034d) {
                    if (objA != BufferedChannelKt.j && objA != BufferedChannelKt.h) {
                        if (objA == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            m();
                            return BufferedChannelKt.o;
                        }
                        if (objA != BufferedChannelKt.f10037g && channelSegment.u(i2, objA, BufferedChannelKt.f10036f)) {
                            boolean z = objA instanceof WaiterEB;
                            if (z) {
                                objA = ((WaiterEB) objA).a;
                            }
                            if (P0(objA, channelSegment, i2)) {
                                channelSegment.E(i2, BufferedChannelKt.i);
                                m();
                                return channelSegment.C(i2);
                            }
                            channelSegment.E(i2, BufferedChannelKt.j);
                            channelSegment.B(i2, false);
                            if (z) {
                                m();
                            }
                            return BufferedChannelKt.o;
                        }
                    }
                    return BufferedChannelKt.o;
                }
                if (channelSegment.u(i2, objA, BufferedChannelKt.i)) {
                    m();
                    return channelSegment.C(i2);
                }
            }
        }
    }

    private final void V() {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, obj == null ? BufferedChannelKt.q : BufferedChannelKt.r));
        if (obj == null) {
            return;
        }
        ((Function1) obj).invoke(u());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int V0(ChannelSegment<E> channelSegment, int i2, E e2, long j2, Object obj, boolean z) {
        channelSegment.F(i2, e2);
        if (z) {
            return W0(channelSegment, i2, e2, j2, obj, z);
        }
        Object objA = channelSegment.A(i2);
        if (objA == null) {
            if (c(j2)) {
                if (channelSegment.u(i2, null, BufferedChannelKt.f10034d)) {
                    return 1;
                }
            } else {
                if (obj == null) {
                    return 3;
                }
                if (channelSegment.u(i2, null, obj)) {
                    return 2;
                }
            }
        } else if (objA instanceof Waiter) {
            channelSegment.v(i2);
            if (O0(objA, e2)) {
                channelSegment.E(i2, BufferedChannelKt.i);
                q0();
                return 0;
            }
            if (channelSegment.w(i2, BufferedChannelKt.k) != BufferedChannelKt.k) {
                channelSegment.B(i2, true);
            }
            return 5;
        }
        return W0(channelSegment, i2, e2, j2, obj, z);
    }

    private final boolean W(ChannelSegment<E> channelSegment, int i2, long j2) {
        Object objA;
        do {
            objA = channelSegment.A(i2);
            if (objA != null && objA != BufferedChannelKt.f10035e) {
                if (objA == BufferedChannelKt.f10034d) {
                    return true;
                }
                if (objA == BufferedChannelKt.j || objA == BufferedChannelKt.getCHANNEL_CLOSED() || objA == BufferedChannelKt.i || objA == BufferedChannelKt.h) {
                    return false;
                }
                if (objA == BufferedChannelKt.f10037g) {
                    return true;
                }
                return objA != BufferedChannelKt.f10036f && j2 == M();
            }
        } while (!channelSegment.u(i2, objA, BufferedChannelKt.h));
        m();
        return false;
    }

    private final int W0(ChannelSegment<E> channelSegment, int i2, E e2, long j2, Object obj, boolean z) {
        while (true) {
            Object objA = channelSegment.A(i2);
            if (objA == null) {
                if (!c(j2) || z) {
                    if (z) {
                        if (channelSegment.u(i2, null, BufferedChannelKt.j)) {
                            channelSegment.B(i2, false);
                            return 4;
                        }
                    } else {
                        if (obj == null) {
                            return 3;
                        }
                        if (channelSegment.u(i2, null, obj)) {
                            return 2;
                        }
                    }
                } else if (channelSegment.u(i2, null, BufferedChannelKt.f10034d)) {
                    return 1;
                }
            } else {
                if (objA != BufferedChannelKt.f10035e) {
                    if (objA == BufferedChannelKt.k) {
                        channelSegment.v(i2);
                        return 5;
                    }
                    if (objA == BufferedChannelKt.h) {
                        channelSegment.v(i2);
                        return 5;
                    }
                    if (objA == BufferedChannelKt.getCHANNEL_CLOSED()) {
                        channelSegment.v(i2);
                        j();
                        return 4;
                    }
                    if (DebugKt.getASSERTIONS_ENABLED()) {
                        if (!((objA instanceof Waiter) || (objA instanceof WaiterEB))) {
                            throw new AssertionError();
                        }
                    }
                    channelSegment.v(i2);
                    if (objA instanceof WaiterEB) {
                        objA = ((WaiterEB) objA).a;
                    }
                    if (O0(objA, e2)) {
                        channelSegment.E(i2, BufferedChannelKt.i);
                        q0();
                        return 0;
                    }
                    if (channelSegment.w(i2, BufferedChannelKt.k) != BufferedChannelKt.k) {
                        channelSegment.B(i2, true);
                    }
                    return 5;
                }
                if (channelSegment.u(i2, objA, BufferedChannelKt.f10034d)) {
                    return 1;
                }
            }
        }
    }

    private final boolean X(long j2, boolean z) {
        int i2 = (int) (j2 >> 60);
        if (i2 == 0 || i2 == 1) {
            return false;
        }
        if (i2 == 2) {
            i(j2 & 1152921504606846975L);
            if (z && S()) {
                return false;
            }
        } else {
            if (i2 != 3) {
                throw new IllegalStateException(("unexpected close status: " + i2).toString());
            }
            h(j2 & 1152921504606846975L);
        }
        return true;
    }

    private final void X0(long j2) {
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        do {
            j3 = atomicLongFieldUpdater.get(this);
            if (j3 >= j2) {
                return;
            }
        } while (!b.compareAndSet(this, j3, j2));
    }

    private final void Y0(long j2) {
        long j3;
        long j4;
        AtomicLongFieldUpdater atomicLongFieldUpdater = a;
        do {
            j3 = atomicLongFieldUpdater.get(this);
            j4 = 1152921504606846975L & j3;
            if (j4 >= j2) {
                return;
            }
        } while (!a.compareAndSet(this, j3, BufferedChannelKt.b(j4, (int) (j3 >> 60))));
    }

    private final boolean Z(long j2) {
        return X(j2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a0(long j2) {
        return X(j2, false);
    }

    private final boolean c(long j2) {
        return j2 < s() || j2 < M() + ((long) this.j);
    }

    private final boolean c0() {
        long jS = s();
        return jS == 0 || jS == Long.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        r9 = (kotlinx.coroutines.channels.ChannelSegment) r9.g();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long d0(kotlinx.coroutines.channels.ChannelSegment<E> r9) {
        /*
            r8 = this;
        L0:
            int r0 = kotlinx.coroutines.channels.BufferedChannelKt.b
            int r0 = r0 + (-1)
        L4:
            r1 = -1
            r3 = -1
            if (r3 >= r0) goto L3d
            long r3 = r9.f10376d
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.b
            long r5 = (long) r5
            long r3 = r3 * r5
            long r5 = (long) r0
            long r3 = r3 + r5
            long r5 = r8.M()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L1b
            return r1
        L1b:
            java.lang.Object r1 = r9.A(r0)
            if (r1 == 0) goto L2d
            kotlinx.coroutines.internal.s r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getIN_BUFFER$p()
            if (r1 != r2) goto L28
            goto L2d
        L28:
            kotlinx.coroutines.internal.s r2 = kotlinx.coroutines.channels.BufferedChannelKt.f10034d
            if (r1 != r2) goto L3a
            return r3
        L2d:
            kotlinx.coroutines.internal.s r2 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            boolean r1 = r9.u(r0, r1, r2)
            if (r1 == 0) goto L1b
            r9.s()
        L3a:
            int r0 = r0 + (-1)
            goto L4
        L3d:
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r9 = r9.g()
            kotlinx.coroutines.channels.d r9 = (kotlinx.coroutines.channels.ChannelSegment) r9
            if (r9 != 0) goto L0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.d0(kotlinx.coroutines.channels.d):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e(ChannelSegment<E> channelSegment, long j2) {
        Object objM1783constructorimpl$default = InlineList.m1783constructorimpl$default(null, 1, null);
        loop0: while (channelSegment != null) {
            for (int i2 = BufferedChannelKt.b - 1; -1 < i2; i2--) {
                if ((channelSegment.f10376d * ((long) BufferedChannelKt.b)) + ((long) i2) < j2) {
                    break loop0;
                }
                while (true) {
                    Object objA = channelSegment.A(i2);
                    if (objA != null && objA != BufferedChannelKt.f10035e) {
                        if (!(objA instanceof WaiterEB)) {
                            if (!(objA instanceof Waiter)) {
                                break;
                            }
                            if (channelSegment.u(i2, objA, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                objM1783constructorimpl$default = InlineList.m1788plusFjFbRPM(objM1783constructorimpl$default, objA);
                                channelSegment.B(i2, true);
                                break;
                            }
                        } else {
                            if (channelSegment.u(i2, objA, BufferedChannelKt.getCHANNEL_CLOSED())) {
                                objM1783constructorimpl$default = InlineList.m1788plusFjFbRPM(objM1783constructorimpl$default, ((WaiterEB) objA).a);
                                channelSegment.B(i2, true);
                                break;
                            }
                        }
                    } else {
                        if (channelSegment.u(i2, objA, BufferedChannelKt.getCHANNEL_CLOSED())) {
                            channelSegment.s();
                            break;
                        }
                    }
                }
            }
            channelSegment = (ChannelSegment) channelSegment.g();
        }
        if (objM1783constructorimpl$default != null) {
            if (!(objM1783constructorimpl$default instanceof ArrayList)) {
                F0((Waiter) objM1783constructorimpl$default);
                return;
            }
            Intrinsics.checkNotNull(objM1783constructorimpl$default, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ArrayList arrayList = (ArrayList) objM1783constructorimpl$default;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                F0((Waiter) arrayList.get(size));
            }
        }
    }

    private final void e0() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = a;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            if (((int) (j2 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, BufferedChannelKt.b(1152921504606846975L & j2, 1)));
    }

    private final ChannelSegment<E> f() {
        Object obj = f10029g.get(this);
        ChannelSegment channelSegment = (ChannelSegment) f10027e.get(this);
        if (channelSegment.f10376d > ((ChannelSegment) obj).f10376d) {
            obj = channelSegment;
        }
        ChannelSegment channelSegment2 = (ChannelSegment) f10028f.get(this);
        if (channelSegment2.f10376d > ((ChannelSegment) obj).f10376d) {
            obj = channelSegment2;
        }
        return (ChannelSegment) ConcurrentLinkedListKt.close((ConcurrentLinkedListNode) obj);
    }

    private final void f0() {
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = a;
        do {
            j2 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, BufferedChannelKt.b(1152921504606846975L & j2, 3)));
    }

    private final void g0() {
        long j2;
        long jB;
        AtomicLongFieldUpdater atomicLongFieldUpdater = a;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            int i2 = (int) (j2 >> 60);
            if (i2 == 0) {
                jB = BufferedChannelKt.b(j2 & 1152921504606846975L, 2);
            } else if (i2 != 1) {
                return;
            } else {
                jB = BufferedChannelKt.b(j2 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j2, jB));
    }

    public static /* synthetic */ void getOnReceive$annotations() {
    }

    public static /* synthetic */ void getOnReceiveCatching$annotations() {
    }

    public static /* synthetic */ void getOnReceiveOrNull$annotations() {
    }

    public static /* synthetic */ void getOnSend$annotations() {
    }

    private final void h(long j2) {
        E0(i(j2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void h0(long j2, ChannelSegment<E> channelSegment) {
        boolean z;
        ChannelSegment<E> channelSegment2;
        ChannelSegment<E> channelSegment3;
        while (channelSegment.f10376d < j2 && (channelSegment3 = (ChannelSegment) channelSegment.e()) != null) {
            channelSegment = channelSegment3;
        }
        while (true) {
            if (!channelSegment.j() || (channelSegment2 = (ChannelSegment) channelSegment.e()) == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10029g;
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    z = true;
                    if (segment.f10376d >= channelSegment.f10376d) {
                        break;
                    }
                    if (!channelSegment.t()) {
                        z = false;
                        break;
                    } else if (atomicReferenceFieldUpdater.compareAndSet(this, segment, channelSegment)) {
                        if (segment.o()) {
                            segment.m();
                        }
                    } else if (channelSegment.o()) {
                        channelSegment.m();
                    }
                }
                if (z) {
                    return;
                }
            } else {
                channelSegment = channelSegment2;
            }
        }
    }

    private final ChannelSegment<E> i(long j2) {
        ChannelSegment<E> channelSegmentF = f();
        if (b0()) {
            long jD0 = d0(channelSegmentF);
            if (jD0 != -1) {
                k(jD0);
            }
        }
        e(channelSegmentF, j2);
        return channelSegmentF;
    }

    public static /* synthetic */ void isClosedForReceive$annotations() {
    }

    public static /* synthetic */ void isClosedForSend$annotations() {
    }

    public static /* synthetic */ void isEmpty$annotations() {
    }

    private final void j() {
        L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0(CancellableContinuation<? super ChannelResult<? extends E>> cancellableContinuation) {
        Result.a aVar = Result.a;
        cancellableContinuation.resumeWith(Result.m1238constructorimpl(ChannelResult.m1759boximpl(ChannelResult.a.a(u()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l0(CancellableContinuation<? super E> cancellableContinuation) {
        Result.a aVar = Result.a;
        cancellableContinuation.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(F())));
    }

    private final void m() {
        if (c0()) {
            return;
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) f10029g.get(this);
        while (true) {
            long andIncrement = c.getAndIncrement(this);
            int i2 = BufferedChannelKt.b;
            long j2 = andIncrement / ((long) i2);
            if (Q() <= andIncrement) {
                if (channelSegment.f10376d < j2 && channelSegment.e() != 0) {
                    h0(j2, channelSegment);
                }
                U(this, 0L, 1, null);
                return;
            }
            if (channelSegment.f10376d != j2) {
                ChannelSegment<E> channelSegmentN = n(j2, channelSegment, andIncrement);
                if (channelSegmentN == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentN;
                }
            }
            if (R0(channelSegment, (int) (andIncrement % ((long) i2)), andIncrement)) {
                U(this, 0L, 1, null);
                return;
            }
            U(this, 0L, 1, null);
        }
    }

    private final void m0(SelectInstance<?> selectInstance) {
        selectInstance.e(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    private final ChannelSegment<E> n(long j2, ChannelSegment<E> channelSegment, long j3) {
        Object objFindSegmentInternal;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10029g;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        do {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j2, function2);
            if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
                break;
            }
            Segment segmentM1794getSegmentimpl = SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.f10376d >= segmentM1794getSegmentimpl.f10376d) {
                    break;
                }
                if (!segmentM1794getSegmentimpl.t()) {
                    z = false;
                    break;
                }
                if (atomicReferenceFieldUpdater.compareAndSet(this, segment, segmentM1794getSegmentimpl)) {
                    if (segment.o()) {
                        segment.m();
                    }
                } else if (segmentM1794getSegmentimpl.o()) {
                    segmentM1794getSegmentimpl.m();
                }
            }
            z = true;
        } while (!z);
        if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
            j();
            h0(j2, channelSegment);
            U(this, 0L, 1, null);
            return null;
        }
        ChannelSegment<E> channelSegment2 = (ChannelSegment) SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
        if (channelSegment2.f10376d <= j2) {
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(channelSegment2.f10376d == j2)) {
                    throw new AssertionError();
                }
            }
            return channelSegment2;
        }
        long j4 = channelSegment2.f10376d;
        int i2 = BufferedChannelKt.b;
        if (c.compareAndSet(this, j3 + 1, j4 * ((long) i2))) {
            T((channelSegment2.f10376d * ((long) i2)) - j3);
            return null;
        }
        U(this, 0L, 1, null);
        return null;
    }

    private final void n0(E e2, SelectInstance<?> selectInstance) {
        Function1<E, v> function1 = this.k;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, e2, selectInstance.getContext());
        }
        selectInstance.e(BufferedChannelKt.getCHANNEL_CLOSED());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object o0(E e2, Continuation<? super v> continuation) {
        Throwable thCallUndeliveredElementCatchingException$default;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.E();
        Function1<E, v> function1 = this.k;
        if (function1 == null || (thCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, e2, null, 2, null)) == null) {
            Throwable thN = N();
            Result.a aVar = Result.a;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                thN = StackTraceRecoveryKt.g(thN, cancellableContinuationImpl);
            }
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(thN)));
        } else {
            ExceptionsKt__ExceptionsKt.addSuppressed(thCallUndeliveredElementCatchingException$default, N());
            Result.a aVar2 = Result.a;
            if (DebugKt.getRECOVER_STACK_TRACES()) {
                thCallUndeliveredElementCatchingException$default = StackTraceRecoveryKt.g(thCallUndeliveredElementCatchingException$default, cancellableContinuationImpl);
            }
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(thCallUndeliveredElementCatchingException$default)));
        }
        Object objY = cancellableContinuationImpl.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objY : v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelSegment<E> p(long j2, ChannelSegment<E> channelSegment) {
        Object objFindSegmentInternal;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10028f;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        do {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j2, function2);
            if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
                break;
            }
            Segment segmentM1794getSegmentimpl = SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.f10376d >= segmentM1794getSegmentimpl.f10376d) {
                    break;
                }
                if (!segmentM1794getSegmentimpl.t()) {
                    z = false;
                    break;
                }
                if (atomicReferenceFieldUpdater.compareAndSet(this, segment, segmentM1794getSegmentimpl)) {
                    if (segment.o()) {
                        segment.m();
                    }
                } else if (segmentM1794getSegmentimpl.o()) {
                    segmentM1794getSegmentimpl.m();
                }
            }
            z = true;
        } while (!z);
        if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
            j();
            if (channelSegment.f10376d * ((long) BufferedChannelKt.b) >= Q()) {
                return null;
            }
            channelSegment.b();
            return null;
        }
        ChannelSegment<E> channelSegment2 = (ChannelSegment) SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
        if (!c0() && j2 <= s() / ((long) BufferedChannelKt.b)) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10029g;
            while (true) {
                Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                if (segment2.f10376d >= channelSegment2.f10376d || !channelSegment2.t()) {
                    break;
                }
                if (atomicReferenceFieldUpdater2.compareAndSet(this, segment2, channelSegment2)) {
                    if (segment2.o()) {
                        segment2.m();
                    }
                } else if (channelSegment2.o()) {
                    channelSegment2.m();
                }
            }
        }
        long j3 = channelSegment2.f10376d;
        if (j3 <= j2) {
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(channelSegment2.f10376d == j2)) {
                    throw new AssertionError();
                }
            }
            return channelSegment2;
        }
        int i2 = BufferedChannelKt.b;
        X0(j3 * ((long) i2));
        if (channelSegment2.f10376d * ((long) i2) >= Q()) {
            return null;
        }
        channelSegment2.b();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0(E e2, CancellableContinuation<? super v> cancellableContinuation) {
        Function1<E, v> function1 = this.k;
        if (function1 != null) {
            OnUndeliveredElementKt.callUndeliveredElement(function1, e2, cancellableContinuation.getB());
        }
        Throwable thN = N();
        if (DebugKt.getRECOVER_STACK_TRACES() && (cancellableContinuation instanceof CoroutineStackFrame)) {
            thN = StackTraceRecoveryKt.g(thN, (CoroutineStackFrame) cancellableContinuation);
        }
        Result.a aVar = Result.a;
        cancellableContinuation.resumeWith(Result.m1238constructorimpl(ResultKt.createFailure(thN)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ChannelSegment<E> q(long j2, ChannelSegment<E> channelSegment) {
        Object objFindSegmentInternal;
        boolean z;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10027e;
        Function2 function2 = (Function2) BufferedChannelKt.createSegmentFunction();
        do {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(channelSegment, j2, function2);
            if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
                break;
            }
            Segment segmentM1794getSegmentimpl = SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.f10376d >= segmentM1794getSegmentimpl.f10376d) {
                    break;
                }
                if (!segmentM1794getSegmentimpl.t()) {
                    z = false;
                    break;
                }
                if (atomicReferenceFieldUpdater.compareAndSet(this, segment, segmentM1794getSegmentimpl)) {
                    if (segment.o()) {
                        segment.m();
                    }
                } else if (segmentM1794getSegmentimpl.o()) {
                    segmentM1794getSegmentimpl.m();
                }
            }
            z = true;
        } while (!z);
        if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
            j();
            if (channelSegment.f10376d * ((long) BufferedChannelKt.b) >= M()) {
                return null;
            }
            channelSegment.b();
            return null;
        }
        ChannelSegment<E> channelSegment2 = (ChannelSegment) SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
        long j3 = channelSegment2.f10376d;
        if (j3 <= j2) {
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(channelSegment2.f10376d == j2)) {
                    throw new AssertionError();
                }
            }
            return channelSegment2;
        }
        int i2 = BufferedChannelKt.b;
        Y0(j3 * ((long) i2));
        if (channelSegment2.f10376d * ((long) i2) >= M()) {
            return null;
        }
        channelSegment2.b();
        return null;
    }

    private final long s() {
        return c.get(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(Waiter waiter, ChannelSegment<E> channelSegment, int i2) {
        r0();
        waiter.c(channelSegment, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0(Waiter waiter, ChannelSegment<E> channelSegment, int i2) {
        waiter.c(channelSegment, i2 + BufferedChannelKt.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object u0(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        throw F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object v0(Object obj, Object obj2) {
        return ChannelResult.m1759boximpl(obj2 == BufferedChannelKt.getCHANNEL_CLOSED() ? ChannelResult.a.a(u()) : ChannelResult.a.c(obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object w0(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj2;
        }
        if (u() == null) {
            return null;
        }
        throw F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object x0(Object obj, Object obj2) throws Throwable {
        if (obj2 != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return this;
        }
        throw N();
    }

    static /* synthetic */ <E> Object y0(BufferedChannel<E> bufferedChannel, Continuation<? super E> continuation) throws Throwable {
        ChannelSegment<E> channelSegment = (ChannelSegment) G().get(bufferedChannel);
        while (!bufferedChannel.Y()) {
            long andIncrement = I().getAndIncrement(bufferedChannel);
            int i2 = BufferedChannelKt.b;
            long j2 = andIncrement / ((long) i2);
            int i3 = (int) (andIncrement % ((long) i2));
            if (channelSegment.f10376d != j2) {
                ChannelSegment<E> channelSegmentP = bufferedChannel.p(j2, channelSegment);
                if (channelSegmentP == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentP;
                }
            }
            Object objT0 = bufferedChannel.T0(channelSegment, i3, andIncrement, null);
            if (objT0 == BufferedChannelKt.m) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (objT0 != BufferedChannelKt.o) {
                if (objT0 == BufferedChannelKt.n) {
                    return bufferedChannel.B0(channelSegment, i3, andIncrement, continuation);
                }
                channelSegment.b();
                return objT0;
            }
            if (andIncrement < bufferedChannel.Q()) {
                channelSegment.b();
            }
        }
        throw StackTraceRecoveryKt.recoverStackTrace(bufferedChannel.F());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ <E> java.lang.Object z0(kotlinx.coroutines.channels.BufferedChannel<E> r14, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.ChannelResult<? extends E>> r15) {
        /*
            boolean r0 = r15 instanceof kotlinx.coroutines.channels.BufferedChannel.k
            if (r0 == 0) goto L13
            r0 = r15
            kotlinx.coroutines.channels.BufferedChannel$k r0 = (kotlinx.coroutines.channels.BufferedChannel.k) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.BufferedChannel$k r0 = new kotlinx.coroutines.channels.BufferedChannel$k
            r0.<init>(r14, r15)
        L18:
            r6 = r0
            java.lang.Object r15 = r6.a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r6.c
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.ResultKt.throwOnFailure(r15)
            kotlinx.coroutines.channels.ChannelResult r15 = (kotlinx.coroutines.channels.ChannelResult) r15
            java.lang.Object r14 = r15.getC()
            goto Lb6
        L31:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L39:
            kotlin.ResultKt.throwOnFailure(r15)
            r15 = 0
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = access$getReceiveSegment$volatile$FU()
            java.lang.Object r1 = r1.get(r14)
            kotlinx.coroutines.channels.d r1 = (kotlinx.coroutines.channels.ChannelSegment) r1
        L47:
            boolean r3 = r14.Y()
            if (r3 == 0) goto L59
            kotlinx.coroutines.channels.ChannelResult$b r15 = kotlinx.coroutines.channels.ChannelResult.a
            java.lang.Throwable r14 = r14.u()
            java.lang.Object r14 = r15.a(r14)
            goto Lb6
        L59:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = access$getReceivers$volatile$FU()
            long r4 = r3.getAndIncrement(r14)
            int r3 = kotlinx.coroutines.channels.BufferedChannelKt.b
            long r7 = (long) r3
            long r7 = r4 / r7
            long r9 = (long) r3
            long r9 = r4 % r9
            int r3 = (int) r9
            long r9 = r1.f10376d
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 == 0) goto L79
            kotlinx.coroutines.channels.d r7 = access$findSegmentReceive(r14, r7, r1)
            if (r7 != 0) goto L77
            goto L47
        L77:
            r13 = r7
            goto L7a
        L79:
            r13 = r1
        L7a:
            r7 = r14
            r8 = r13
            r9 = r3
            r10 = r4
            r12 = r15
            java.lang.Object r1 = access$updateCellReceive(r7, r8, r9, r10, r12)
            kotlinx.coroutines.internal.s r7 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND$p()
            if (r1 == r7) goto Lb7
            kotlinx.coroutines.internal.s r7 = kotlinx.coroutines.channels.BufferedChannelKt.access$getFAILED$p()
            if (r1 != r7) goto L9c
            long r7 = r14.Q()
            int r1 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r1 >= 0) goto L9a
            r13.b()
        L9a:
            r1 = r13
            goto L47
        L9c:
            kotlinx.coroutines.internal.s r15 = kotlinx.coroutines.channels.BufferedChannelKt.access$getSUSPEND_NO_WAITER$p()
            if (r1 != r15) goto Lad
            r6.c = r2
            r1 = r14
            r2 = r13
            java.lang.Object r14 = r1.A0(r2, r3, r4, r6)
            if (r14 != r0) goto Lb6
            return r0
        Lad:
            r13.b()
            kotlinx.coroutines.channels.ChannelResult$b r14 = kotlinx.coroutines.channels.ChannelResult.a
            java.lang.Object r14 = r14.c(r1)
        Lb6:
            return r14
        Lb7:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "unexpected"
            java.lang.String r15 = r15.toString()
            r14.<init>(r15)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.z0(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public SelectClause1<ChannelResult<E>> A() {
        d dVar = d.a;
        Intrinsics.checkNotNull(dVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(dVar, 3);
        e eVar = e.a;
        Intrinsics.checkNotNull(eVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(eVar, 3), this.l);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public SelectClause1<E> B() {
        f fVar = f.a;
        Intrinsics.checkNotNull(fVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(fVar, 3);
        g gVar = g.a;
        Intrinsics.checkNotNull(gVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(gVar, 3), this.l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object C() {
        ChannelSegment channelSegment;
        long j2 = b.get(this);
        long j3 = a.get(this);
        if (Z(j3)) {
            return ChannelResult.a.a(u());
        }
        if (j2 >= (j3 & 1152921504606846975L)) {
            return ChannelResult.a.b();
        }
        Object obj = BufferedChannelKt.k;
        ChannelSegment channelSegment2 = (ChannelSegment) G().get(this);
        while (!Y()) {
            long andIncrement = I().getAndIncrement(this);
            int i2 = BufferedChannelKt.b;
            long j4 = andIncrement / ((long) i2);
            int i3 = (int) (andIncrement % ((long) i2));
            if (channelSegment2.f10376d != j4) {
                ChannelSegment channelSegmentP = p(j4, channelSegment2);
                if (channelSegmentP == null) {
                    continue;
                } else {
                    channelSegment = channelSegmentP;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object objT0 = T0(channelSegment, i3, andIncrement, obj);
            if (objT0 == BufferedChannelKt.m) {
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    s0(waiter, channelSegment, i3);
                }
                Z0(andIncrement);
                channelSegment.s();
                return ChannelResult.a.b();
            }
            if (objT0 != BufferedChannelKt.o) {
                if (objT0 == BufferedChannelKt.n) {
                    throw new IllegalStateException("unexpected".toString());
                }
                channelSegment.b();
                return ChannelResult.a.c(objT0);
            }
            if (andIncrement < Q()) {
                channelSegment.b();
            }
            channelSegment2 = channelSegment;
        }
        return ChannelResult.a.a(u());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object D(Continuation<? super E> continuation) {
        return Channel.DefaultImpls.receiveOrNull(this, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        r14.e(kotlin.v.a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void D0(kotlinx.coroutines.selects.SelectInstance<?> r14, java.lang.Object r15) {
        /*
            r13 = this;
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = access$getSendSegment$volatile$FU()
            java.lang.Object r0 = r0.get(r13)
            kotlinx.coroutines.channels.d r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
        La:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getSendersAndCloseStatus$volatile$FU()
            long r1 = r1.getAndIncrement(r13)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r3 = r3 & r1
            boolean r1 = access$isClosedForSend0(r13, r1)
            int r2 = kotlinx.coroutines.channels.BufferedChannelKt.b
            long r5 = (long) r2
            long r5 = r3 / r5
            long r7 = (long) r2
            long r7 = r3 % r7
            int r2 = (int) r7
            long r7 = r0.f10376d
            int r9 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r9 == 0) goto L35
            kotlinx.coroutines.channels.d r5 = access$findSegmentSend(r13, r5, r0)
            if (r5 != 0) goto L34
            if (r1 == 0) goto La
            goto L73
        L34:
            r0 = r5
        L35:
            r5 = r13
            r6 = r0
            r7 = r2
            r8 = r15
            r9 = r3
            r11 = r14
            r12 = r1
            int r5 = access$updateCellSend(r5, r6, r7, r8, r9, r11, r12)
            if (r5 == 0) goto L85
            r6 = 1
            if (r5 == r6) goto L88
            r6 = 2
            if (r5 == r6) goto L6e
            r1 = 3
            if (r5 == r1) goto L62
            r1 = 4
            if (r5 == r1) goto L56
            r1 = 5
            if (r5 == r1) goto L52
            goto La
        L52:
            r0.b()
            goto La
        L56:
            long r1 = r13.M()
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 >= 0) goto L73
            r0.b()
            goto L73
        L62:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "unexpected"
            java.lang.String r15 = r15.toString()
            r14.<init>(r15)
            throw r14
        L6e:
            if (r1 == 0) goto L77
            r0.s()
        L73:
            r13.n0(r15, r14)
            goto L8d
        L77:
            boolean r15 = r14 instanceof kotlinx.coroutines.Waiter
            if (r15 == 0) goto L7e
            kotlinx.coroutines.k1 r14 = (kotlinx.coroutines.Waiter) r14
            goto L7f
        L7e:
            r14 = 0
        L7f:
            if (r14 == 0) goto L8d
            access$prepareSenderForSuspension(r13, r14, r0, r2)
            goto L8d
        L85:
            r0.b()
        L88:
            kotlin.v r15 = kotlin.v.a
            r14.e(r15)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.D0(kotlinx.coroutines.selects.h, java.lang.Object):void");
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object E(Continuation<? super ChannelResult<? extends E>> continuation) {
        return z0(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public Object H(Continuation<? super E> continuation) {
        return y0(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean J(Throwable th) {
        return g(th, false);
    }

    public Object J0(E e2, Continuation<? super Boolean> continuation) {
        return K0(this, e2, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object K(E e2, Continuation<? super v> continuation) {
        return I0(this, e2, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean L() {
        return a0(a.get(this));
    }

    public final long M() {
        return b.get(this);
    }

    protected final Throwable N() {
        Throwable thU = u();
        return thU == null ? new ClosedSendChannelException("Channel was closed") : thU;
    }

    public boolean N0() {
        return M0(a.get(this));
    }

    public final long Q() {
        return a.get(this) & 1152921504606846975L;
    }

    protected final Object Q0(E e2) {
        ChannelSegment channelSegment;
        Object obj = BufferedChannelKt.f10034d;
        ChannelSegment channelSegment2 = (ChannelSegment) O().get(this);
        while (true) {
            long andIncrement = P().getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean zA0 = a0(andIncrement);
            int i2 = BufferedChannelKt.b;
            long j3 = j2 / ((long) i2);
            int i3 = (int) (j2 % ((long) i2));
            if (channelSegment2.f10376d != j3) {
                ChannelSegment channelSegmentQ = q(j3, channelSegment2);
                if (channelSegmentQ != null) {
                    channelSegment = channelSegmentQ;
                } else if (zA0) {
                    return ChannelResult.a.a(N());
                }
            } else {
                channelSegment = channelSegment2;
            }
            int iV0 = V0(channelSegment, i3, e2, j2, obj, zA0);
            if (iV0 == 0) {
                channelSegment.b();
                return ChannelResult.a.c(v.a);
            }
            if (iV0 == 1) {
                return ChannelResult.a.c(v.a);
            }
            if (iV0 == 2) {
                if (zA0) {
                    channelSegment.s();
                    return ChannelResult.a.a(N());
                }
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    t0(waiter, channelSegment, i3);
                }
                k((channelSegment.f10376d * ((long) i2)) + ((long) i3));
                return ChannelResult.a.c(v.a);
            }
            if (iV0 == 3) {
                throw new IllegalStateException("unexpected".toString());
            }
            if (iV0 == 4) {
                if (j2 < M()) {
                    channelSegment.b();
                }
                return ChannelResult.a.a(N());
            }
            if (iV0 == 5) {
                channelSegment.b();
            }
            channelSegment2 = channelSegment;
        }
    }

    public final boolean S() {
        while (true) {
            ChannelSegment<E> channelSegmentP = (ChannelSegment) f10028f.get(this);
            long jM = M();
            if (Q() <= jM) {
                return false;
            }
            int i2 = BufferedChannelKt.b;
            long j2 = jM / ((long) i2);
            if (channelSegmentP.f10376d == j2 || (channelSegmentP = p(j2, channelSegmentP)) != null) {
                channelSegmentP.b();
                if (W(channelSegmentP, (int) (jM % ((long) i2)), jM)) {
                    return true;
                }
                b.compareAndSet(this, jM, 1 + jM);
            } else if (((ChannelSegment) f10028f.get(this)).f10376d < j2) {
                return false;
            }
        }
    }

    public boolean Y() {
        return Z(a.get(this));
    }

    public final void Z0(long j2) {
        long j3;
        long j4;
        if (c0()) {
            return;
        }
        while (s() <= j2) {
        }
        int i2 = BufferedChannelKt.c;
        for (int i3 = 0; i3 < i2; i3++) {
            long jS = s();
            if (jS == (f10026d.get(this) & 4611686018427387903L) && jS == s()) {
                return;
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f10026d;
        do {
            j3 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j3, BufferedChannelKt.a(j3 & 4611686018427387903L, true)));
        while (true) {
            long jS2 = s();
            long j5 = f10026d.get(this);
            long j6 = j5 & 4611686018427387903L;
            boolean z = (4611686018427387904L & j5) != 0;
            if (jS2 == j6 && jS2 == s()) {
                break;
            } else if (!z) {
                f10026d.compareAndSet(this, j5, BufferedChannelKt.a(j6, true));
            }
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f10026d;
        do {
            j4 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j4, BufferedChannelKt.a(j4 & 4611686018427387903L, false)));
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final boolean a(Throwable th) {
        return d(th);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void b(CancellationException cancellationException) {
        d(cancellationException);
    }

    protected boolean b0() {
        return false;
    }

    public boolean d(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return g(th, true);
    }

    protected boolean g(Throwable th, boolean z) {
        if (z) {
            e0();
        }
        boolean zCompareAndSet = h.compareAndSet(this, BufferedChannelKt.s, th);
        if (z) {
            f0();
        } else {
            g0();
        }
        j();
        i0();
        if (zCompareAndSet) {
            V();
        }
        return zCompareAndSet;
    }

    protected void i0() {
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public ChannelIterator<E> iterator() {
        return new BufferedChannelIterator();
    }

    protected final void k(long j2) {
        UndeliveredElementException undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
        if (DebugKt.getASSERTIONS_ENABLED() && !b0()) {
            throw new AssertionError();
        }
        ChannelSegment<E> channelSegment = (ChannelSegment) f10028f.get(this);
        while (true) {
            long j3 = b.get(this);
            if (j2 < Math.max(((long) this.j) + j3, s())) {
                return;
            }
            if (b.compareAndSet(this, j3, j3 + 1)) {
                int i2 = BufferedChannelKt.b;
                long j4 = j3 / ((long) i2);
                int i3 = (int) (j3 % ((long) i2));
                if (channelSegment.f10376d != j4) {
                    ChannelSegment<E> channelSegmentP = p(j4, channelSegment);
                    if (channelSegmentP == null) {
                        continue;
                    } else {
                        channelSegment = channelSegmentP;
                    }
                }
                Object objT0 = T0(channelSegment, i3, j3, null);
                if (objT0 != BufferedChannelKt.o) {
                    channelSegment.b();
                    Function1<E, v> function1 = this.k;
                    if (function1 != null && (undeliveredElementExceptionCallUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(function1, objT0, null, 2, null)) != null) {
                        throw undeliveredElementExceptionCallUndeliveredElementCatchingException$default;
                    }
                } else if (j3 < Q()) {
                    channelSegment.b();
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public SelectClause2<E, BufferedChannel<E>> l() {
        h hVar = h.a;
        Intrinsics.checkNotNull(hVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(hVar, 3);
        i iVar = i.a;
        Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(iVar, 3), null, 8, null);
    }

    protected void q0() {
    }

    protected void r0() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e8, code lost:
    
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.e();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 538
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    protected final Throwable u() {
        return (Throwable) h.get(this);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void w(Function1<? super Throwable, v> function1) {
        if (i.compareAndSet(this, null, function1)) {
            return;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != BufferedChannelKt.q) {
                if (obj == BufferedChannelKt.r) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!i.compareAndSet(this, BufferedChannelKt.q, BufferedChannelKt.r));
        function1.invoke(u());
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bd, code lost:
    
        return kotlinx.coroutines.channels.ChannelResult.a.c(kotlin.v.a);
     */
    @Override // kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object y(E r15) {
        /*
            r14 = this;
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = P()
            long r0 = r0.get(r14)
            boolean r0 = r14.M0(r0)
            if (r0 == 0) goto L15
            kotlinx.coroutines.channels.ChannelResult$b r15 = kotlinx.coroutines.channels.ChannelResult.a
            java.lang.Object r15 = r15.b()
            return r15
        L15:
            kotlinx.coroutines.internal.s r8 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = access$getSendSegment$volatile$FU()
            java.lang.Object r0 = r0.get(r14)
            kotlinx.coroutines.channels.d r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
        L23:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = access$getSendersAndCloseStatus$volatile$FU()
            long r1 = r1.getAndIncrement(r14)
            r3 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r9 = r1 & r3
            boolean r11 = access$isClosedForSend0(r14, r1)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.b
            long r2 = (long) r1
            long r2 = r9 / r2
            long r4 = (long) r1
            long r4 = r9 % r4
            int r12 = (int) r4
            long r4 = r0.f10376d
            int r1 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r1 == 0) goto L50
            kotlinx.coroutines.channels.d r1 = access$findSegmentSend(r14, r2, r0)
            if (r1 != 0) goto L4e
            if (r11 == 0) goto L23
            goto L90
        L4e:
            r13 = r1
            goto L51
        L50:
            r13 = r0
        L51:
            r0 = r14
            r1 = r13
            r2 = r12
            r3 = r15
            r4 = r9
            r6 = r8
            r7 = r11
            int r0 = access$updateCellSend(r0, r1, r2, r3, r4, r6, r7)
            if (r0 == 0) goto Lb2
            r1 = 1
            if (r0 == r1) goto Lb5
            r1 = 2
            if (r0 == r1) goto L8b
            r1 = 3
            if (r0 == r1) goto L7f
            r1 = 4
            if (r0 == r1) goto L73
            r1 = 5
            if (r0 == r1) goto L6e
            goto L71
        L6e:
            r13.b()
        L71:
            r0 = r13
            goto L23
        L73:
            long r0 = r14.M()
            int r15 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r15 >= 0) goto L90
            r13.b()
            goto L90
        L7f:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "unexpected"
            java.lang.String r0 = r0.toString()
            r15.<init>(r0)
            throw r15
        L8b:
            if (r11 == 0) goto L9b
            r13.s()
        L90:
            kotlinx.coroutines.channels.ChannelResult$b r15 = kotlinx.coroutines.channels.ChannelResult.a
            java.lang.Throwable r0 = r14.N()
            java.lang.Object r15 = r15.a(r0)
            goto Lbd
        L9b:
            boolean r15 = r8 instanceof kotlinx.coroutines.Waiter
            if (r15 == 0) goto La2
            kotlinx.coroutines.k1 r8 = (kotlinx.coroutines.Waiter) r8
            goto La3
        La2:
            r8 = 0
        La3:
            if (r8 == 0) goto La8
            access$prepareSenderForSuspension(r14, r8, r13, r12)
        La8:
            r13.s()
            kotlinx.coroutines.channels.ChannelResult$b r15 = kotlinx.coroutines.channels.ChannelResult.a
            java.lang.Object r15 = r15.b()
            goto Lbd
        Lb2:
            r13.b()
        Lb5:
            kotlinx.coroutines.channels.ChannelResult$b r15 = kotlinx.coroutines.channels.ChannelResult.a
            kotlin.v r0 = kotlin.v.a
            java.lang.Object r15 = r15.c(r0)
        Lbd:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.y(java.lang.Object):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public SelectClause1<E> z() {
        b bVar = b.a;
        Intrinsics.checkNotNull(bVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bVar, 3);
        c cVar = c.a;
        Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(cVar, 3), this.l);
    }
}
