###### Class io.didomi.drawable.me (io.didomi.sdk.me)
.class public final synthetic Lio/didomi/sdk/me;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/e1;

.field public final synthetic b:Lio/didomi/sdk/j7;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/me;->a:Lio/didomi/sdk/e1;

    iput-object p2, p0, Lio/didomi/sdk/me;->b:Lio/didomi/sdk/j7;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/me;->a:Lio/didomi/sdk/e1;

    iget-object v1, p0, Lio/didomi/sdk/me;->b:Lio/didomi/sdk/j7;

    invoke-static {v0, v1}, Lio/didomi/sdk/j7;->g(Lio/didomi/sdk/e1;Lio/didomi/sdk/j7;)V

    return-void
.end method
