###### Class com.hyprmx.android.sdk.utility.HyprMXLog (com.hyprmx.android.sdk.utility.HyprMXLog)
.class public final Lcom/hyprmx/android/sdk/utility/HyprMXLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\tH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u001dH\u0002J\u0018\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0012\u0010\"\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010$\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0018\u0010$\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0012\u0010$\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010$\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u0014H\u0007J\u0018\u0010\'\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0016\u0010\'\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010\'\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\r\u0010(\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008)J\u0015\u0010\u0018\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008+J\u0016\u0010,\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tJ\u0018\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0004H\u0002J \u0010-\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0004H\u0002J\u0006\u00100\u001a\u00020\u001dJ#\u00101\u001a\u00020\u00142\u0006\u00102\u001a\u0002032\u0006\u0010&\u001a\u00020\u0014H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105J\u001b\u00106\u001a\u00020\u001d2\u0006\u00102\u001a\u000203H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108J\u0012\u00109\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007J\u0018\u0010:\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\tH\u0007J\u0016\u0010:\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 J\u0012\u0010:\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006;"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/utility/HyprMXLog;",
        "",
        "()V",
        "DEBUG_LOG",
        "",
        "ERROR_LOG",
        "INFO_LOG",
        "MAX_LOG_SIZE",
        "PREF_ALL_LOGGING_ENABLED",
        "",
        "SEPARATOR_STR",
        "VERBOSE_LOG",
        "WARNING_LOG",
        "ioDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getIoDispatcher$HyprMX_Mobile_Android_SDK_release",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "setIoDispatcher$HyprMX_Mobile_Android_SDK_release",
        "(Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "isLoggingOverrideFromServerEnabled",
        "",
        "isLoggingToLogcatEnabled",
        "logMessage",
        "Ljava/lang/StringBuffer;",
        "logToSystemOut",
        "loggedMessages",
        "getLoggedMessages$HyprMX_Mobile_Android_SDK_release",
        "()Ljava/lang/String;",
        "captureLog",
        "",
        "message",
        "throwable",
        "",
        "checkBuffer",
        "d",
        "tag",
        "e",
        "enableDebugLogs",
        "enabled",
        "i",
        "isLoggingEnabled",
        "isLoggingEnabled$HyprMX_Mobile_Android_SDK_release",
        "enable",
        "logToSystemOut$HyprMX_Mobile_Android_SDK_release",
        "longDebugLog",
        "out",
        "msg",
        "logType",
        "resetLoggedMessages",
        "setAllLoggingEnabled",
        "context",
        "Landroid/content/Context;",
        "setAllLoggingEnabled$HyprMX_Mobile_Android_SDK_release",
        "(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setup",
        "setup$HyprMX_Mobile_Android_SDK_release",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "v",
        "w",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEBUG_LOG:I = 0x1

.field private static final ERROR_LOG:I = 0x4

.field private static final INFO_LOG:I = 0x2

.field public static final INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

.field private static final MAX_LOG_SIZE:I = 0x320

.field public static final PREF_ALL_LOGGING_ENABLED:Ljava/lang/String; = "ALL_LOGGING_ENABLED_PREF"

.field private static final SEPARATOR_STR:Ljava/lang/String; = " ---- @ "

.field private static final VERBOSE_LOG:I = 0x0

.field private static final WARNING_LOG:I = 0x3

.field private static ioDispatcher:Lkotlinx/coroutines/r;

.field private static isLoggingOverrideFromServerEnabled:Z

.field private static isLoggingToLogcatEnabled:Z

.field private static final logMessage:Ljava/lang/StringBuffer;

.field private static logToSystemOut:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logMessage:Ljava/lang/StringBuffer;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->ioDispatcher:Lkotlinx/coroutines/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setLoggingOverrideFromServerEnabled$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingOverrideFromServerEnabled:Z

    return-void
.end method

.method private final declared-synchronized captureLog(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->checkBuffer()V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logMessage:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized captureLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->checkBuffer()V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logMessage:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final checkBuffer()V
    .registers 4

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_13

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_13
    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_11

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_19
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_b

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    return-void
.end method

.method public static final e(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "throwable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getStackTraceString(throwable)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    return-void
.end method

.method public static final enableDebugLogs(Z)V
    .registers 1

    sput-boolean p0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingToLogcatEnabled:Z

    return-void
.end method

.method public static final i(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_b

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final out(Ljava/lang/String;I)V
    .registers 17

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "element.className"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/g;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---- @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p0

    move/from16 v3, p2

    invoke-direct {p0, v1, v0, v3}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final out(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    sget-boolean v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logToSystemOut:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_22
    if-eqz p3, :cond_41

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3d

    const/4 v0, 0x2

    if-eq p3, v0, :cond_39

    const/4 v0, 0x3

    if-eq p3, v0, :cond_35

    const/4 v0, 0x4

    if-eq p3, v0, :cond_31

    goto :goto_44

    :cond_31
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_35
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_39
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_3d
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_41
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method public static final v(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_11

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_b

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "tag"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXLog;

    invoke-direct {v0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getIoDispatcher$HyprMX_Mobile_Android_SDK_release()Lkotlinx/coroutines/r;
    .registers 2

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->ioDispatcher:Lkotlinx/coroutines/r;

    return-object v0
.end method

.method public final getLoggedMessages$HyprMX_Mobile_Android_SDK_release()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logMessage.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    return-void
.end method

.method public final isLoggingEnabled$HyprMX_Mobile_Android_SDK_release()Z
    .registers 2

    sget-boolean v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingOverrideFromServerEnabled:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->isLoggingToLogcatEnabled:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public final logToSystemOut$HyprMX_Mobile_Android_SDK_release(Z)V
    .registers 2

    sput-boolean p1, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logToSystemOut:Z

    return-void
.end method

.method public final longDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->longDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_2c
    invoke-static {p1, p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method public final declared-synchronized resetLoggedMessages()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->logMessage:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setAllLoggingEnabled$HyprMX_Mobile_Android_SDK_release(Landroid/content/Context;ZLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->ioDispatcher:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/hyprmx/android/sdk/utility/HyprMXLog$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog$a;-><init>(Landroid/content/Context;ZLkotlin/coroutines/d;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setIoDispatcher$HyprMX_Mobile_Android_SDK_release(Lkotlinx/coroutines/r;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->ioDispatcher:Lkotlinx/coroutines/r;

    return-void
.end method

.method public final setup$HyprMX_Mobile_Android_SDK_release(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->ioDispatcher:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/hyprmx/android/sdk/utility/HyprMXLog$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog$b;-><init>(Landroid/content/Context;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->captureLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->out(Ljava/lang/String;I)V

    return-void
.end method
