###### Class io.didomi.drawable.mb (io.didomi.sdk.mb)
.class public final synthetic Lio/didomi/sdk/mb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/L6;

.field public final synthetic b:Lio/didomi/sdk/J6$b;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/L6;Lio/didomi/sdk/J6$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/mb;->a:Lio/didomi/sdk/L6;

    iput-object p2, p0, Lio/didomi/sdk/mb;->b:Lio/didomi/sdk/J6$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/mb;->a:Lio/didomi/sdk/L6;

    iget-object v1, p0, Lio/didomi/sdk/mb;->b:Lio/didomi/sdk/J6$b;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/L6;->l(Lio/didomi/sdk/L6;Lio/didomi/sdk/J6$b;Landroid/view/View;)V

    return-void
.end method
