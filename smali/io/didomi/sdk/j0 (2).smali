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

###### Class io.didomi.drawable.C1797j0.a (io.didomi.sdk.j0$a)
.class final Lio/didomi/sdk/j0$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j0;-><init>(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/String;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/j0;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j0;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j0$a;->a:Lio/didomi/sdk/j0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j0$a;->a:Lio/didomi/sdk/j0;

    invoke-static {v0}, Lio/didomi/sdk/j0;->a(Lio/didomi/sdk/j0;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Regulation;->getDcsKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/j0$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.C1797j0.b (io.didomi.sdk.j0$b)
.class final Lio/didomi/sdk/j0$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j0;-><init>(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Integer;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/j0;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j0;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j0$b;->a:Lio/didomi/sdk/j0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j0$b;->a:Lio/didomi/sdk/j0;

    invoke-static {v0}, Lio/didomi/sdk/j0;->a(Lio/didomi/sdk/j0;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->d()Lio/didomi/sdk/k$a$a;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lio/didomi/sdk/k$a$a;->a()I

    move-result v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/j0$b;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.C1797j0.c (io.didomi.sdk.j0$c)
.class final Lio/didomi/sdk/j0$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j0;-><init>(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/j0;


# direct methods
.method constructor <init>(Lio/didomi/sdk/j0;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/j0$c;->a:Lio/didomi/sdk/j0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/j0$c;->a:Lio/didomi/sdk/j0;

    invoke-static {v0}, Lio/didomi/sdk/j0;->a(Lio/didomi/sdk/j0;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->b()Lio/didomi/sdk/k$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$c;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/j0$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.C1797j0.d (io.didomi.sdk.j0$d)
.class final Lio/didomi/sdk/j0$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j0;->a(Lio/didomi/sdk/consent/model/ConsentToken;)V
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
    c = "io.didomi.sdk.consent.DCSRepository$save$1"
    f = "DCSRepository.kt"
    i = {}
    l = {
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/didomi/sdk/consent/model/ConsentToken;

.field final synthetic c:Lio/didomi/sdk/j0;


# direct methods
.method constructor <init>(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/j0;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Lio/didomi/sdk/j0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/j0$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/j0$d;->b:Lio/didomi/sdk/consent/model/ConsentToken;

    iput-object p2, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/j0$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/j0$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/j0$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
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

    new-instance p1, Lio/didomi/sdk/j0$d;

    iget-object v0, p0, Lio/didomi/sdk/j0$d;->b:Lio/didomi/sdk/consent/model/ConsentToken;

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-direct {p1, v0, v1, p2}, Lio/didomi/sdk/j0$d;-><init>(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/j0;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/j0$d;->a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/didomi/sdk/j0$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/j0$d;->b:Lio/didomi/sdk/consent/model/ConsentToken;

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v1}, Lio/didomi/sdk/j0;->f(Lio/didomi/sdk/j0;)Lio/didomi/sdk/M8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/didomi/sdk/X;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/DidomiConsentToken;

    move-result-object p1

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v1}, Lio/didomi/sdk/j0;->b(Lio/didomi/sdk/j0;)Lio/didomi/sdk/h0;

    move-result-object v1

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Gson().toJson(didomiConsentToken)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v3}, Lio/didomi/sdk/j0;->d(Lio/didomi/sdk/j0;)I

    move-result v3

    iput v2, p0, Lio/didomi/sdk/j0$d;->a:I

    invoke-virtual {v1, p1, v3, p0}, Lio/didomi/sdk/h0;->a(Ljava/lang/String;ILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    return-object v0

    :cond_4d
    :goto_4d
    check-cast p1, Lio/didomi/sdk/y;

    invoke-virtual {p1}, Lio/didomi/sdk/y;->c()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lio/didomi/sdk/y;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_61

    const-string v0, "Unknown error from DCS encoder"

    :cond_61
    invoke-virtual {p1}, Lio/didomi/sdk/y;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v0}, Lio/didomi/sdk/j0;->e(Lio/didomi/sdk/j0;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v1}, Lio/didomi/sdk/j0;->c(Lio/didomi/sdk/j0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/didomi/sdk/y;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_88} :catch_89

    goto :goto_95

    :catch_89
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_92

    const-string v0, "Unknown error while saving DCS"

    :cond_92
    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_95
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
