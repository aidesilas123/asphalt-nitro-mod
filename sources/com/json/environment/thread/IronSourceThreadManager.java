package com.json.environment.thread;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.kb;
import com.json.x7;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

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
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b9\u0010:J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J$\u0010\r\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\nJ\u001a\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007J\u000e\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0002J\u001a\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007J\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017R\"\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0017\u0010(\u001a\u00020!8\u0006¢\u0006\f\n\u0004\b%\u0010#\u001a\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010-\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010*R\u0014\u0010/\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010*R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b\u0005\u00103R\u001b\u00108\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b5\u00102\u001a\u0004\b6\u00107¨\u0006;"}, d2 = {"Lcom/ironsource/environment/thread/IronSourceThreadManager;", "", "Ljava/lang/Runnable;", "action", "", "a", "Ljava/util/concurrent/ThreadPoolExecutor;", "getThreadPoolExecutor", "shouldExecuteAsync", "shouldWaitUntilAllOperationsCompleted", "", "tasks", "", "executeTasks", "", "delay", "postOnUiThreadTask", "removeUiThreadTask", "postMediationBackgroundTask", "removeMediationBackgroundTask", "postAdapterBackgroundTask", "removeAdapterBackgroundTask", "postPublisherCallback", "", "name", "Lcom/ironsource/x7;", "createAndStartThread", "Z", "getUseSharedExecutorService", "()Z", "setUseSharedExecutorService", "(Z)V", "useSharedExecutorService", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/os/Handler;", "uiHandler", "c", "getInitHandler", "()Landroid/os/Handler;", "initHandler", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/ironsource/x7;", "mediationBackgroundHandler", "e", "adapterBackgroundHandler", InneractiveMediationDefs.GENDER_FEMALE, "publisherCallbackHandler", "Lcom/ironsource/kb;", "g", "Lkotlin/Lazy;", "()Lcom/ironsource/kb;", "executorService", "h", "getSharedManagersThread", "()Lcom/ironsource/x7;", "sharedManagersThread", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class IronSourceThreadManager {
    private static boolean a;
    private static final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final x7 f6093d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final x7 f6094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final x7 f6095f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f6096g;
    private static final Lazy h;
    public static final IronSourceThreadManager INSTANCE = new IronSourceThreadManager();
    private static final Handler b = new Handler(Looper.getMainLooper());

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/kb;", "a", "()Lcom/ironsource/kb;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<kb> {
        public static final a a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kb invoke() {
            return new kb(0, null, null, 7, null);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/ironsource/x7;", "a", "()Lcom/ironsource/x7;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<x7> {
        public static final b a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final x7 invoke() {
            x7 x7Var = new x7("managersThread");
            x7Var.start();
            x7Var.a();
            return x7Var;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread("IronSourceInitiatorHandler");
        handlerThread.start();
        c = new Handler(handlerThread.getLooper());
        x7 x7Var = new x7("mediationBackground");
        x7Var.start();
        x7Var.a();
        f6093d = x7Var;
        x7 x7Var2 = new x7("adapterBackground");
        x7Var2.start();
        x7Var2.a();
        f6094e = x7Var2;
        x7 x7Var3 = new x7("publisher-callbacks");
        x7Var3.start();
        x7Var3.a();
        f6095f = x7Var3;
        f6096g = LazyKt__LazyJVMKt.lazy(a.a);
        h = LazyKt__LazyJVMKt.lazy(b.a);
    }

    private IronSourceThreadManager() {
    }

    private final kb a() {
        return (kb) f6096g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Runnable it, final CountDownLatch latch) {
        Intrinsics.checkNotNullParameter(it, "$it");
        Intrinsics.checkNotNullParameter(latch, "$latch");
        it.run();
        new Runnable() { // from class: com.ironsource.environment.thread.b
            @Override // java.lang.Runnable
            public final void run() {
                IronSourceThreadManager.c(latch);
            }
        }.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(CountDownLatch latch) {
        Intrinsics.checkNotNullParameter(latch, "$latch");
        latch.countDown();
    }

    private final boolean d(Runnable runnable) {
        return a && a().getQueue().contains(runnable);
    }

    public static /* synthetic */ void postAdapterBackgroundTask$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postAdapterBackgroundTask(runnable, j);
    }

    public static /* synthetic */ void postMediationBackgroundTask$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postMediationBackgroundTask(runnable, j);
    }

    public static /* synthetic */ void postOnUiThreadTask$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postOnUiThreadTask(runnable, j);
    }

    public static /* synthetic */ void postPublisherCallback$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postPublisherCallback(runnable, j);
    }

    public final x7 createAndStartThread(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        x7 x7Var = new x7(name);
        x7Var.start();
        x7Var.a();
        return x7Var;
    }

    public final void executeTasks(boolean z, boolean z2, List<? extends Runnable> tasks) {
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        if (!z) {
            Iterator<T> it = tasks.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        } else {
            if (!z2) {
                Iterator<T> it2 = tasks.iterator();
                while (it2.hasNext()) {
                    postMediationBackgroundTask$default(INSTANCE, (Runnable) it2.next(), 0L, 2, null);
                }
                return;
            }
            final CountDownLatch countDownLatch = new CountDownLatch(tasks.size());
            for (final Runnable runnable : tasks) {
                postMediationBackgroundTask$default(INSTANCE, new Runnable() { // from class: com.ironsource.environment.thread.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        IronSourceThreadManager.b(runnable, countDownLatch);
                    }
                }, 0L, 2, null);
            }
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
        }
    }

    public final Handler getInitHandler() {
        return c;
    }

    public final x7 getSharedManagersThread() {
        return (x7) h.getValue();
    }

    public final ThreadPoolExecutor getThreadPoolExecutor() {
        return new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), Runtime.getRuntime().availableProcessors(), Long.MAX_VALUE, TimeUnit.NANOSECONDS, new LinkedBlockingQueue());
    }

    public final boolean getUseSharedExecutorService() {
        return a;
    }

    public final void postAdapterBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postAdapterBackgroundTask$default(this, action, 0L, 2, null);
    }

    public final void postAdapterBackgroundTask(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (a) {
            a().schedule(action, j, TimeUnit.MILLISECONDS);
        } else {
            f6094e.a(action, j);
        }
    }

    public final void postMediationBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postMediationBackgroundTask$default(this, action, 0L, 2, null);
    }

    public final void postMediationBackgroundTask(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (a) {
            a().schedule(action, j, TimeUnit.MILLISECONDS);
        } else {
            f6093d.a(action, j);
        }
    }

    public final void postOnUiThreadTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postOnUiThreadTask$default(this, action, 0L, 2, null);
    }

    public final void postOnUiThreadTask(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        b.postDelayed(action, j);
    }

    public final void postPublisherCallback(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postPublisherCallback$default(this, action, 0L, 2, null);
    }

    public final void postPublisherCallback(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        f6095f.a(action, j);
    }

    public final void removeAdapterBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (d(action)) {
            a().remove(action);
        } else {
            f6094e.b(action);
        }
    }

    public final void removeMediationBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (d(action)) {
            a().remove(action);
        } else {
            f6093d.b(action);
        }
    }

    public final void removeUiThreadTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        b.removeCallbacks(action);
    }

    public final void setUseSharedExecutorService(boolean z) {
        a = z;
    }
}
