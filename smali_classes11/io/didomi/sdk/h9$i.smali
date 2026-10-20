###### Class io.didomi.sdk.h9.i (io.didomi.sdk.h9$i)
.class final Lio/didomi/sdk/h9$i;
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

    iput-object p1, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_3f

    :cond_21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v3}, Lio/didomi/sdk/q3;->g(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v2, v3}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_25

    :cond_3e
    const/4 v1, 0x0

    :cond_3f
    :goto_3f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$i;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
