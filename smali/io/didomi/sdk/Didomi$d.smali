###### Class io.didomi.sdk.Didomi.d (io.didomi.sdk.Didomi$d)
.class public final Lio/didomi/sdk/Didomi$d;
.super Lio/didomi/sdk/events/InitializationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Didomi;->onError(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "io/didomi/sdk/Didomi$d",
        "Lio/didomi/sdk/events/InitializationEventListener;",
        "Lio/didomi/sdk/events/ErrorEvent;",
        "event",
        "",
        "error",
        "(Lio/didomi/sdk/events/ErrorEvent;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# direct methods
.method constructor <init>(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Didomi$d;->a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;

    invoke-direct {p0}, Lio/didomi/sdk/events/InitializationEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lio/didomi/sdk/events/ErrorEvent;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object p1, p0, Lio/didomi/sdk/Didomi$d;->a:Lio/didomi/sdk/functionalinterfaces/DidomiCallable;

    invoke-interface {p1}, Lio/didomi/sdk/functionalinterfaces/DidomiCallable;->call()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method
