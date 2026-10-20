###### Class io.didomi.drawable.vc (io.didomi.sdk.vc)
.class public final synthetic Lio/didomi/sdk/vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/vc;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/vc;->b:Landroidx/appcompat/widget/AppCompatButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/vc;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/didomi/sdk/vc;->b:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/R8;->l(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V

    return-void
.end method
