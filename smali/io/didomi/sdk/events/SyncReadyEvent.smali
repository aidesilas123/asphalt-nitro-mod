###### Class io.didomi.drawable.events.SyncReadyEvent (io.didomi.sdk.events.SyncReadyEvent)
.class public final Lio/didomi/sdk/events/SyncReadyEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/events/Event;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/events/SyncReadyEvent;",
        "Lio/didomi/sdk/events/Event;",
        "statusApplied",
        "",
        "syncAcknowledged",
        "Lkotlin/Function0;",
        "(ZLkotlin/jvm/functions/Function0;)V",
        "getStatusApplied",
        "()Z",
        "getSyncAcknowledged",
        "()Lkotlin/jvm/functions/Function0;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final statusApplied:Z

.field private final syncAcknowledged:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLkotlin/jvm/b/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "syncAcknowledged"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/didomi/sdk/events/SyncReadyEvent;->statusApplied:Z

    iput-object p2, p0, Lio/didomi/sdk/events/SyncReadyEvent;->syncAcknowledged:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final getStatusApplied()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/events/SyncReadyEvent;->statusApplied:Z

    return v0
.end method

.method public final getSyncAcknowledged()Lkotlin/jvm/b/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/events/SyncReadyEvent;->syncAcknowledged:Lkotlin/jvm/b/a;

    return-object v0
.end method
