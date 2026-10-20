###### Class io.didomi.drawable.C1733c6.j (io.didomi.sdk.c6$j)
.class final Lio/didomi/sdk/c6$j;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/c6;->b(Lio/didomi/sdk/events/SyncReadyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/c6;

.field final synthetic b:Lio/didomi/sdk/events/SyncReadyEvent;


# direct methods
.method constructor <init>(Lio/didomi/sdk/c6;Lio/didomi/sdk/events/SyncReadyEvent;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/c6$j;->a:Lio/didomi/sdk/c6;

    iput-object p2, p0, Lio/didomi/sdk/c6$j;->b:Lio/didomi/sdk/events/SyncReadyEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-object v0, Lio/didomi/sdk/B8;->a:Lio/didomi/sdk/B8;

    const-string v1, "Syncing done"

    invoke-virtual {v0, v1}, Lio/didomi/sdk/B8;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/c6$j;->a:Lio/didomi/sdk/c6;

    invoke-static {v0}, Lio/didomi/sdk/c6;->d(Lio/didomi/sdk/c6;)V

    iget-object v0, p0, Lio/didomi/sdk/c6$j;->a:Lio/didomi/sdk/c6;

    iget-object v1, p0, Lio/didomi/sdk/c6$j;->b:Lio/didomi/sdk/events/SyncReadyEvent;

    invoke-static {v0, v1}, Lio/didomi/sdk/c6;->a(Lio/didomi/sdk/c6;Lio/didomi/sdk/events/SyncReadyEvent;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/c6$j;->a()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
