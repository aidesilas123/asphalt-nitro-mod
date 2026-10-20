###### Class io.didomi.drawable.w9 (io.didomi.sdk.w9)
.class public final synthetic Lio/didomi/sdk/w9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/w9;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/w9;->a:Lio/didomi/sdk/view/ctv/DidomiTVSwitch;

    invoke-static {v0}, Lio/didomi/sdk/D7;->b(Lio/didomi/sdk/view/ctv/DidomiTVSwitch;)V

    return-void
.end method
