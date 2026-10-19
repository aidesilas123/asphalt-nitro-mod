###### Class io.didomi.drawable.hd (io.didomi.sdk.hd)
.class public final synthetic Lio/didomi/sdk/hd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/V4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/V4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/hd;->a:Lio/didomi/sdk/V4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/hd;->a:Lio/didomi/sdk/V4;

    invoke-static {v0}, Lio/didomi/sdk/V4;->p(Lio/didomi/sdk/V4;)V

    return-void
.end method
