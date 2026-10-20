###### Class io.didomi.drawable.tf (io.didomi.sdk.tf)
.class public final synthetic Lio/didomi/sdk/tf;
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

    iput-object p1, p0, Lio/didomi/sdk/tf;->a:Lio/didomi/sdk/u4;

    iput-object p2, p0, Lio/didomi/sdk/tf;->b:Lio/didomi/sdk/models/InternalPurpose;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/tf;->a:Lio/didomi/sdk/u4;

    iget-object v1, p0, Lio/didomi/sdk/tf;->b:Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/u4;->h(Lio/didomi/sdk/u4;Lio/didomi/sdk/models/InternalPurpose;Landroid/view/View;)V

    return-void
.end method
