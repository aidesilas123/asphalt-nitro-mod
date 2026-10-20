###### Class io.didomi.drawable.ea (io.didomi.sdk.ea)
.class public final synthetic Lio/didomi/sdk/ea;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/D2;

.field public final synthetic b:Lio/didomi/sdk/E6;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/D2;Lio/didomi/sdk/E6;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ea;->a:Lio/didomi/sdk/D2;

    iput-object p2, p0, Lio/didomi/sdk/ea;->b:Lio/didomi/sdk/E6;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ea;->a:Lio/didomi/sdk/D2;

    iget-object v1, p0, Lio/didomi/sdk/ea;->b:Lio/didomi/sdk/E6;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/E6;->l(Lio/didomi/sdk/D2;Lio/didomi/sdk/E6;Landroid/view/View;)V

    return-void
.end method
