###### Class io.didomi.sdk.Y4.d (io.didomi.sdk.Y4$d)
.class final Lio/didomi/sdk/Y4$d;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Y4;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lio/didomi/sdk/A;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "",
        "Lio/didomi/sdk/A;",
        "a",
        "()Ljava/util/Map;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Y4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Y4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Y4$d;->a:Lio/didomi/sdk/Y4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/A;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Y4$d;->a:Lio/didomi/sdk/Y4;

    invoke-static {v0}, Lio/didomi/sdk/Y4;->d(Lio/didomi/sdk/Y4;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Y4$d;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
