###### Class io.didomi.drawable.C1932w5.a (io.didomi.sdk.w5$a)
.class final Lio/didomi/sdk/w5$a;
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
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "",
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
.field final synthetic a:Lio/didomi/sdk/w5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/w5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/w5$a;->a:Lio/didomi/sdk/w5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/w5$a;->a:Lio/didomi/sdk/w5;

    invoke-static {v0}, Lio/didomi/sdk/w5;->c(Lio/didomi/sdk/w5;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/w5$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
