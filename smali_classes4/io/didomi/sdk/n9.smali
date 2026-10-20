###### Class io.didomi.drawable.n9 (io.didomi.sdk.n9)
.class public final synthetic Lio/didomi/sdk/n9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/A0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/A0;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/n9;->a:Lio/didomi/sdk/A0;

    iput p2, p0, Lio/didomi/sdk/n9;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/n9;->a:Lio/didomi/sdk/A0;

    iget v1, p0, Lio/didomi/sdk/n9;->b:I

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/A0;->b(Lio/didomi/sdk/A0;ILandroid/view/View;)V

    return-void
.end method
