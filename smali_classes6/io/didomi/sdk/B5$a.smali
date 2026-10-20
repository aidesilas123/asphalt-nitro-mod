###### Class io.didomi.sdk.B5.a (io.didomi.sdk.B5$a)
.class final Lio/didomi/sdk/B5$a;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/B5;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)V
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
.field final synthetic a:Lio/didomi/sdk/B5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/B5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/B5$a;->a:Lio/didomi/sdk/B5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/B5$a;->a:Lio/didomi/sdk/B5;

    invoke-static {v0}, Lio/didomi/sdk/B5;->a(Lio/didomi/sdk/B5;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->b()Lio/didomi/sdk/k$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lio/didomi/sdk/B5$a;->a:Lio/didomi/sdk/B5;

    invoke-static {v0}, Lio/didomi/sdk/B5;->a(Lio/didomi/sdk/B5;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->d()Lio/didomi/sdk/k$a$a;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lio/didomi/sdk/k$a$a;->a()I

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-lez v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/B5$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
