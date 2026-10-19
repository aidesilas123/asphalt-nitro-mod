###### Class io.didomi.drawable.bc (io.didomi.sdk.bc)
.class public final synthetic Lio/didomi/sdk/bc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/O5;

.field public final synthetic b:Lio/didomi/sdk/a4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/bc;->a:Lio/didomi/sdk/O5;

    iput-object p2, p0, Lio/didomi/sdk/bc;->b:Lio/didomi/sdk/a4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/bc;->a:Lio/didomi/sdk/O5;

    iget-object v1, p0, Lio/didomi/sdk/bc;->b:Lio/didomi/sdk/a4;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/O5;->c(Lio/didomi/sdk/O5;Lio/didomi/sdk/a4;Landroid/view/View;)V

    return-void
.end method
