###### Class io.didomi.sdk.V8.b (io.didomi.sdk.V8$b)
.class final Lio/didomi/sdk/V8$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/V8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)V
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
        "Lio/didomi/sdk/models/DataCategory;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "Lio/didomi/sdk/models/DataCategory;",
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
.field final synthetic a:Lio/didomi/sdk/V8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/V8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/V8$b;->a:Lio/didomi/sdk/V8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/didomi/sdk/models/DataCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8$b;->a:Lio/didomi/sdk/V8;

    invoke-static {v0}, Lio/didomi/sdk/V8;->a(Lio/didomi/sdk/V8;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->d()Lio/didomi/sdk/d3;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/d3;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/A;

    invoke-static {v2}, Lio/didomi/sdk/B;->a(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/DataCategory;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_35
    invoke-static {v1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V8$b;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
