###### Class io.didomi.drawable.df (io.didomi.sdk.df)
.class public final synthetic Lio/didomi/sdk/df;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatButton;

.field public final synthetic b:Lio/didomi/sdk/n4;

.field public final synthetic c:Lio/didomi/sdk/x4$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/df;->a:Landroidx/appcompat/widget/AppCompatButton;

    iput-object p2, p0, Lio/didomi/sdk/df;->b:Lio/didomi/sdk/n4;

    iput-object p3, p0, Lio/didomi/sdk/df;->c:Lio/didomi/sdk/x4$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/df;->a:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lio/didomi/sdk/df;->b:Lio/didomi/sdk/n4;

    iget-object v2, p0, Lio/didomi/sdk/df;->c:Lio/didomi/sdk/x4$a;

    invoke-static {v0, v1, v2, p1}, Lio/didomi/sdk/n4;->c(Landroidx/appcompat/widget/AppCompatButton;Lio/didomi/sdk/n4;Lio/didomi/sdk/x4$a;Landroid/view/View;)V

    return-void
.end method
