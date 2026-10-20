###### Class io.didomi.drawable.C1712a5.c (io.didomi.sdk.a5$c)
.class final Lio/didomi/sdk/a5$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/a5;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V
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
.field final synthetic a:Lio/didomi/sdk/a5;


# direct methods
.method constructor <init>(Lio/didomi/sdk/a5;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/a5$c;->a:Lio/didomi/sdk/a5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/a5$c;->a:Lio/didomi/sdk/a5;

    invoke-virtual {v0}, Lio/didomi/sdk/a5;->I()Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
