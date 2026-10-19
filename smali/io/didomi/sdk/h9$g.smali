###### Class io.didomi.sdk.h9.g (io.didomi.sdk.h9$g)
.class final Lio/didomi/sdk/h9$g;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
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
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/h9;)Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3f

    :cond_18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v1, v2}, Lio/didomi/sdk/h9;->I(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/h9;)Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v3, :cond_3f

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v3, 0x0

    :goto_40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$g;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
