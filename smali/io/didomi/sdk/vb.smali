###### Class io.didomi.drawable.vb (io.didomi.sdk.vb)
.class public final synthetic Lio/didomi/sdk/vb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/M2;

.field public final synthetic b:Lio/didomi/sdk/events/Event;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/M2;Lio/didomi/sdk/events/Event;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/vb;->a:Lio/didomi/sdk/M2;

    iput-object p2, p0, Lio/didomi/sdk/vb;->b:Lio/didomi/sdk/events/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/vb;->a:Lio/didomi/sdk/M2;

    iget-object v1, p0, Lio/didomi/sdk/vb;->b:Lio/didomi/sdk/events/Event;

    invoke-static {v0, v1}, Lio/didomi/sdk/M2;->d(Lio/didomi/sdk/M2;Lio/didomi/sdk/events/Event;)V

    return-void
.end method
