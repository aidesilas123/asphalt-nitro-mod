###### Class io.didomi.drawable.C1822l5 (io.didomi.sdk.l5)
.class public Lio/didomi/sdk/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/K;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/l5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 F2\u00020\u0001:\u0001\u000fB)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J1\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0014H\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u0016J)\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0011H\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u000f\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000eH\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u001bJ\'\u0010\u000f\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0012\u00a2\u0006\u0004\u0008\u000f\u0010\u001dJ\'\u0010\u0018\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u001dJ\'\u0010\u0018\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u001eJ\u001f\u0010\u0018\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000eH\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u001bJ\'\u0010\u000f\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0014H\u0012\u00a2\u0006\u0004\u0008\u000f\u0010 J\u000f\u0010\u000f\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010!J!\u0010\u000f\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0010\u00a2\u0006\u0004\u0008\u000f\u0010#J\u000f\u0010$\u001a\u00020\u0011H\u0010\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\'\u001a\u00020&H\u0010\u00a2\u0006\u0004\u0008\'\u0010(J\'\u0010\u000f\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000eH\u0010\u00a2\u0006\u0004\u0008\u000f\u0010*J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0010J!\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010+J!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010-\u001a\u00020,2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010.J!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010/J\u001f\u0010\'\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\'\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u00101R\u0014\u0010\u0007\u001a\u00020\u00068\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u00102R\u0014\u0010\t\u001a\u00020\u00088\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u00103R\u001b\u00107\u001a\u0002048PX\u0090\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u00105\u001a\u0004\u0008\u0018\u00106R\u001c\u0010<\u001a\n 9*\u0004\u0018\u000108088\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u001c\u0010-\u001a\n 9*\u0004\u0018\u00010,0,8\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001c\u0010A\u001a\n 9*\u0004\u0018\u00010\u000e0\u000e8\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010E\u001a\u00020B8\u0012X\u0092\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010D\u00a8\u0006G"
    }
    d2 = {
        "Lio/didomi/sdk/l5;",
        "Lio/didomi/sdk/K;",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/J;",
        "connectivityHelper",
        "Lio/didomi/sdk/Z2;",
        "httpRequestHelper",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "Lio/didomi/sdk/k5;",
        "remoteFile",
        "",
        "a",
        "(Lio/didomi/sdk/k5;)Ljava/lang/String;",
        "",
        "cacheDate",
        "startTime",
        "",
        "retryOnFailure",
        "(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;",
        "(Lio/didomi/sdk/k5;JJ)Ljava/lang/String;",
        "b",
        "(Lio/didomi/sdk/k5;J)J",
        "cacheFilePath",
        "(Lio/didomi/sdk/k5;Ljava/lang/String;)Z",
        "",
        "(Ljava/lang/String;Lio/didomi/sdk/k5;J)V",
        "(Lio/didomi/sdk/k5;JJ)V",
        "afterError",
        "(Lio/didomi/sdk/k5;JZ)Z",
        "()V",
        "Ljava/io/File;",
        "(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/io/File;",
        "d",
        "()J",
        "",
        "c",
        "()I",
        "content",
        "(Ljava/lang/String;Lio/didomi/sdk/k5;Ljava/lang/String;)V",
        "(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/lang/String;",
        "Landroid/content/res/AssetManager;",
        "assetManager",
        "(Landroid/content/res/AssetManager;Lio/didomi/sdk/k5;)Ljava/lang/String;",
        "(Lio/didomi/sdk/k5;J)Ljava/lang/String;",
        "(Ljava/lang/String;Lio/didomi/sdk/k5;)V",
        "Lio/didomi/sdk/J;",
        "Lio/didomi/sdk/Z2;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lio/didomi/sdk/Didomi;",
        "Lkotlin/Lazy;",
        "()Lio/didomi/sdk/Didomi;",
        "didomi",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "e",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "f",
        "Landroid/content/res/AssetManager;",
        "g",
        "Ljava/lang/String;",
        "cacheFilesPath",
        "Ljava/lang/Object;",
        "h",
        "Ljava/lang/Object;",
        "connectivityBlocker",
        "i",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final i:Lio/didomi/sdk/l5$a;


# instance fields
.field private final a:Lio/didomi/sdk/J;

.field private final b:Lio/didomi/sdk/Z2;

.field private final c:Lkotlinx/coroutines/r;

.field private final d:Lkotlin/i;

.field private final e:Landroid/content/SharedPreferences;

.field private final f:Landroid/content/res/AssetManager;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/l5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/l5$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/l5;->i:Lio/didomi/sdk/l5$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRequestHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/didomi/sdk/l5;->a:Lio/didomi/sdk/J;

    iput-object p3, p0, Lio/didomi/sdk/l5;->b:Lio/didomi/sdk/Z2;

    iput-object p4, p0, Lio/didomi/sdk/l5;->c:Lkotlinx/coroutines/r;

    sget-object p2, Lio/didomi/sdk/l5$b;->a:Lio/didomi/sdk/l5$b;

    invoke-static {p2}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/l5;->d:Lkotlin/i;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/l5;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    iput-object p2, p0, Lio/didomi/sdk/l5;->f:Landroid/content/res/AssetManager;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/l5;->g:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/l5;->h:Ljava/lang/Object;

    return-void
.end method

.method private a(Lio/didomi/sdk/k5;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/l5;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/didomi/sdk/k5;JJ)Ljava/lang/String;
    .registers 19

    move-object v8, p0

    move-object v9, p1

    move-wide/from16 v5, p4

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->g()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->i()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_19

    cmp-long v0, v1, v3

    if-lez v0, :cond_19

    invoke-direct {p0, p1, v5, v6}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;J)J

    move-result-wide v10

    goto :goto_1a

    :cond_19
    move-wide v10, v3

    :goto_1a
    cmp-long v0, v10, v3

    if-ltz v0, :cond_4c

    iget-object v3, v8, Lio/didomi/sdk/l5;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_21
    iget-object v4, v8, Lio/didomi/sdk/l5;->a:Lio/didomi/sdk/J;

    invoke-virtual {v4}, Lio/didomi/sdk/J;->c()Z

    move-result v4
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_49

    if-nez v4, :cond_45

    :try_start_29
    iget-object v4, v8, Lio/didomi/sdk/l5;->a:Lio/didomi/sdk/J;

    invoke-virtual {v4, p0}, Lio/didomi/sdk/J;->a(Lio/didomi/sdk/K;)Z

    if-lez v0, :cond_36

    iget-object v0, v8, Lio/didomi/sdk/l5;->h:Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_45

    :cond_36
    iget-object v0, v8, Lio/didomi/sdk/l5;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_3b} :catch_3c
    .catchall {:try_start_29 .. :try_end_3b} :catchall_49

    goto :goto_45

    :catch_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v8, Lio/didomi/sdk/l5;->a:Lio/didomi/sdk/J;

    invoke-virtual {v0, p0}, Lio/didomi/sdk/J;->b(Lio/didomi/sdk/K;)Z

    :cond_45
    :goto_45
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_49

    monitor-exit v3

    goto :goto_4c

    :catchall_49
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4c
    :goto_4c
    invoke-direct {p0, p1}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v5, v6, v3}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JZ)Z

    move-result v4

    const/4 v10, 0x0

    if-eqz v4, :cond_8c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection retrieved, trying to update cache after "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v4, v10, v7, v10}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    cmp-long v4, v1, v11

    if-lez v4, :cond_83

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_84

    :cond_83
    const/4 v7, 0x0

    :goto_84
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;

    :cond_8c
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9e

    invoke-static {v1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    goto :goto_9e

    :cond_99
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->e()Ljava/lang/String;

    move-result-object v10

    goto :goto_a8

    :cond_9e
    :goto_9e
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->i()Z

    move-result v1

    if-nez v1, :cond_a8

    move-wide v1, p2

    invoke-direct {p0, v0, p1, v1, v2}, Lio/didomi/sdk/l5;->b(Ljava/lang/String;Lio/didomi/sdk/k5;J)V

    :cond_a8
    :goto_a8
    return-object v10
.end method

.method private a(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;
    .registers 22

    move-object v8, p0

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/k5;->f()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7f

    invoke-static {v9}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_7f

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_19

    move-wide/from16 v6, p4

    goto :goto_1e

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v6, v2

    :goto_1e
    iget-object v2, v8, Lio/didomi/sdk/l5;->a:Lio/didomi/sdk/J;

    invoke-virtual {v2}, Lio/didomi/sdk/J;->c()Z

    move-result v2

    if-nez v2, :cond_33

    if-eqz p6, :cond_32

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JJ)Ljava/lang/String;

    move-result-object v10

    :cond_32
    return-object v10

    :cond_33
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/k5;->i()Z

    move-result v2

    const/16 v3, 0x7530

    if-nez v2, :cond_51

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/k5;->g()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_44

    goto :goto_51

    :cond_44
    move-object/from16 v11, p1

    invoke-direct {p0, v11, v6, v7}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v12, v0

    goto :goto_55

    :cond_51
    :goto_51
    move-object/from16 v11, p1

    const/16 v12, 0x7530

    :goto_55
    if-gez v12, :cond_58

    return-object v10

    :cond_58
    iget-object v13, v8, Lio/didomi/sdk/l5;->b:Lio/didomi/sdk/Z2;

    new-instance v14, Lio/didomi/sdk/l5$c;

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object v3, p0

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v7}, Lio/didomi/sdk/l5$c;-><init>(Lio/didomi/sdk/k5;ZLio/didomi/sdk/l5;JJ)V

    move-object v0, v13

    move-object v1, v9

    move-object v2, v14

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lio/didomi/sdk/Z2;->a(Ljava/lang/String;Lio/didomi/sdk/b3;IJ)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/k5;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    goto :goto_7f

    :cond_7b
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/k5;->e()Ljava/lang/String;

    move-result-object v10

    :cond_7f
    :goto_7f
    return-object v10
.end method

.method public static final synthetic a(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;JJ)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;Ljava/lang/String;J)V
    .registers 14

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$remoteFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cacheFilePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/l5;->c:Lkotlinx/coroutines/r;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v1

    new-instance v0, Lio/didomi/sdk/l5$d;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lio/didomi/sdk/l5$d;-><init>(Lio/didomi/sdk/k5;Lio/didomi/sdk/l5;Ljava/lang/String;JLkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/l5;Ljava/lang/String;Lio/didomi/sdk/k5;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lio/didomi/sdk/l5;->a(Ljava/lang/String;Lio/didomi/sdk/k5;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/didomi/sdk/k5;J)V
    .registers 5

    invoke-virtual {p0, p2, p3, p4}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;J)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_11

    invoke-static {p3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lio/didomi/sdk/l5;->a(Ljava/lang/String;Lio/didomi/sdk/k5;Ljava/lang/String;)V

    return-void

    :cond_11
    :goto_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No remote content to update for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lio/didomi/sdk/k5;JZ)Z
    .registers 7

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lio/didomi/sdk/l5;->d()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->i()Z

    move-result p4

    if-nez p4, :cond_1a

    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    :goto_1b
    return p1
.end method

.method private a(Lio/didomi/sdk/k5;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p2, p1}, Lio/didomi/sdk/l5;->a(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private b(Lio/didomi/sdk/k5;J)J
    .registers 8

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->g()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private b(Lio/didomi/sdk/k5;JJ)V
    .registers 19

    move-object v8, p0

    move-object v9, p1

    move-wide/from16 v10, p4

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lio/didomi/sdk/l5;->c()I

    move-result v0

    if-ge v12, v0, :cond_53

    const/4 v0, 0x1

    invoke-direct {p0, p1, v10, v11, v0}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JZ)Z

    move-result v0

    if-eqz v0, :cond_53

    :try_start_19
    invoke-virtual {p0}, Lio/didomi/sdk/l5;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    const-string v1, "Error while waiting to update cache"

    invoke-static {v1, v0}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying to update cache after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_53
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    :cond_5f
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->i()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-direct {p0, p1}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    move-wide v1, p2

    invoke-direct {p0, v0, p1, v1, v2}, Lio/didomi/sdk/l5;->b(Ljava/lang/String;Lio/didomi/sdk/k5;J)V

    :cond_6d
    return-void
.end method

.method private b(Ljava/lang/String;Lio/didomi/sdk/k5;J)V
    .registers 13

    :try_start_0
    invoke-virtual {p0}, Lio/didomi/sdk/l5;->b()Lio/didomi/sdk/Didomi;

    move-result-object v0

    new-instance v7, Lio/didomi/sdk/we;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/we;-><init>(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Lio/didomi/sdk/Didomi;->onReady(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_2b

    :catch_12
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error while requesting cache refresh: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2b
    return-void
.end method

.method private b(Lio/didomi/sdk/k5;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-virtual {p1}, Lio/didomi/sdk/k5;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1b

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1b
    :goto_1b
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;Ljava/lang/String;)Z

    move-result p1

    :goto_1f
    return p1
.end method

.method public static synthetic e(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/io/File;
    .registers 4

    const-string v0, "cacheFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->j()Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    return-object p2
.end method

.method public a(Landroid/content/res/AssetManager;Lio/didomi/sdk/k5;)Ljava/lang/String;
    .registers 6

    const-string v0, "assetManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4e

    invoke-static {p2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_4e

    :cond_18
    :try_start_18
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "assetManager.open(fallbackFilePath)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_38

    :try_start_28
    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_31

    :try_start_2c
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_38

    move-object v0, p1

    goto :goto_4d

    :catchall_31
    move-exception p1

    :try_start_32
    throw p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v1

    :try_start_34
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38

    :catch_38
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read the content of the file assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4d
    return-object v0

    :cond_4e
    :goto_4e
    const/4 p1, 0x2

    const-string p2, "No fallback available"

    invoke-static {p2, v0, p1, v0}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public a(Lio/didomi/sdk/k5;J)Ljava/lang/String;
    .registers 12

    const-string v0, "remoteFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->m()Z

    move-result v7

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/l5;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lio/didomi/sdk/l5;->a:Lio/didomi/sdk/J;

    invoke-virtual {v1, p0}, Lio/didomi/sdk/J;->b(Lio/didomi/sdk/K;)Z

    iget-object v1, p0, Lio/didomi/sdk/l5;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public a(Ljava/lang/String;Lio/didomi/sdk/k5;Ljava/lang/String;)V
    .registers 6

    const-string v0, "cacheFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->j()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p3, v1, p1, v1}, Lkotlin/io/e;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/l5;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Lio/didomi/sdk/Didomi;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/l5;->d:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/Didomi;

    return-object v0
.end method

.method public b(Lio/didomi/sdk/k5;)Ljava/lang/String;
    .registers 12

    const-string v0, "remoteFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assetManager"

    if-eqz v0, :cond_40

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_40

    :cond_14
    invoke-direct {p0, p1}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/k5;->j()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0, v0, p1}, Lio/didomi/sdk/l5;->c(Ljava/lang/String;Lio/didomi/sdk/k5;)V

    goto :goto_30

    :cond_22
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    return-object v2

    :cond_30
    :goto_30
    invoke-virtual {p0, v0, p1}, Lio/didomi/sdk/l5;->b(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lio/didomi/sdk/l5;->f:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lio/didomi/sdk/l5;->a(Landroid/content/res/AssetManager;Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    return-object v0

    :cond_40
    :goto_40
    iget-object v0, p0, Lio/didomi/sdk/l5;->f:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lio/didomi/sdk/l5;->a(Landroid/content/res/AssetManager;Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/lang/String;
    .registers 4

    const-string v0, "cacheFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/l5;->a(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p2}, Lkotlin/io/e;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_16
    return-object p2
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public c(Ljava/lang/String;Lio/didomi/sdk/k5;)V
    .registers 10

    const-string v0, "cacheFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->k()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->j()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_6b

    :cond_17
    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/l5;->a(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_43

    iget-object v0, p0, Lio/didomi/sdk/l5;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const/16 v0, 0x3e8

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-virtual {p2}, Lio/didomi/sdk/k5;->b()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_5e

    return-void

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache file is not readable ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_5e
    invoke-direct {p0, p2, p1}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-direct {p0, p1, p2, v1, v2}, Lio/didomi/sdk/l5;->a(Ljava/lang/String;Lio/didomi/sdk/k5;J)V

    goto :goto_6b

    :cond_68
    invoke-direct {p0, p1, p2, v1, v2}, Lio/didomi/sdk/l5;->b(Ljava/lang/String;Lio/didomi/sdk/k5;J)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public d()J
    .registers 3

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

###### Class io.didomi.drawable.C1822l5.a (io.didomi.sdk.l5$a)
.class public final Lio/didomi/sdk/l5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/l5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lio/didomi/sdk/l5$a;",
        "",
        "<init>",
        "()V",
        "",
        "MAX_RETRIES_ON_ERROR",
        "I",
        "",
        "RETRY_DELAY_ON_ERROR_IN_MS",
        "J",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/l5$a;-><init>()V

    return-void
.end method

###### Class io.didomi.drawable.C1822l5.b (io.didomi.sdk.l5$b)
.class final Lio/didomi/sdk/l5$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/l5;-><init>(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/Didomi;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/Didomi;",
        "a",
        "()Lio/didomi/sdk/Didomi;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/l5$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/l5$b;

    invoke-direct {v0}, Lio/didomi/sdk/l5$b;-><init>()V

    sput-object v0, Lio/didomi/sdk/l5$b;->a:Lio/didomi/sdk/l5$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/Didomi;
    .registers 2

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/l5$b;->a()Lio/didomi/sdk/Didomi;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.C1822l5.c (io.didomi.sdk.l5$c)
.class public final Lio/didomi/sdk/l5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/c3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "io/didomi/sdk/l5$c",
        "Lio/didomi/sdk/c3;",
        "",
        "response",
        "",
        "a",
        "(Ljava/lang/String;)V",
        "b",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/k5;

.field final synthetic b:Z

.field final synthetic c:Lio/didomi/sdk/l5;

.field final synthetic d:J

.field final synthetic e:J


# direct methods
.method constructor <init>(Lio/didomi/sdk/k5;ZLio/didomi/sdk/l5;JJ)V
    .registers 8

    iput-object p1, p0, Lio/didomi/sdk/l5$c;->a:Lio/didomi/sdk/k5;

    iput-boolean p2, p0, Lio/didomi/sdk/l5$c;->b:Z

    iput-object p3, p0, Lio/didomi/sdk/l5$c;->c:Lio/didomi/sdk/l5;

    iput-wide p4, p0, Lio/didomi/sdk/l5$c;->d:J

    iput-wide p6, p0, Lio/didomi/sdk/l5$c;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lio/didomi/sdk/l5$c;->a:Lio/didomi/sdk/k5;

    invoke-virtual {v0}, Lio/didomi/sdk/k5;->h()Z

    move-result v0

    if-eqz v0, :cond_3b

    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_3b

    :catch_1a
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse the remote file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/l5$c;->a:Lio/didomi/sdk/k5;

    invoke-virtual {v1}, Lio/didomi/sdk/k5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as valid JSON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3b
    :goto_3b
    iget-object v0, p0, Lio/didomi/sdk/l5$c;->a:Lio/didomi/sdk/k5;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/k5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 8

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to download the remote file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/l5$c;->a:Lio/didomi/sdk/k5;

    invoke-virtual {v1}, Lio/didomi/sdk/k5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, v0}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean p1, p0, Lio/didomi/sdk/l5$c;->b:Z

    if-eqz p1, :cond_38

    iget-object v0, p0, Lio/didomi/sdk/l5$c;->c:Lio/didomi/sdk/l5;

    iget-object v1, p0, Lio/didomi/sdk/l5$c;->a:Lio/didomi/sdk/k5;

    iget-wide v2, p0, Lio/didomi/sdk/l5$c;->d:J

    iget-wide v4, p0, Lio/didomi/sdk/l5$c;->e:J

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;JJ)V

    :cond_38
    return-void
.end method

###### Class io.didomi.drawable.C1822l5.d (io.didomi.sdk.l5$d)
.class final Lio/didomi/sdk/l5$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/l5;->b(Ljava/lang/String;Lio/didomi/sdk/k5;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "io.didomi.sdk.remote.RemoteFilesHelper$requestCacheUpdateWhenReady$1$1"
    f = "RemoteFilesHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/didomi/sdk/k5;

.field final synthetic c:Lio/didomi/sdk/l5;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lio/didomi/sdk/k5;Lio/didomi/sdk/l5;Ljava/lang/String;JLkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/k5;",
            "Lio/didomi/sdk/l5;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/l5$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/l5$d;->b:Lio/didomi/sdk/k5;

    iput-object p2, p0, Lio/didomi/sdk/l5$d;->c:Lio/didomi/sdk/l5;

    iput-object p3, p0, Lio/didomi/sdk/l5$d;->d:Ljava/lang/String;

    iput-wide p4, p0, Lio/didomi/sdk/l5$d;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/l5$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/l5$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/l5$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lio/didomi/sdk/l5$d;

    iget-object v1, p0, Lio/didomi/sdk/l5$d;->b:Lio/didomi/sdk/k5;

    iget-object v2, p0, Lio/didomi/sdk/l5$d;->c:Lio/didomi/sdk/l5;

    iget-object v3, p0, Lio/didomi/sdk/l5$d;->d:Ljava/lang/String;

    iget-wide v4, p0, Lio/didomi/sdk/l5$d;->e:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/l5$d;-><init>(Lio/didomi/sdk/k5;Lio/didomi/sdk/l5;Ljava/lang/String;JLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/l5$d;->a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/didomi/sdk/l5$d;->a:I

    if-nez v0, :cond_1e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/l5$d;->b:Lio/didomi/sdk/k5;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/didomi/sdk/k5;->a(Z)V

    iget-object p1, p0, Lio/didomi/sdk/l5$d;->c:Lio/didomi/sdk/l5;

    iget-object v0, p0, Lio/didomi/sdk/l5$d;->d:Ljava/lang/String;

    iget-object v1, p0, Lio/didomi/sdk/l5$d;->b:Lio/didomi/sdk/k5;

    iget-wide v2, p0, Lio/didomi/sdk/l5$d;->e:J

    invoke-static {p1, v0, v1, v2, v3}, Lio/didomi/sdk/l5;->a(Lio/didomi/sdk/l5;Ljava/lang/String;Lio/didomi/sdk/k5;J)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.didomi.drawable.we (io.didomi.sdk.we)
.class public final synthetic Lio/didomi/sdk/we;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/l5;

.field public final synthetic b:Lio/didomi/sdk/k5;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/we;->a:Lio/didomi/sdk/l5;

    iput-object p2, p0, Lio/didomi/sdk/we;->b:Lio/didomi/sdk/k5;

    iput-object p3, p0, Lio/didomi/sdk/we;->c:Ljava/lang/String;

    iput-wide p4, p0, Lio/didomi/sdk/we;->d:J

    return-void
.end method


# virtual methods
.method public final call()V
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/we;->a:Lio/didomi/sdk/l5;

    iget-object v1, p0, Lio/didomi/sdk/we;->b:Lio/didomi/sdk/k5;

    iget-object v2, p0, Lio/didomi/sdk/we;->c:Ljava/lang/String;

    iget-wide v3, p0, Lio/didomi/sdk/we;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lio/didomi/sdk/l5;->e(Lio/didomi/sdk/l5;Lio/didomi/sdk/k5;Ljava/lang/String;J)V

    return-void
.end method
