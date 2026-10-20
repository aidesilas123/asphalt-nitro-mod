###### Class io.didomi.drawable.C1751e4.q (io.didomi.sdk.e4$q)
.class final Lio/didomi/sdk/e4$q;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/e4;-><init>(Lio/didomi/sdk/z8;)V
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
.field final synthetic a:Lio/didomi/sdk/e4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/e4;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/e4$q;->a:Lio/didomi/sdk/e4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/e4$q;->a:Lio/didomi/sdk/e4;

    invoke-static {v0}, Lio/didomi/sdk/e4;->b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->s()Lio/didomi/sdk/k$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i;->g()Lio/didomi/sdk/k$i$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i$c;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/didomi/sdk/e4$q;->a:Lio/didomi/sdk/e4;

    invoke-static {v0}, Lio/didomi/sdk/e4;->b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->s()Lio/didomi/sdk/k$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i;->g()Lio/didomi/sdk/k$i$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i$c;->h()Ljava/lang/String;

    move-result-object v0

    :cond_26
    if-eqz v0, :cond_2f

    sget-object v1, Lio/didomi/sdk/x;->a:Lio/didomi/sdk/x;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/x;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_39

    :cond_2f
    iget-object v0, p0, Lio/didomi/sdk/e4$q;->a:Lio/didomi/sdk/e4;

    invoke-static {v0}, Lio/didomi/sdk/e4;->b(Lio/didomi/sdk/e4;)Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->j()I

    move-result v0

    :goto_39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/e4$q;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
