###### Class io.didomi.drawable.xc (io.didomi.sdk.xc)
.class public final synthetic Lio/didomi/sdk/xc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/R8;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/R8;Landroidx/appcompat/widget/AppCompatButton;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/xc;->a:Lio/didomi/sdk/R8;

    iput-object p2, p0, Lio/didomi/sdk/xc;->b:Landroidx/appcompat/widget/AppCompatButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/xc;->a:Lio/didomi/sdk/R8;

    iget-object v1, p0, Lio/didomi/sdk/xc;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/R8;->n(Lio/didomi/sdk/R8;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V

    return-void
.end method
