###### Class io.didomi.drawable.C1797j0 (io.didomi.sdk.j0)
.class public final Lio/didomi/sdk/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B3\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u0011\u0010\u001fR\u001b\u0010$\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008\u0014\u0010#R\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001e\u001a\u0004\u0008\u0016\u0010\'R\u0013\u0010)\u001a\u0004\u0018\u00010\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u001f\u00a8\u0006*"
    }
    d2 = {
        "Lio/didomi/sdk/j0;",
        "",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lio/didomi/sdk/M8;",
        "userRepository",
        "Lio/didomi/sdk/h0;",
        "dcsEncoder",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "<init>",
        "(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "token",
        "",
        "a",
        "(Lio/didomi/sdk/consent/model/ConsentToken;)V",
        "Lio/didomi/sdk/H;",
        "b",
        "Landroid/content/SharedPreferences;",
        "c",
        "Lio/didomi/sdk/M8;",
        "d",
        "Lio/didomi/sdk/h0;",
        "e",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "",
        "f",
        "Lkotlin/Lazy;",
        "()Ljava/lang/String;",
        "dcsKey",
        "",
        "g",
        "()I",
        "dcsSchemaVersion",
        "",
        "h",
        "()Z",
        "enableDCS",
        "value",
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

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lio/didomi/sdk/M8;

.field private final d:Lio/didomi/sdk/h0;

.field private final e:Lkotlinx/coroutines/r;

.field private final f:Lkotlin/i;

.field private final g:Lkotlin/i;

.field private final h:Lkotlin/i;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)V
    .registers 7

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dcsEncoder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/j0;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/j0;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/didomi/sdk/j0;->c:Lio/didomi/sdk/M8;

    iput-object p4, p0, Lio/didomi/sdk/j0;->d:Lio/didomi/sdk/h0;

    iput-object p5, p0, Lio/didomi/sdk/j0;->e:Lkotlinx/coroutines/r;

    new-instance p1, Lio/didomi/sdk/j0$a;

    invoke-direct {p1, p0}, Lio/didomi/sdk/j0$a;-><init>(Lio/didomi/sdk/j0;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/j0;->f:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/j0$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/j0$b;-><init>(Lio/didomi/sdk/j0;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/j0;->g:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/j0$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/j0$c;-><init>(Lio/didomi/sdk/j0;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/j0;->h:Lkotlin/i;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/j0;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/j0;->a:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j0;->f:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final b()I
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j0;->g:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lio/didomi/sdk/j0;)Lio/didomi/sdk/h0;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/j0;->d:Lio/didomi/sdk/h0;

    return-object p0
.end method

.method public static final synthetic c(Lio/didomi/sdk/j0;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/j0;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j0;->h:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic d(Lio/didomi/sdk/j0;)I
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/j0;->b()I

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lio/didomi/sdk/j0;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/j0;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic f(Lio/didomi/sdk/j0;)Lio/didomi/sdk/M8;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/j0;->c:Lio/didomi/sdk/M8;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/consent/model/ConsentToken;)V
    .registers 11

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/j0;->b()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p1, "DCS won\'t be saved because the functionality is not enabled."

    invoke-static {p1, v2, v1, v2}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_13
    invoke-direct {p0}, Lio/didomi/sdk/j0;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p1, "DCS won\'t be saved because the feature flag is not enabled."

    invoke-static {p1, v2, v1, v2}, Lio/didomi/sdk/Log;->d$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1f
    iget-object v0, p0, Lio/didomi/sdk/j0;->e:Lkotlinx/coroutines/r;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v3

    new-instance v6, Lio/didomi/sdk/j0$d;

    invoke-direct {v6, p1, p0, v2}, Lio/didomi/sdk/j0$d;-><init>(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/j0;Lkotlin/coroutines/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/j0;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lio/didomi/sdk/j0;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
