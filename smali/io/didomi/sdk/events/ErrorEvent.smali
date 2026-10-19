###### Class io.didomi.drawable.events.ErrorEvent (io.didomi.sdk.events.ErrorEvent)
.class public final Lio/didomi/sdk/events/ErrorEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/events/Event;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/didomi/sdk/events/ErrorEvent;",
        "Lio/didomi/sdk/events/Event;",
        "errorMessage",
        "",
        "(Ljava/lang/String;)V",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "setErrorMessage",
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
.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/events/ErrorEvent;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/events/ErrorEvent;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/events/ErrorEvent;->errorMessage:Ljava/lang/String;

    return-void
.end method
