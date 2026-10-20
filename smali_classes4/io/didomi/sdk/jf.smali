###### Class io.didomi.drawable.jf (io.didomi.sdk.jf)
.class public final synthetic Lio/didomi/sdk/jf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/q4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/q4;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/jf;->a:Lio/didomi/sdk/q4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/jf;->a:Lio/didomi/sdk/q4;

    invoke-static {v0}, Lio/didomi/sdk/q4;->h(Lio/didomi/sdk/q4;)V

    return-void
.end method
