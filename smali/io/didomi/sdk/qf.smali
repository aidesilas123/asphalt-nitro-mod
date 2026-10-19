###### Class io.didomi.drawable.qf (io.didomi.sdk.qf)
.class public final synthetic Lio/didomi/sdk/qf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/u4;

.field public final synthetic b:Lio/didomi/sdk/models/InternalPurpose;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/u4;Lio/didomi/sdk/models/InternalPurpose;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/qf;->a:Lio/didomi/sdk/u4;

    iput-object p2, p0, Lio/didomi/sdk/qf;->b:Lio/didomi/sdk/models/InternalPurpose;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/qf;->a:Lio/didomi/sdk/u4;

    iget-object v1, p0, Lio/didomi/sdk/qf;->b:Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/u4;->e(Lio/didomi/sdk/u4;Lio/didomi/sdk/models/InternalPurpose;Landroid/view/View;)V

    return-void
.end method
