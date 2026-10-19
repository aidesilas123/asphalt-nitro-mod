###### Class io.didomi.drawable.C1733c6 (io.didomi.sdk.c6)
.class public final Lio/didomi/sdk/c6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J!\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010 J\u001b\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001cH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010 J\u0015\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001b\u0010!J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u0017\u0010!J!\u0010\u001b\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\'J)\u0010\u001b\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0000\u00a2\u0006\u0004\u0008\u001b\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010+R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u001b\u0010;\u001a\u00020&8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008\u001b\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006@"
    }
    d2 = {
        "Lio/didomi/sdk/c6;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/Z2;",
        "httpRequestHelper",
        "Lio/didomi/sdk/P3;",
        "organizationUserRepository",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/Z2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "Lio/didomi/sdk/events/SyncReadyEvent;",
        "syncReadyEvent",
        "",
        "b",
        "(Lio/didomi/sdk/events/SyncReadyEvent;)V",
        "()V",
        "event",
        "a",
        "Lio/didomi/sdk/b6;",
        "params",
        "Lio/didomi/sdk/y;",
        "Lio/didomi/sdk/user/sync/model/SyncResponse;",
        "(Lio/didomi/sdk/b6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lio/didomi/sdk/b6;)V",
        "",
        "frequency",
        "Ljava/util/Date;",
        "lastSyncDate",
        "",
        "(ILjava/util/Date;)Z",
        "enabled",
        "(ZILjava/util/Date;)Z",
        "Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/V;",
        "c",
        "Lio/didomi/sdk/apiEvents/b;",
        "d",
        "Lio/didomi/sdk/M2;",
        "e",
        "Lio/didomi/sdk/Z2;",
        "f",
        "Lio/didomi/sdk/P3;",
        "g",
        "Lio/didomi/sdk/P8;",
        "h",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "i",
        "Lkotlin/Lazy;",
        "()Z",
        "isEnabled",
        "Lcom/google/gson/Gson;",
        "j",
        "Lcom/google/gson/Gson;",
        "gson",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/H;

.field private final b:Lio/didomi/sdk/V;

.field private final c:Lio/didomi/sdk/apiEvents/b;

.field private final d:Lio/didomi/sdk/M2;

.field private final e:Lio/didomi/sdk/Z2;

.field private final f:Lio/didomi/sdk/P3;

.field private final g:Lio/didomi/sdk/P8;

.field private final h:Lkotlinx/coroutines/r;

.field private final i:Lkotlin/i;

.field private final j:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/Z2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/r;)V
    .registers 10

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiEventsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRequestHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "organizationUserRepository"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/c6;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/c6;->b:Lio/didomi/sdk/V;

    iput-object p3, p0, Lio/didomi/sdk/c6;->c:Lio/didomi/sdk/apiEvents/b;

    iput-object p4, p0, Lio/didomi/sdk/c6;->d:Lio/didomi/sdk/M2;

    iput-object p5, p0, Lio/didomi/sdk/c6;->e:Lio/didomi/sdk/Z2;

    iput-object p6, p0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    iput-object p7, p0, Lio/didomi/sdk/c6;->g:Lio/didomi/sdk/P8;

    iput-object p8, p0, Lio/didomi/sdk/c6;->h:Lkotlinx/coroutines/r;

    new-instance p1, Lio/didomi/sdk/c6$h;

    invoke-direct {p1, p0}, Lio/didomi/sdk/c6$h;-><init>(Lio/didomi/sdk/c6;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/c6;->i:Lkotlin/i;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/c6;->j:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/c6;)Lio/didomi/sdk/apiEvents/b;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/c6;->c:Lio/didomi/sdk/apiEvents/b;

    return-object p0
.end method

.method public static final synthetic a(Lio/didomi/sdk/c6;Lio/didomi/sdk/events/SyncReadyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/c6;->a(Lio/didomi/sdk/events/SyncReadyEvent;)V

    return-void
.end method

.method private final a(Lio/didomi/sdk/events/SyncReadyEvent;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/c6;->d:Lio/didomi/sdk/M2;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public static final synthetic b(Lio/didomi/sdk/c6;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/c6;->a:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final b()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/c6;->d:Lio/didomi/sdk/M2;

    new-instance v1, Lio/didomi/sdk/events/SyncDoneEvent;

    iget-object v2, p0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-direct {v1, v2}, Lio/didomi/sdk/events/SyncDoneEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method private final b(Lio/didomi/sdk/events/SyncReadyEvent;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/c6;->b:Lio/didomi/sdk/V;

    new-instance v1, Lio/didomi/sdk/c6$j;

    invoke-direct {v1, p0, p1}, Lio/didomi/sdk/c6$j;-><init>(Lio/didomi/sdk/c6;Lio/didomi/sdk/events/SyncReadyEvent;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/V;->a(Lkotlin/jvm/b/a;)V

    iget-object p1, p0, Lio/didomi/sdk/c6;->b:Lio/didomi/sdk/V;

    sget-object v0, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v0}, Lio/didomi/sdk/v0;->a()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v1}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {p1, v0, v1}, Lio/didomi/sdk/V;->a(Ljava/util/Date;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/c6;->b:Lio/didomi/sdk/V;

    invoke-virtual {p1}, Lio/didomi/sdk/V;->n()V

    return-void
.end method

.method public static final synthetic c(Lio/didomi/sdk/c6;)Lcom/google/gson/Gson;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/c6;->j:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic d(Lio/didomi/sdk/c6;)V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/c6;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/b6;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/didomi/sdk/c6$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/didomi/sdk/c6$b;

    iget v1, v0, Lio/didomi/sdk/c6$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/didomi/sdk/c6$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/didomi/sdk/c6$b;

    invoke-direct {v0, p0, p2}, Lio/didomi/sdk/c6$b;-><init>(Lio/didomi/sdk/c6;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lio/didomi/sdk/c6$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/didomi/sdk/c6$b;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_36

    if-ne v2, v4, :cond_2e

    iget-object p1, v0, Lio/didomi/sdk/c6$b;->a:Ljava/lang/Object;

    check-cast p1, Lio/didomi/sdk/c6;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_76

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/didomi/sdk/b6;->d()Lio/didomi/sdk/config/app/SyncConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lio/didomi/sdk/config/app/SyncConfiguration;->getEnabled()Z

    move-result p2

    invoke-virtual {p1}, Lio/didomi/sdk/b6;->d()Lio/didomi/sdk/config/app/SyncConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/config/app/SyncConfiguration;->getFrequency()I

    move-result v2

    invoke-virtual {p1}, Lio/didomi/sdk/b6;->i()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, p2, v2, v5}, Lio/didomi/sdk/c6;->a(ZILjava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_63

    new-instance p1, Lio/didomi/sdk/events/SyncReadyEvent;

    sget-object p2, Lio/didomi/sdk/c6$c;->a:Lio/didomi/sdk/c6$c;

    invoke-direct {p1, v3, p2}, Lio/didomi/sdk/events/SyncReadyEvent;-><init>(ZLkotlin/jvm/b/a;)V

    invoke-direct {p0}, Lio/didomi/sdk/c6;->b()V

    invoke-direct {p0, p1}, Lio/didomi/sdk/c6;->a(Lio/didomi/sdk/events/SyncReadyEvent;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_63
    sget-object p2, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v2, "Syncing user status from server"

    invoke-virtual {p2, v2}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    iput-object p0, v0, Lio/didomi/sdk/c6$b;->a:Ljava/lang/Object;

    iput v4, v0, Lio/didomi/sdk/c6$b;->d:I

    invoke-virtual {p0, p1, v0}, Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_75

    return-object v1

    :cond_75
    move-object p1, p0

    :goto_76
    check-cast p2, Lio/didomi/sdk/y;

    invoke-virtual {p2}, Lio/didomi/sdk/y;->c()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p2}, Lio/didomi/sdk/y;->a()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lio/didomi/sdk/d6;

    if-eqz v0, :cond_9a

    sget-object p2, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v0, "User status is unknown from server (new user). Doing nothing."

    invoke-virtual {p2, v0}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    new-instance p2, Lio/didomi/sdk/events/SyncReadyEvent;

    sget-object v0, Lio/didomi/sdk/c6$d;->a:Lio/didomi/sdk/c6$d;

    invoke-direct {p2, v3, v0}, Lio/didomi/sdk/events/SyncReadyEvent;-><init>(ZLkotlin/jvm/b/a;)V

    invoke-direct {p1, p2}, Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/events/SyncReadyEvent;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_9a
    sget-object v0, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v1, "Failing syncing user status (invalid response). Doing nothing."

    invoke-virtual {v0, v1}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lio/didomi/sdk/c6;->d:Lio/didomi/sdk/M2;

    new-instance v0, Lio/didomi/sdk/events/SyncErrorEvent;

    invoke-virtual {p2}, Lio/didomi/sdk/y;->a()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lio/didomi/sdk/events/SyncErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_b6
    invoke-virtual {p2}, Lio/didomi/sdk/y;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/user/sync/model/SyncResponse;

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/SyncResponse;->getSynced()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    sget-object p2, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v0, "User status is already up to date from server. Doing nothing."

    invoke-virtual {p2, v0}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    new-instance p2, Lio/didomi/sdk/events/SyncReadyEvent;

    sget-object v0, Lio/didomi/sdk/c6$e;->a:Lio/didomi/sdk/c6$e;

    invoke-direct {p2, v3, v0}, Lio/didomi/sdk/events/SyncReadyEvent;-><init>(ZLkotlin/jvm/b/a;)V

    invoke-direct {p1, p2}, Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/events/SyncReadyEvent;)V

    goto :goto_149

    :cond_dc
    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/SyncResponse;->getUser()Lio/didomi/sdk/user/sync/model/ResponseUser;

    move-result-object v1

    if-eqz v1, :cond_ed

    invoke-virtual {v1}, Lio/didomi/sdk/user/sync/model/ResponseUser;->getToken()Lio/didomi/sdk/user/sync/model/ResponseToken;

    move-result-object v1

    if-eqz v1, :cond_ed

    invoke-virtual {v1}, Lio/didomi/sdk/user/sync/model/ResponseToken;->getConsents()Lio/didomi/sdk/user/sync/model/ResponseConsents;

    move-result-object v1

    goto :goto_ee

    :cond_ed
    const/4 v1, 0x0

    :goto_ee
    if-eqz v1, :cond_122

    iget-object p2, p1, Lio/didomi/sdk/c6;->b:Lio/didomi/sdk/V;

    sget-object v1, Lio/didomi/sdk/O8;->k:Lio/didomi/sdk/O8$a;

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/SyncResponse;->getUser()Lio/didomi/sdk/user/sync/model/ResponseUser;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/ResponseUser;->getToken()Lio/didomi/sdk/user/sync/model/ResponseToken;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/user/sync/model/ResponseToken;->getConsents()Lio/didomi/sdk/user/sync/model/ResponseConsents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/didomi/sdk/O8$a;->a(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Lio/didomi/sdk/O8;

    move-result-object v0

    iget-object v1, p1, Lio/didomi/sdk/c6;->c:Lio/didomi/sdk/apiEvents/b;

    iget-object v2, p1, Lio/didomi/sdk/c6;->d:Lio/didomi/sdk/M2;

    iget-object v3, p1, Lio/didomi/sdk/c6;->g:Lio/didomi/sdk/P8;

    invoke-virtual {p2, v0, v1, v2, v3}, Lio/didomi/sdk/V;->a(Lio/didomi/sdk/O8;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    sget-object p2, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v0, "Local user status was updated."

    invoke-virtual {p2, v0}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    new-instance p2, Lio/didomi/sdk/events/SyncReadyEvent;

    new-instance v0, Lio/didomi/sdk/c6$f;

    invoke-direct {v0, p1}, Lio/didomi/sdk/c6$f;-><init>(Lio/didomi/sdk/c6;)V

    invoke-direct {p2, v4, v0}, Lio/didomi/sdk/events/SyncReadyEvent;-><init>(ZLkotlin/jvm/b/a;)V

    invoke-direct {p1, p2}, Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/events/SyncReadyEvent;)V

    goto :goto_149

    :cond_122
    sget-object v0, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error syncing user status ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "). Doing nothing."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lio/didomi/sdk/c6;->d:Lio/didomi/sdk/M2;

    new-instance p2, Lio/didomi/sdk/events/SyncErrorEvent;

    const-string v0, "Response invalid"

    invoke-direct {p2, v0}, Lio/didomi/sdk/events/SyncErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    :goto_149
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Lio/didomi/sdk/b6;)V
    .registers 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/c6$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/didomi/sdk/c6$a;-><init>(Lio/didomi/sdk/c6;Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/c6;->i:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/util/Date;)Z
    .registers 4

    if-nez p2, :cond_3

    goto :goto_b

    :cond_3
    sget-object v0, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual {v0, p2}, Lio/didomi/sdk/v0;->b(Ljava/util/Date;)I

    move-result p2

    if-lt p2, p1, :cond_d

    :goto_b
    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public final a(ZILjava/util/Date;)Z
    .registers 4

    if-eqz p1, :cond_21

    iget-object p1, p0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {p1}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_21

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_21

    :cond_19
    invoke-virtual {p0, p2, p3}, Lio/didomi/sdk/c6;->a(ILjava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method

.method public final b(Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/b6;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/y<",
            "Lio/didomi/sdk/user/sync/model/SyncResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lkotlin/coroutines/f;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/a;->intercepted(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/f;-><init>(Lkotlin/coroutines/d;)V

    new-instance v14, Lio/didomi/sdk/user/sync/model/RequestToken;

    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->g()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    if-nez v3, :cond_1d

    move-object v4, v10

    goto :goto_1e

    :cond_1d
    move-object v4, v3

    :goto_1e
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->p()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    move-object v5, v10

    goto :goto_2b

    :cond_2a
    move-object v5, v2

    :goto_2b
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->e()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->j()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->f()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->k()Lio/didomi/sdk/consent/model/ConsentChoices;

    move-result-object v9

    move-object v3, v14

    invoke-direct/range {v3 .. v9}, Lio/didomi/sdk/user/sync/model/RequestToken;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;Lio/didomi/sdk/consent/model/ConsentChoices;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->q()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    invoke-interface {v2}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    :cond_51
    move-object v2, v3

    :goto_52
    if-nez v2, :cond_56

    move-object v5, v10

    goto :goto_57

    :cond_56
    move-object v5, v2

    :goto_57
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    instance-of v6, v2, Lio/didomi/sdk/user/UserAuthParams;

    if-eqz v6, :cond_64

    check-cast v2, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_65

    :cond_64
    move-object v2, v3

    :goto_65
    if-eqz v2, :cond_6d

    invoke-interface {v2}, Lio/didomi/sdk/user/UserAuthParams;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_6e

    :cond_6d
    move-object v6, v3

    :goto_6e
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    instance-of v7, v2, Lio/didomi/sdk/user/UserAuthParams;

    if-eqz v7, :cond_7b

    check-cast v2, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_7c

    :cond_7b
    move-object v2, v3

    :goto_7c
    if-eqz v2, :cond_84

    invoke-interface {v2}, Lio/didomi/sdk/user/UserAuthParams;->getSecretId()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_85

    :cond_84
    move-object v7, v3

    :goto_85
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    instance-of v8, v2, Lio/didomi/sdk/user/UserAuthParams;

    if-eqz v8, :cond_92

    check-cast v2, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_93

    :cond_92
    move-object v2, v3

    :goto_93
    if-eqz v2, :cond_9b

    invoke-interface {v2}, Lio/didomi/sdk/user/UserAuthParams;->getExpiration()Ljava/lang/Long;

    move-result-object v2

    move-object v10, v2

    goto :goto_9c

    :cond_9b
    move-object v10, v3

    :goto_9c
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    instance-of v8, v2, Lio/didomi/sdk/user/UserAuthWithHashParams;

    if-eqz v8, :cond_a9

    check-cast v2, Lio/didomi/sdk/user/UserAuthWithHashParams;

    goto :goto_aa

    :cond_a9
    move-object v2, v3

    :goto_aa
    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Lio/didomi/sdk/user/UserAuthWithHashParams;->getSalt()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_b3

    :cond_b2
    move-object v8, v3

    :goto_b3
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    instance-of v9, v2, Lio/didomi/sdk/user/UserAuthWithHashParams;

    if-eqz v9, :cond_c0

    check-cast v2, Lio/didomi/sdk/user/UserAuthWithHashParams;

    goto :goto_c1

    :cond_c0
    move-object v2, v3

    :goto_c1
    if-eqz v2, :cond_c9

    invoke-virtual {v2}, Lio/didomi/sdk/user/UserAuthWithHashParams;->getDigest()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_ca

    :cond_c9
    move-object v9, v3

    :goto_ca
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->c()Lio/didomi/sdk/user/UserAuth;

    move-result-object v2

    instance-of v11, v2, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;

    if-eqz v11, :cond_d7

    check-cast v2, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;

    goto :goto_d8

    :cond_d7
    move-object v2, v3

    :goto_d8
    if-eqz v2, :cond_e0

    invoke-virtual {v2}, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;->getInitializationVector()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_e1

    :cond_e0
    move-object v11, v3

    :goto_e1
    iget-object v2, v0, Lio/didomi/sdk/c6;->f:Lio/didomi/sdk/P3;

    invoke-virtual {v2}, Lio/didomi/sdk/P3;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_184

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v2, v13}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_185

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/didomi/sdk/user/UserAuth;

    invoke-interface {v13}, Lio/didomi/sdk/user/UserAuth;->getId()Ljava/lang/String;

    move-result-object v16

    instance-of v15, v13, Lio/didomi/sdk/user/UserAuthParams;

    if-eqz v15, :cond_111

    move-object/from16 v17, v13

    check-cast v17, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_113

    :cond_111
    move-object/from16 v17, v3

    :goto_113
    if-eqz v17, :cond_11a

    invoke-interface/range {v17 .. v17}, Lio/didomi/sdk/user/UserAuthParams;->getAlgorithm()Ljava/lang/String;

    move-result-object v17

    goto :goto_11c

    :cond_11a
    move-object/from16 v17, v3

    :goto_11c
    if-eqz v15, :cond_123

    move-object/from16 v18, v13

    check-cast v18, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_125

    :cond_123
    move-object/from16 v18, v3

    :goto_125
    if-eqz v18, :cond_12c

    invoke-interface/range {v18 .. v18}, Lio/didomi/sdk/user/UserAuthParams;->getSecretId()Ljava/lang/String;

    move-result-object v18

    goto :goto_12e

    :cond_12c
    move-object/from16 v18, v3

    :goto_12e
    if-eqz v15, :cond_134

    move-object v15, v13

    check-cast v15, Lio/didomi/sdk/user/UserAuthParams;

    goto :goto_135

    :cond_134
    move-object v15, v3

    :goto_135
    if-eqz v15, :cond_13e

    invoke-interface {v15}, Lio/didomi/sdk/user/UserAuthParams;->getExpiration()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v21, v15

    goto :goto_140

    :cond_13e
    move-object/from16 v21, v3

    :goto_140
    instance-of v15, v13, Lio/didomi/sdk/user/UserAuthWithHashParams;

    if-eqz v15, :cond_149

    move-object/from16 v19, v13

    check-cast v19, Lio/didomi/sdk/user/UserAuthWithHashParams;

    goto :goto_14b

    :cond_149
    move-object/from16 v19, v3

    :goto_14b
    if-eqz v19, :cond_152

    invoke-virtual/range {v19 .. v19}, Lio/didomi/sdk/user/UserAuthWithHashParams;->getSalt()Ljava/lang/String;

    move-result-object v19

    goto :goto_154

    :cond_152
    move-object/from16 v19, v3

    :goto_154
    if-eqz v15, :cond_15a

    move-object v15, v13

    check-cast v15, Lio/didomi/sdk/user/UserAuthWithHashParams;

    goto :goto_15b

    :cond_15a
    move-object v15, v3

    :goto_15b
    if-eqz v15, :cond_164

    invoke-virtual {v15}, Lio/didomi/sdk/user/UserAuthWithHashParams;->getDigest()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    goto :goto_166

    :cond_164
    move-object/from16 v20, v3

    :goto_166
    instance-of v15, v13, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;

    if-eqz v15, :cond_16d

    check-cast v13, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;

    goto :goto_16e

    :cond_16d
    move-object v13, v3

    :goto_16e
    if-eqz v13, :cond_177

    invoke-virtual {v13}, Lio/didomi/sdk/user/UserAuthWithEncryptionParams;->getInitializationVector()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v22, v13

    goto :goto_179

    :cond_177
    move-object/from16 v22, v3

    :goto_179
    new-instance v13, Lio/didomi/sdk/user/sync/model/RequestSynchronizedUser;

    move-object v15, v13

    invoke-direct/range {v15 .. v22}, Lio/didomi/sdk/user/sync/model/RequestSynchronizedUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :cond_184
    move-object v12, v3

    :cond_185
    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->n()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->o()Ljava/lang/Integer;

    move-result-object v16

    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->i()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/didomi/sdk/v0;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    iget-object v2, v0, Lio/didomi/sdk/c6;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Regulation;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/h0;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    new-instance v2, Lio/didomi/sdk/user/sync/model/RequestUser;

    move-object v3, v2

    invoke-direct/range {v3 .. v18}, Lio/didomi/sdk/user/sync/model/RequestUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lio/didomi/sdk/user/sync/model/RequestToken;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Set;)V

    new-instance v3, Lio/didomi/sdk/user/sync/model/RequestSource;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->m()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lio/didomi/sdk/user/sync/model/RequestSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lio/didomi/sdk/c6;->j:Lcom/google/gson/Gson;

    new-instance v5, Lio/didomi/sdk/user/sync/model/SyncRequest;

    invoke-direct {v5, v3, v2}, Lio/didomi/sdk/user/sync/model/SyncRequest;-><init>(Lio/didomi/sdk/user/sync/model/RequestSource;Lio/didomi/sdk/user/sync/model/RequestUser;)V

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/didomi/sdk/c6$g;

    invoke-direct {v3, v0, v1, v2}, Lio/didomi/sdk/c6$g;-><init>(Lio/didomi/sdk/c6;Lkotlin/coroutines/d;Ljava/lang/String;)V

    iget-object v4, v0, Lio/didomi/sdk/c6;->e:Lio/didomi/sdk/Z2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "requestBody"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/b6;->d()Lio/didomi/sdk/config/app/SyncConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/config/app/SyncConfiguration;->getTimeout()I

    move-result v6

    invoke-virtual {v4, v5, v2, v3, v6}, Lio/didomi/sdk/Z2;->a(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/b3;I)V

    invoke-virtual {v1}, Lkotlin/coroutines/f;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_208

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/d;)V

    :cond_208
    return-object v1
.end method

.method public final b(Lio/didomi/sdk/b6;)V
    .registers 9

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/c6;->h:Lkotlinx/coroutines/r;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v1

    new-instance v4, Lio/didomi/sdk/c6$i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/didomi/sdk/c6$i;-><init>(Lio/didomi/sdk/c6;Lio/didomi/sdk/b6;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
