###### Class io.didomi.drawable.tc (io.didomi.sdk.tc)
.class public final synthetic Lio/didomi/sdk/tc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/R8;

.field public final synthetic b:Lio/didomi/sdk/models/InternalVendor;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/R8;Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/tc;->a:Lio/didomi/sdk/R8;

    iput-object p2, p0, Lio/didomi/sdk/tc;->b:Lio/didomi/sdk/models/InternalVendor;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/tc;->a:Lio/didomi/sdk/R8;

    iget-object v1, p0, Lio/didomi/sdk/tc;->b:Lio/didomi/sdk/models/InternalVendor;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/R8;->j(Lio/didomi/sdk/R8;Lio/didomi/sdk/models/InternalVendor;Ljava/lang/Boolean;)V

    return-void
.end method
