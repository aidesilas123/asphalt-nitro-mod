###### Class io.didomi.drawable.t9 (io.didomi.sdk.t9)
.class public final synthetic Lio/didomi/sdk/t9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/b1;

.field public final synthetic b:Lio/didomi/sdk/B6;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/b1;Lio/didomi/sdk/B6;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/t9;->a:Lio/didomi/sdk/b1;

    iput-object p2, p0, Lio/didomi/sdk/t9;->b:Lio/didomi/sdk/B6;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/t9;->a:Lio/didomi/sdk/b1;

    iget-object v1, p0, Lio/didomi/sdk/t9;->b:Lio/didomi/sdk/B6;

    invoke-static {v0, v1}, Lio/didomi/sdk/B6;->g(Lio/didomi/sdk/b1;Lio/didomi/sdk/B6;)V

    return-void
.end method
