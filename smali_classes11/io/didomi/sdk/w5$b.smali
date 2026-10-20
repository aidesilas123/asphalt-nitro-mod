###### Class io.didomi.drawable.C1932w5.b (io.didomi.sdk.w5$b)
.class final Lio/didomi/sdk/w5$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/w5;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/didomi/sdk/u5$a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/u5$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/u5$a;",
        "a",
        "()Lio/didomi/sdk/u5$a;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/w5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/w5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/w5$b;->a:Lio/didomi/sdk/w5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/u5$a;
    .registers 9

    iget-object v0, p0, Lio/didomi/sdk/w5$b;->a:Lio/didomi/sdk/w5;

    invoke-static {v0}, Lio/didomi/sdk/w5;->d(Lio/didomi/sdk/w5;)Lio/didomi/sdk/u5$a;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lio/didomi/sdk/u5$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/u5$a;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILkotlin/jvm/internal/n;)V

    :cond_15
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/w5$b;->a()Lio/didomi/sdk/u5$a;

    move-result-object v0

    return-object v0
.end method
