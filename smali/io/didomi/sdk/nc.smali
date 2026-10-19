###### Class io.didomi.drawable.nc (io.didomi.sdk.nc)
.class public final synthetic Lio/didomi/sdk/nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Q;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/nc;->a:Lio/didomi/sdk/Q;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/nc;->a:Lio/didomi/sdk/Q;

    invoke-static {v0}, Lio/didomi/sdk/Q;->r(Lio/didomi/sdk/Q;)V

    return-void
.end method
