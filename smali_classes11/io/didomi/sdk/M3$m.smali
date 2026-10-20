###### Class io.didomi.sdk.M3.m (io.didomi.sdk.M3$m)
.class final Lio/didomi/sdk/M3$m;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/M3;-><init>(Lio/didomi/sdk/z8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/k$i$c$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/k$i$c$a;",
        "a",
        "()Lio/didomi/sdk/k$i$c$a;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/M3;


# direct methods
.method constructor <init>(Lio/didomi/sdk/M3;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/M3$m;->a:Lio/didomi/sdk/M3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/k$i$c$a;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/M3$m;->a:Lio/didomi/sdk/M3;

    invoke-static {v0}, Lio/didomi/sdk/M3;->b(Lio/didomi/sdk/M3;)Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->s()Lio/didomi/sdk/k$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i;->f()Lio/didomi/sdk/k$i$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/didomi/sdk/M3$m;->a:Lio/didomi/sdk/M3;

    invoke-static {v0}, Lio/didomi/sdk/M3;->b(Lio/didomi/sdk/M3;)Lio/didomi/sdk/z8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/z8;->s()Lio/didomi/sdk/k$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i;->f()Lio/didomi/sdk/k$i$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i$c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_26
    sget-object v1, Lio/didomi/sdk/k$i$c$a;->c:Lio/didomi/sdk/k$i$c$a$a;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/k$i$c$a$a;->a(Ljava/lang/String;)Lio/didomi/sdk/k$i$c$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/M3$m;->a()Lio/didomi/sdk/k$i$c$a;

    move-result-object v0

    return-object v0
.end method
