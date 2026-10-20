###### Class io.didomi.drawable.ie (io.didomi.sdk.ie)
.class public final synthetic Lio/didomi/sdk/ie;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/h9;

.field public final synthetic b:Lio/didomi/sdk/models/InternalVendor;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ie;->a:Lio/didomi/sdk/h9;

    iput-object p2, p0, Lio/didomi/sdk/ie;->b:Lio/didomi/sdk/models/InternalVendor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ie;->a:Lio/didomi/sdk/h9;

    iget-object v1, p0, Lio/didomi/sdk/ie;->b:Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v0, v1}, Lio/didomi/sdk/h9;->m(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method
