###### Class io.didomi.drawable.la (io.didomi.sdk.la)
.class public final synthetic Lio/didomi/sdk/la;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/H5;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/H5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/la;->a:Lio/didomi/sdk/H5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/la;->a:Lio/didomi/sdk/H5;

    invoke-static {v0}, Lio/didomi/sdk/H5;->h(Lio/didomi/sdk/H5;)V

    return-void
.end method
