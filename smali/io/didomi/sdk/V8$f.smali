###### Class io.didomi.sdk.V8.f (io.didomi.sdk.V8$f)
.class final Lio/didomi/sdk/V8$f;
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
        "Ljava/util/List<",
        "+",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "a",
        "()Ljava/util/List;"
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

    iput-object p1, p0, Lio/didomi/sdk/V8$f;->a:Lio/didomi/sdk/V8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/V8$f;->a:Lio/didomi/sdk/V8;

    invoke-static {v0}, Lio/didomi/sdk/V8;->a(Lio/didomi/sdk/V8;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/V8$f;->a:Lio/didomi/sdk/V8;

    invoke-virtual {v1}, Lio/didomi/sdk/V8;->i()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/t4;->a(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/V8$f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
