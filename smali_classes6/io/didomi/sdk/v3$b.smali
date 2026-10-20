###### Class io.didomi.drawable.C1920v3.b (io.didomi.sdk.v3$b)
.class final Lio/didomi/sdk/v3$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/v3;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;Lio/didomi/sdk/DidomiInitializeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "",
        "a",
        "()Ljava/util/Set;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/v3;


# direct methods
.method constructor <init>(Lio/didomi/sdk/v3;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/v3$b;->a:Lio/didomi/sdk/v3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/v3$b;->a:Lio/didomi/sdk/v3;

    invoke-static {v0}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;)Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->d()Lio/didomi/sdk/k$e;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$e;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/v3;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/v3$b;->a:Lio/didomi/sdk/v3;

    invoke-static {v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;)Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v1

    invoke-interface {v1}, Lio/didomi/sdk/u5;->f()Lio/didomi/sdk/u5$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/u5$a;->a()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lio/didomi/sdk/A3;->a:Lio/didomi/sdk/A3;

    invoke-virtual {v5, v1, v4}, Lio/didomi/sdk/A3;->a(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4a
    invoke-static {v2}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/v3$b;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
