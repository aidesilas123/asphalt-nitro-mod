###### Class com.google.common.util.concurrent.r0 (com.google.common.util.concurrent.r0)
.class public final Lcom/google/common/util/concurrent/r0;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/r0;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/util/concurrent/r0;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/common/util/concurrent/r0;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/common/util/concurrent/r0;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/google/common/util/concurrent/r0;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/r0;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/common/util/concurrent/r0;)Ljava/util/concurrent/ThreadFactory;
    .registers 10

    iget-object v2, p0, Lcom/google/common/util/concurrent/r0;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/common/util/concurrent/r0;->b:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/google/common/util/concurrent/r0;->c:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/common/util/concurrent/r0;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object p0, p0, Lcom/google/common/util/concurrent/r0;->e:Ljava/util/concurrent/ThreadFactory;

    if-eqz p0, :cond_d

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    :goto_11
    move-object v1, p0

    if-eqz v2, :cond_1c

    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    move-object v3, p0

    new-instance p0, Lcom/google/common/util/concurrent/r0$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/r0$a;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p0
.end method

.method private static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    invoke-static {p0}, Lcom/google/common/util/concurrent/r0;->c(Lcom/google/common/util/concurrent/r0;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)Lcom/google/common/util/concurrent/r0;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/r0;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/common/util/concurrent/r0;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/r0;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/util/concurrent/r0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/r0;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadFactory;

    iput-object p1, p0, Lcom/google/common/util/concurrent/r0;->e:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method
